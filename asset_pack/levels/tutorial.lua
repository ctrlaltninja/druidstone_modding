rounds_left = 7
crystals_destroyed = 0
darkness = false
pressure_plate_activated = false

function on_init_map(map)
	add_reinforcements(map, 6, 3)		-- gelatinus

	-- adjust ticker by difficulty level
	rounds_left = rounds_left - game_state.difficulty

	-- init crystals
	for _,obj in all_map_objs(map) do
		if obj.arch.name == "dark_crystal" then
			obj.hp = 6
			obj.max_hp = obj.hp
			obj.mob_bullet_text = "Each destroyed cyst delays the Cancer by 1 round."
		end
	end

	if get_mission_completed_count(game_state.current_mission) == 0 then
		set_flag(map, M_NO_REEQUIP)
	end
end

function on_battle_intro(map)
	local leonhard = require_hero("hero")
	local aava = require_hero("dryad")
	local oiko = require_hero("mage")
	local mochizuki = find_hero("ninja")

	local function Leonhard(text, anim)
		if anim then cross_fade_anim_and_resume_idle(leonhard, anim, 0.2) end
		say_line(leonhard, text, SAY_LINE_FLIP_Y)
	end

	local function Aava(text, anim)
		if anim then cross_fade_anim_and_resume_idle(aava, anim, 0.2) end
		say_line(aava, text)
	end

	-- we don't know Aava's and Oiko's names yet
	aava.ui_name = "Scout"
	oiko.ui_name = "Red Priest Acolyte"

	-- remove weapons from hand
	for _,h in ipairs(party) do
		hide_weapons(h)
		play_anim(h, "idle", "loop")
	end

	set_camera_target(nil)
	focus_camera(find_named_obj(map, "camera_target_intro"), true)
	fade_async(FADE_IN, 1.5, COLOR_BLACK)

	for _,h in ipairs(party) do
		set_pos(h, h.x - 2, h.y + 2)
		set_facing(h, 4)
	end

	-- heroes enter the scene
	move_to_waypoint_async(leonhard, "leonhard_waypoint_intro", "walk")
	move_to_waypoint_async(aava, "aava_waypoint_intro", "walk")
	move_to_waypoint_async(oiko, "oiko_waypoint_intro", "walk")
	if mochizuki then move_to_waypoint_async(mochizuki, "mochizuki_waypoint_intro", "walk") end
	wait_pending_moves(map)

	delay(500)

	play_gesture(aava, "talk_generic")
	Aava "Bloody roots! Look at the plants!"
	smooth_lerp_camera(get_world_pos(find_named_obj(map, "cyst1")), 23.0, 1.5)
	smooth_lerp_camera(get_world_pos(find_named_obj(map, "cyst2")), 20.0, 2.0)
	delay(1000)
	smooth_lerp_camera(get_world_pos(leonhard), 25.0, 2.0)
	Leonhard "That's... disgusting. Is that the Cancer? Are we too late?"
	Aava "We might still have time to stop it if we don't hesitate!"
	Leonhard "Then let's not hesitate."

	-- pull out weapons
	for _,h in ipairs(party) do
		unscabbard_weapons_async(h)
	end
	delay(1000)

	message_box(
		"Special Rules", "Beware! The area is infested with the Cancer! You have " .. rounds_left .. 
		" rounds to destroy the cysts until the Cancer fully manifests, and completing the mission " ..
		"becomes more difficult. Each destroyed cyst delays the Cancer by 1 round. The mission ends immediately when the last cyst has been destroyed.\n\nMay the forest protect you!",
		nil, "Continue")

	tutorial_saves()

	-- reset play time to zero for speed runner achievement
	battle.start_time = game_state.play_time
end

function on_battle_round(map, round)
	if round == 1 then return end

	if round == 2 then
		local leonhard = require_hero("hero")

		if can_act(leonhard) then
			set_camera_target(leonhard, true)
			set_camera_height(25.0)
			cross_fade_anim(leonhard, "danger_sense", 0.1, "loop")
			say_line(leonhard, "Wait! Do you feel that?\nPrepare yourselves! The enemy's coming!")
			cross_fade_anim(leonhard, "idle", 1.0, "loop")
		end

		smooth_lerp_camera(find_named_obj(map, "spawn_tutorial_camera_target"), nil, 1.0)

		add_reinforcements(map, 3, 6)		-- centipede
		update_reinforcement_markers(map)
		delay(2000)

		set_camera_height(30.0)
		set_camera_target(find_able_hero(), true)
		tutorial_forest_awareness()
	end

	rounds_left = math.max(rounds_left - 1, 0)

	if rounds_left == 1 then
		local aava = require_hero("dryad")
		if can_act(aava) then
			say_line(aava, "We must hurry. The Cancer is almost here!")
		end
	end

	if rounds_left == 0 and not darkness then
		local aava = require_hero("dryad")
		if can_act(aava) then
			say_line(aava, "Oh, bloody roots!\nWe are doomed!")
		end

		smooth_lerp_camera(find_named_obj(map, "darkness_camera"), 25.0, 2.0)
		apply_darkness_to_map(map, true, true)
		activate_spawner_group(map, 4, 100)
		darkness = true

		for _,mob in map_mobs(map) do
			if mob.arch.name == "darkness_orb" then
				mob.abilities = {
					summon = {
						flags = IF_ACTION + IF_CONSUMABLE + IF_OFFENSIVE,
						summoned_mobs = { "skeleton", "skeleton" },
						delay_after_summoning = 1.0,
						on_use_item = use_darkness_orb_summon,
					}
				}
			end
		end

		local knight = find_obj(map, "dark_knight")
		delay(1000)
		say_line(knight, "The Druidstone Shard. One of you has it.\nGive it to me or I'll take it from your corpse.")

		local hero = find_able_hero()
		if hero then
			say_line(hero, "That foe is far too powerful for us! Let's\nconcentrate on destroying the cysts!")
		end

		set_camera_target(get_active_hero())
	end
end

function on_reinforce(map, spawn_group_index)
	if spawn_group_index == 3 then
		-- tweak gelatinus hp
		local mob = activate_spawner_group(map, 3, 500, nil, SPAWNER_FOCUS_CAMERA)[1]
		mob.hp = mob.hp - 2
		mob.max_hp = mob.hp 
		return true
	end
end

function on_draw_objectives(map, ctx)
	local status
	if crystals_destroyed == 3 then status = true end
	ctx.objective("destroy_cysts", "Destroy the cysts (" .. crystals_destroyed .. "/3)", status, "X")
	ctx.bonus_objective_chests("P")
	ctx.bonus_objective_no_knock_outs("G")
end

function on_draw_hazard(map, ctx)
	ctx.background_graphics("cancer_comes")
	ctx.title("The Cancer Comes", 0xff88ffff)

	if rounds_left > 0 and not darkness then
		ctx.text("in " .. rounds_left .. " rounds"	)
	else
		ctx.text("Doomed!")
	end
end

function on_destroy_crystal(obj, map, x, y)
	crystals_destroyed = crystals_destroyed + 1
	rounds_left = rounds_left + 1

	-- capture the amount of destroyed crystals at the time of delaying
	delay_call(function(crystals_destroyed)
		delay(300)
		destroy_warts(map, x, y)

		-- trigger dialogue when the first two crystals are destroyed
		if crystals_destroyed == 2 and not is_room_revealed(map, 2) then
			local hero = find_able_hero(get_active_hero())
			if hero then
				delay(1000)
				local stairs = find_named_obj(map, "stairs")
				turn_mob_towards(hero, stairs.x, stairs.y)
				say_line(hero, "The last cyst must be down in that crypt.")
				smooth_lerp_camera(stairs, nil, 1.5)
				delay(1000)
				set_camera_target(get_active_hero())
			end
		end

		-- trigger animation when last crystal is destroyed
		if crystals_destroyed == 3 then
			-- hide gui
			battle.active = false
			set_flag(map, M_DISABLE_ACTION_PANEL + M_DISABLE_OBJECTIVES)

			fade_music_async(2.0, 0.0)
			smooth_lerp_camera(find_named_obj(map, "darkness_camera"), 30.0, 2.0)
			stop_music()

			fade_music(0.0, 1.0)
			play_music("tutorial_outro", MUSIC_PLAY_ONCE)

			-- trails at monolith

			local monolith = find_named_obj(map, "monolith")

			local trails = {}
			local trail_phase = { 0.0, -1.0, 2.0, 1.0, -1.5, -0.5, 0.5 }
			local trail_duration = 6.0

			local origin = get_world_pos(monolith)

			for i=1,7 do
				local trail_def = {
					light_type = "point",
					light_color = vec(0.25, 0.5, 1.0),
					light_intensity = 15.0,
					light_range = 10.0,
					light_cast_shadow = false,
					light_fade_in = 1.5,
					trail_type = "swipe",
					trail_max_segments = 40,
					trail_offset1 = vec(0.0, 0.0,-0.2),
					trail_offset2 = vec(0.0, 0.0, 0.2),
					trail_texture = load_texture("data/textures/cast_spell_trails.png", "rgba8_srgb"),
					trail_color = 0x3399ffff,
					trail_length = 0.5,
					flags = F_TEMPORARY,
				}

				trail_def.timer = function(obj, t)
					local radius = i * 0.2 + 2.0

					local t2 = (t + (i * 7.0)) * 5.0
					if (i-1) % 2 == 0 then t2 = -t2 end

					local x = origin.x + math.sin(t2) * radius
					local y = origin.y + (math.sin(t2 * 0.345 + 5.224) + 0.5) * 3.0
					local z = origin.z + math.cos(t2) * radius

					shb_node_position(obj.root_node, x, y, z)
					shb_node_rotation(obj.root_node, t2, 0, 0)

					-- animate trail color
					local fade_in = math.clamp((t - 0.2) / 1.1, 0.0, 1.0) 
					local intensity = math.smoothstep(math.sin(t * 4.5 + trail_phase[i]) + 0.5) * fade_in * 4.0
					intensity = intensity * math.smoothstep(t, 0.0, 0.5)
					intensity = intensity * math.smoothstep(t, trail_duration, trail_duration - 0.5)
					set_trail_intensity(obj, intensity)
				end

				trails[i] = spawn_at_obj(trail_def, monolith)
				set_world_pos(trails[i], get_world_pos(monolith))
			end

			delay(2000)

			-- flash ambient
			local ambient = find_obj(map, "forest_ambient")

			local rise_time = 0.3
			local fall_time = 0.8

			local intensities = { 5.0, 10.0, 25.0 }
			for i=1,3 do
				fade_light(ambient, intensities[i], rise_time)
				delay(rise_time * 1000.0)
				fade_light(ambient, 0.5, fall_time)
				delay(fall_time * 1000.0)
			end

			local rise_time = 0.7
			local fall_time = 3.0

			fade_light(ambient, 55.0, rise_time)

			-- kill all enemies
			for _,mob in map_mobs(map) do
				if mob_faction(mob) < 0 then
					mob.mob_xp = 0
					kill_mob(mob, DF_NO_LOOT + DF_NO_DAMAGE_SOUND)
				end
			end

			delay(rise_time * 1000.0)
			fade_light(ambient, 0.0, fall_time)

			for _,obj in ipairs(trails) do
				fade_light(obj, 0.0, fall_time)
			end

			delay(fall_time * 1000.0)

			-- destroy trails
			for _,obj in ipairs(trails) do
				destroy(obj)
			end

			clear_darkness_from_map(map, true)
		end
	end, crystals_destroyed)
end

function on_activate_stair_trigger(mob, trigger)
	if is_hero(mob) then
		fade_room(trigger.map, 2)
		destroy(trigger)
	end
end

function on_activate_pressure_plate(plate)
	local map = plate.map

	toggle_door_async(find_named_obj(map, "portcullis1"))
	toggle_door(find_named_obj(map, "portcullis2"))

	-- open monster closet
	if not pressure_plate_activated then
		local wall = find_named_obj(map, "sliding_wall")
		local wall_pos = get_world_pos(wall)

		set_camera_target(nil)
		focus_camera(wall_pos, false, true)
		delay(500)

		-- hide ceilings
		for x,y in map_cells(map) do
			if get_cell_room(map, x, y) == 3 then
				for _,obj in map_objs_at(map, x, y) do
					if obj.arch.name == "dungeon_ceiling" then
						fade_model_async(obj, 1.0, 1.0, true)
					end
				end
			end
		end

		fade_room(map, 3)

		-- slide wall
		local offset = 0.0
		local offset_target = -4.0

		play_sound("secret_door_open")

		while offset > offset_target do
			offset = math.max(offset - delta_time() * 3.0, offset_target)
			local noise1 = (shb_noise(offset * 8) + shb_noise(offset * 16) * 0.5) * 0.05
			local noise2 = (shb_noise(offset * 8 + 123) + shb_noise(offset * 16 + 456) * 0.5) * 0.05
			set_world_pos3(wall, wall_pos.x + noise1, wall_pos.y + offset, wall_pos.z + noise2)
			coroutine.yield()
		end

		set_edge_blocker(map, wall.x, wall.y, wall.facing, 1, false)
		destroy(wall)
		pressure_plate_activated = true
	end
end

function on_begin_camera_anim(map, mob, ctx)
	-- use the isometric camera when we're near or inside the dungeon
	if get_cell_flag(map, mob.x, mob.y, CF_USER1) or mob.facing == 3 or mob.facing == 6 or mob.facing == 7 then
		ctx.camera_anim = "isometric"
		ctx.fov = 50.0
	end

	ctx.fog_near = 0.0
	ctx.fog_far = 300.0
end

function on_battle_end(map)
	local play_time = game_state.play_time - battle.start_time
	if play_time < 90.0 then
		unlock_achievement("speed_runner")
	end
end

function on_init_outro(map)
	-- disable pressure plate so that it won't deactivate when a hero is teleported from the pressure plate
	local plate = find_obj(map, "dungeon_pressure_plate")
	set_flag(plate, F_DISABLED)

	play_music("forest_ambient")

	for _,h in ipairs(party) do
		hide_weapons(h); play_anim(h, "idle", "loop")
	end

	local aava = require_hero("dryad")
	set_camera_height(20, true)

	if is_light(aava) then hide_light(aava) end
end

function on_battle_outro(map)
	local leonhard = require_hero("hero")
	local aava = require_hero("dryad")
	local oiko = require_hero("mage")

	local function Leonhard(text) say_line(leonhard, text, SAY_LINE_FLIP_X) end
	local function Aava(text) say_line(aava, text) end
	local function Oiko(text) say_line(oiko, text, SAY_LINE_FLIP_Y) end

	play_gesture(leonhard, "talk_generic")
	Leonhard "The forest creatures... they aren't supposed to be so aggressive, are they?"
	Oiko "What, do all the animals usually attack everything\nall the time? Do purple boils just grow everywhere?"
	Oiko "You really are out of it, aren't you, big guy?"
	Aava "Hush. He's still catching up. It's not his fault."
	Oiko "Right, right. He's a cocoon guy."
	Aava "All of this is being caused by the Cancer."
	Aava "My father is worried. He says it isn't natural.\nIt almost feels like a tool for controlling the forest."

	local function aava_touch_pendant()
		play_gesture(aava, "touch_pendant")
		delay(500)
		play_sound("pendant")
		local fx = spawn_at_obj("pendant_flash", aava)
		attach_bone(fx, aava, "spine3")
		delay(700)
		fade_light(fx, 0.0, 0.5, true)
		fade_particles(fx, 0.5)
	end

	if darkness then
		Leonhard "What was it that knight said? They were after something..."
		Aava "I... I think they were after this."
		aava_touch_pendant()
		Leonhard "A pendant?"
		Aava "It was my mother's."
		Leonhard "Oh...\nI'm sorry, is that an explanation?"
		Aava "Maybe. But I should talk to my father about it first."
	else
		Leonhard "Well, I don't know about you, but it just feels wrong."
		Aava "Yes, it does."
		aava_touch_pendant()
		Leonhard "Your pendant... It's very pretty."
		Aava "Thank you. It was my mother's."
		Leonhard "There's something very familiar about it."
		Aava "Really? You know, I think my father would be interested in talking to you."
	end

	local shido = activate_spawner_group(map, 5)[1]
	move_to_waypoint(shido, "shido_waypoint")
	local function Shido(text) say_line(shido, text) end

	turn_mob_relative(oiko, 2)
	delay(300)
	Oiko "Look! A Shido!"
	turn_mob_relative(aava, -3)
	Shido "Kweep! KWEEP!"
	Shido "Incoming message!"

	-- shido's antenna pulsates
	local def = {
		particle_system = "transmission",
		flags = F_TEMPORARY,
	}
	local fx = spawn_at_obj(def, shido)
	attach_bone(fx, shido, "antenna.002")
	shb_node_position(fx.root_node, 0.0, 0.27, 0.0)
	play_sound("shido_transmission")
	delay(3000)

	Shido "Kweep! Express delivery!"
	Oiko "Ooh! A letter!"
	Oiko "I love getting letters! Over here, buddy, I got it."
	Shido "KWEEP! Not so fast.\nRegistered letter. Sign here!"
	Oiko "Oh, come on..."
	Shido "Regulations. Sign here!"

	if get_mission_completed_count(game_state.current_mission) == 1 then
		-- only show the first time
		naming_dialog(oiko)
	end
	
	Shido "Thank you! Excuse me. Big rush. So many deliveries!"
	Shido "Bye! Kweep!"
	move_to_waypoint(shido, "shido_waypoint2")
	fade_light(shido, 0.0, 0.5)
	fade_model(shido, 1.0, 0.5)
	destroy(shido)

	-- oiko examines the letter
	turn_mob_relative(oiko, -2)
	turn_mob_relative(aava, 3)
	Oiko "It's from Vartan! Let me\nsee what was so urgent..."
	Oiko "Oh, you're not going to like this..."
	Aava "What is it?"
	Oiko "The Circle is under attack. The\ndruids are fighting for their lives."
	Aava "Bloody roots! My father... they need our help, right now!"
	
	fade(FADE_OUT, 2.0, COLOR_BLACK, FADE_GUI + FADE_AUDIO)
end

function on_battle_victory(map, ctx)
	ctx.target_hero = "dryad"
	play_custom_victory_anim("hero", "victory")
	play_custom_victory_anim("mage", "victory")
	play_custom_victory_anim("dryad", "victory3")
	play_custom_victory_anim("ninja", "victory")
end
