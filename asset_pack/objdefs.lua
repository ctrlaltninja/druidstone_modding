def_object{
	name = "start_location",
	model = "data/models/start_location.fbx",
}

-------------------------------------------------
-- Whitebox
---------------------------------------------------

def_object{
	name = "whitebox_1x1x1",
	model = "data/models/whitebox_1x1x1.fbx",
	tags = { "whitebox" },
	layer = "whitebox", 
	flags = F_BLOCK_ALL,
}

def_object{
	name = "whitebox_1x1x2",
	model = "data/models/whitebox_1x1x2.fbx",
	tags = { "whitebox" },
}

def_object{
	name = "whitebox_1x1x3",
	model = "data/models/whitebox_1x1x3.fbx",
	tags = { "whitebox" },
}

def_object{
	name = "whitebox_edge_x1",
	model = "data/models/whitebox_edge_x1.fbx",
	tags = { "whitebox" },
	snap_to = "edge",
}

-------------------------------------------------
-- Dungeon
---------------------------------------------------

def_object{
	name = "dungeon_wall",
	model = "data/models/dungeon_wall_01.fbx",
	flags = F_HIDE_CLOSEUP + F_PLACE_EDGE_BLOCKER,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_wall_45",
	model = "data/models/dungeon_wall_45.fbx",
	flags = F_HIDE_CLOSEUP + F_PLACE_EDGE_BLOCKER,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_wall_half_top",
	model = "data/models/dungeon_wall_half_top.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_wall_half_bottom",
	model = "data/models/dungeon_wall_half_bottom.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_wall_lowered",
	model = "data/models/dungeon_wall_lowered_01.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_floor",
	model = "data/models/dungeon_floor_01.fbx",
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_rubble_ground",
	model = "data/models/forest_ground.fbx",
	model_material = "dungeon_rubble_ground",
	model_render_mode = "heightmap",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT + F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_floor_tiled",
	model = "data/models/dungeon_floor_01.fbx",
	model_material = "dungeon_tile_floor",
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_floor_wooden",
	model = "data/models/dungeon_floor_01.fbx",
	model_material = "dungeon_wood_floor_01",
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",		-- this would benefit from a "wood" sound set
	layer = "floor",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_pit",
	model = "data/models/dungeon_pit.fbx",
	flags = F_BLOCK_WALKING + F_SEEN_BY_RAYS,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_pit_bottom",
	model = "data/models/dungeon_floor_01.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_ceiling",
	model = "data/models/dungeon_roof.fbx",
	fog_tile = FOG_WALL,
	flags = F_BLOCK_ALL,
	layer = "ceiling",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_ceiling_simple",
	model = "data/models/dungeon_roof.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_pillar",
	model = "data/models/dungeon_pillar_01.fbx",
	flags = F_IGNORE_HEIGHT + F_PLACE_CORNER_BLOCKER,
	tags = { "dungeon", "arken" },
	snap_to = "vertex",
}

def_object{
	name = "dungeon_pillar_45",
	model = "data/models/dungeon_pillar_45.fbx",
	flags = F_IGNORE_HEIGHT + F_PLACE_CORNER_BLOCKER,
	tags = { "dungeon", "arken" },
	snap_to = "vertex",
}

def_object{
	name = "dungeon_pillar_plants",
	model = "data/models/dungeon_plant_pillar_01.fbx",
	flags = F_IGNORE_HEIGHT,
	tags = { "dungeon" },
	snap_to = "vertex",
}

def_object{
	name = "dungeon_wall_sewer",
	model = "data/models/dungeon_wall_sewer.fbx",
	flags = F_HIDE_CLOSEUP,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_floor_candle",
	model = "data/models/dungeon_floor_candle.fbx",
	particle_system = "candle",
	particle_parent = "null",
	light_type = "point",
	light_parent = "null",
	light_color = vec(1.0, 0.5, 0.25),
	light_intensity = 10.0,
	light_range = 7.0,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.25,
	flags = F_PLACE_CORNER_BLOCKER,
	tags = { "dungeon" },
	snap_to = "vertex",
}

def_object{
	name = "torch_pole",
	model = "data/models/torch_pole.fbx",
	particle_system = "torch_pole",
	particle_position = vec(0.0, 2.0, 0.0),
	light_type = "point",
	light_position = vec(0.0, 2.0, 0.0),
	light_color = vec(1.00, 0.52, 0.04),
	light_intensity = 25.0,
	light_range = 5.0,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.25,
	flags = F_PLACE_CORNER_BLOCKER,
	tags = { "dungeon" },
	snap_to = "vertex",
}

def_object{
	name = "dungeon_pillar_lowered",
	model = "data/models/dungeon_pillar_lowered_01.fbx",
	flags = F_IGNORE_HEIGHT + F_PLACE_CORNER_BLOCKER,
	tags = { "dungeon" },
	snap_to = "vertex",
}

def_object{
	name = "dungeon_arch",
	model = "data/models/dungeon_arch_01.fbx",
	width = 2,
	height = 1,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_arch_boss",
	model = "data/models/dungeon_arch_boss.fbx",
	width = 2,
	height = 1,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_arch_top",
	model = "data/models/dungeon_arch_top.fbx",
	width = 2,
	height = 1,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_door",
	ui_name = "Wooden Door",
	model = "data/models/dungeon_door.fbx",
	width = 2,
	height = 1,
	anims = { open = "data/anims/dungeon_door_open.fbx" },
	on_interact = interact_door,
	on_tooltip = tooltip_door,
	door_type = "generic",
	flags = F_BLOCK_ALL + F_INTERACTIVE + F_INTERACT_ACTION,
	fog_tile = { FOG_DOOR_NS, FOG_DOOR_EW, FOG_DOOR_NS, FOG_DOOR_EW },
	collider_size_x = 1.0,
	collider_size_y = 0.15,
	on_game_loaded = door_game_loaded,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_portcullis",
	model = "data/models/portcullis.fbx",
	anims = {
		open = "data/anims/portcullis_open.fbx",
		close = "data/anims/portcullis_close.fbx",
	},
	door_type = "portcullis",
	door_open_offset = 3.2,
	flags = F_PLACE_EDGE_BLOCKER,
	collider_size_x = 1.0,
	collider_size_y = 0.10,
	on_game_loaded = door_game_loaded,
	tags = { "dungeon" },
	snap_to = "edge",
}

def_object{
	name = "dungeon_portcullis_downwards",
	model = "data/models/portcullis.fbx",
	model_material = "portcullis_noclip",
	anims = {
		open = "data/anims/portcullis_downwards_open.fbx",
		close = "data/anims/portcullis_downwards_close.fbx",
	},
	door_type = "portcullis",
	door_open_offset = -2.8,
	flags = F_PLACE_EDGE_BLOCKER,
	collider_size_x = 1.0,
	collider_size_y = 0.10,
	on_game_loaded = door_game_loaded,
	tags = { "dungeon" },
	snap_to = "edge",
}

def_object{
	name = "dungeon_portcullis_2x1",
	width = 2,
	height = 1,
	model = "data/models/portcullis_2x1.fbx",
	anims = {
		open = "data/anims/portcullis_open.fbx",
		close = "data/anims/portcullis_close.fbx",
	},
	door_type = "portcullis",
	door_open_offset = 3.2,
	flags = F_PLACE_EDGE_BLOCKER,
	collider_size_x = 2.0,
	collider_size_y = 0.10,
	on_game_loaded = door_game_loaded,
	tags = { "dungeon" },
	snap_to = "edge",
}

def_object{
	name = "dungeon_portcullis_2x1_downwards",
	width = 2,
	height = 1,
	model = "data/models/portcullis_2x1.fbx",
	model_material = "portcullis_noclip",
	anims = {
		open = "data/anims/portcullis_downwards_open.fbx",
		close = "data/anims/portcullis_downwards_close.fbx",
	},
	door_type = "portcullis",
	door_open_offset = -2.8,
	flags = F_PLACE_EDGE_BLOCKER,
	collider_size_x = 2.0,
	collider_size_y = 0.10,
	on_game_loaded = door_game_loaded,
	tags = { "dungeon" },
	snap_to = "edge",
}

def_object{
	name = "dungeon_secret_door",
	model = "data/models/dungeon_secret_door.fbx",
	on_interact = interact_door,
	door_type = "secret_door",
	flags = F_BLOCK_ALL + F_SECRET,
	fog_tile = { FOG_SECRET_DOOR_NS, FOG_SECRET_DOOR_EW, FOG_SECRET_DOOR_NS, FOG_SECRET_DOOR_EW },
	on_game_loaded = door_game_loaded,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_stairs_down",
	model = "data/models/dungeon_stairs_down.fbx",
	flags = F_BLOCK_AI + F_BLOCK_SUMMON,
	tags = { "dungeon", "exit" },
}

def_object{
	name = "dungeon_stairs_up",
	model = "data/models/dungeon_stairs_up.fbx",
	flags = F_BLOCK_AI + F_BLOCK_SUMMON,
	tags = { "dungeon", "exit" },
}

def_object{
	name = "dungeon_stairs_up_wide",
	width = 2,
	height = 2,
	model = "data/models/dungeon_stairs_up_wide.fbx",
	platform_model = true,
	footstep_sound = "hard",
	flags = F_BLOCK_AI + F_BLOCK_SUMMON + F_SEEN_BY_RAYS,
	tags = { "dungeon", "exit" },
}

def_object{
	name = "dungeon_stairs_down_wide",
	width = 2,
	height = 2,
	model = "data/models/dungeon_stairs_down_wide.fbx",
	platform_model = true,
	footstep_sound = "hard",
	flags = F_BLOCK_AI + F_BLOCK_SUMMON + F_SEEN_BY_RAYS,
	tags = { "dungeon", "exit" },
}

def_object{
	name = "dungeon_stairs_ramp",
	model = "data/models/dungeon_stairs_ramp.fbx",
	platform_model = true,
	footstep_sound = "hard",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_stairs_ramp_big_narrow",
	model = "data/models/dungeon_stairs_ramp_big_narrow.fbx",
	platform_model = true,
	footstep_sound = "hard",
	flags = F_SEEN_BY_RAYS,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_stairs_ramp_big_wide",
	model = "data/models/dungeon_stairs_ramp_big_wide.fbx",
	width = 2,
	height = 1,
	platform_model = true,
	footstep_sound = "hard",
	flags = F_SEEN_BY_RAYS,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_ambient",
	light_type = "ambient",
	light_color  = shb_color_to_vec(0x80bfffff),
	light_color2 = shb_color_to_vec(0x785555ff),
	light_color3 = shb_color_to_vec(0x785555ff),
	light_intensity = 0.1,
	tags = { "dungeon", "env" },
	flags = F_THUMBNAIL_ALWAYS,
}

def_object{
	name = "dungeon_pentagram",
	model = "data/models/dungeon_floor_01.fbx",
	model_material = "dungeon_pentagram",
	flags = F_SEEN_BY_RAYS,
	-- JS: removed interaction_type here. Causes problems; you can't move to the cell and the object is not interactive anyway. But this is probably a bug and will be checked later.
	--interaction_type = "move_to",
	footstep_sound = "hard",
	layer = "floor",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_pentagram_lit",
	model = "data/models/dungeon_floor_01.fbx",
	model_material = "dungeon_pentagram_lit",
	light_type = "point",
	light_position = vec(0.0, 0.35, 0.0),
	light_color = vec(1.0, 0.0, 0.0),
	light_intensity = 9.0,
	light_range = 8.0,
	light_cast_shadow = false,
	light_blur_shadow = true,
	light_shadow_map_size = 64,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	interaction_type = "move_to",
	footstep_sound = "hard",
	layer = "floor",
	tags = { "dungeon" },
	tooltip_priority = 2,
}

def_object{
	name = "lightning_glyph",
	ui_name = "Glyph of Lightning",
	model = "data/models/lightning_glyph.fbx",
	model_material = "lightning_glyph",
	particle_system = "lightning_glyph",
	model_can_emit_particles = true,
	model_position = vec(0.0, 0.35, 0.0),
	light_type = "point",
	light_position = vec(0.0, 0.4, 0.0),
	light_color = vec(0.05, 0.50, 1.00),
	light_intensity = 20.0,
	light_range = 8.0,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 1.0,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	interaction_type = "move_to",
	tooltip_priority = 2,
}

def_object{
	name = "dungeon_pentagram_particles",
	model = "data/models/dungeon_pentagram_emitter.fbx",
	model_can_emit_particles = true,
	model_render_mode = "hidden",
	particle_system = "sacrificial_flames",
	particle_auto_destroy = true,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "dungeon_wall_cloth_01",
	model = "data/models/dungeon_wall_cloth_01.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_wall_cloth_02",
	model = "data/models/dungeon_wall_cloth_02.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_wall_plants",
	model = "data/models/dungeon_wall_plant_01.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_wall_plants2",
	model = "data/models/dungeon_wall_plant_02.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_wall_plants_luminous",
	model = "data/models/dungeon_wall_luminance_plant.fbx",
	particle_system = "dungeon_wall_plants_luminous",
	light_type = "point",
	light_position = vec(0.0, 2.0, 0.7),
	light_color = vec(0.5, 1.5, 0.5),
	light_intensity = 10.0,
	light_range = 5.0,
	light_flicker_frequency = 1.5,
	light_flicker_amplitude = 0.25,
	tags = { "dungeon" },
}

def_object{	-- special version for druidstone temple
	name = "dungeon_wall_plants_luminous_interactive",
	model = "data/models/dungeon_wall_luminance_plant.fbx",
	model_position = vec(0.0, 0.0, -1.5),
	particle_system = "dungeon_wall_plants_luminous",
	particle_position = vec(0.0, 0.0, -1.5),
	light_type = "point",
	light_position = vec(0.0, 2.0, 0.7-1.5 ),
	light_color = 0x55ffff00,
	light_intensity = 10.0,
	light_range = 5.0,
	light_flicker_frequency = 1.5,
	light_flicker_amplitude = 0.25,
	flags = F_INTERACTIVE + F_SEEN_BY_RAYS + F_NO_REDIRECT + F_HIT_BOUNDING_BOX,
	tags = { "dungeon" },
	snap_to = "edge",
}

def_object{
	name = "dungeon_floor_plants",
	model = "data/models/dungeon_floor_plant_01.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_altar",
	model = "data/models/dungeon_altar.fbx",
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_altar_2x1",
	width = 2,
	height = 1,
	model = "data/models/dungeon_altar.fbx",
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT,
	tags = { "dungeon" },
}

def_object{
	name = "dining_table_2x1",
	model = "data/models/dining_table_2x1.fbx",
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS + F_HARD_BLOCKER,
	width = 2,
	height = 1,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_pressure_plate",	
	ui_name = "Pressure Plate",
	model = "data/models/dungeon_pressure_plate.fbx",
	anims = {
		up = "data/anims/dungeon_pressure_plate_up.fbx",
		down = "data/anims/dungeon_pressure_plate_down.fbx",
	},
	trigger_flags = TRIGGER_WALKING,
	on_pre_activate = pre_activate_pressure_plate,
	on_pre_deactivate = pre_deactivate_pressure_plate,
	footstep_sound = "hard",
	layer = "floor",
	flags = F_INTERACTIVE + F_SEEN_BY_RAYS,
	interaction_type = "move_to",
	tooltip = "Activates when a non-flying mob steps on it.",
	on_game_loaded = function(obj)
		if get_flag(obj, F_ACTIVATED) then sample_anim(obj, "down", 100.0) end
	end,
	tags = { "dungeon", "trigger" },
} 

def_object{
	name = "pressure_plate_generic",	
	ui_name = "Pressure Plate",
	model = "data/models/pressure_plate_generic.fbx",
	anims = {
		up = "data/anims/dungeon_pressure_plate_up.fbx",
		down = "data/anims/dungeon_pressure_plate_down.fbx",
	},
	trigger_flags = TRIGGER_WALKING,
	on_pre_activate = pre_activate_pressure_plate,
	on_pre_deactivate = pre_deactivate_pressure_plate,
	footstep_sound = "hard",
	layer = "floor",
	flags = F_INTERACTIVE + F_SEEN_BY_RAYS,
	interaction_type = "move_to",
	tooltip = "Activates when a non-flying mob steps on it.",
	on_game_loaded = function(obj)
		if get_flag(obj, F_ACTIVATED) then sample_anim(obj, "down", 100.0) end
	end,
	tags = { "dungeon", "trigger" },
} 

def_object{
	name = "dungeon_portal",
	model = "data/models/dungeon_portal.fbx",
	particle_system = "dungeon_portal",
	particle_rotation = vec(-math.pi/2.0, 0.0, 0.0),
	light_type = "spot",
	light_position = vec(0.0, 1.3, 0.5),
	light_rotation = vec(0.0, math.pi, 0.0),
	light_color = vec(0.0, 0.5, 1.0),
	light_intensity = 50.0,
	light_range = 15.0,
	light_spot_angle = 120.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 256,
	interaction_type = "move_to",
	flags = F_BLOCK_AI + F_BLOCK_SUMMON + F_SEEN_BY_RAYS + F_INTERACTIVE,
	tags = { "dungeon", "exit" },
}

def_object{
	name = "water_tile",
	ui_name = "Water",
	model = "data/models/water_tile.fbx",
	model_render_mode = "water",
	flags = F_IGNORE_HEIGHT,
	interaction_type = "move_to",
	interaction_draw_outline = false,
	interaction_tick_color = 0x0088ffff,
	layer = "liquid",
	on_init = function(obj)
		if get_cell_flag(obj.map, obj.x, obj.y, CF_WATER) then
			set_flag(obj, F_INTERACTIVE)
		end
	end,
}

def_object{
	name = "cave_entrance",
	model = "data/models/cave_entrance.fbx",
	light_type = "point",
	light_position = vec(0.0, 5.1, -3.2),
	light_color = vec(1.0, 0.65, 0.5),
	light_intensity = 15,
	light_range = 7,
	flags = F_BLOCK_AI + F_BLOCK_SUMMON,
	tags = { "exit" },
}

def_object{
	name = "ground_cracks",
	model = "data/models/zero_seed_cracks.fbx",
	model_material = "ground_cracks",
	flags = F_IGNORE_HEIGHT,
	model_cast_shadow = false,
	tags = { "dungeon", "cave" },
}

def_object{
	name = "door_entrance",
	model = "data/models/dungeon_wall_cell.fbx",
	--flags = F_BLOCK_AI + F_BLOCK_SUMMON + F_SEEN_BY_RAYS + F_INTERACTIVE,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_wall_cell",
	model = "data/models/dungeon_wall_cell.fbx",
	model_position = vec(0.0, 0.0, -1.5),
	tags = { "dungeon" },
	snap_to = "edge",
}

def_object{
	name = "dungeon_wall_cell_door_opening",
	ui_name = "Grate Door",
	model = "data/models/dungeon_wall_cell_door_opening.fbx",
	-- HACK this fixes a bug in deathtrap_dungeon where interaction ticks show up in a wrong cell.
	model_rotation = vec(0.0, math.pi, 0.0),
	anims = { open = "data/anims/dungeon_wall_cell_door_opening.fbx" },
	flags = F_HIDE_CLOSEUP + F_PLACE_EDGE_BLOCKER + F_INTERACTIVE + F_INTERACT_ACTION + F_SEEN_BY_RAYS + F_NO_REDIRECT,
	door_type = "generic",
	door_open_sound = "door_open_prison",
	tags = { "dungeon" },
	snap_to = "edge",
}
	
def_object{
	name = "dungeon_pit_built",
	model = "data/models/dungeon_pit_built.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_pit_organic",	
	model = "data/models/dungeon_pit_organic.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_bridge_built_middle",
	model = "data/models/dungeon_bridge_built_middle.fbx",
	width = 2,
	height = 1,
	platform_model = true,
	footstep_sound = "hard",
	flags = F_SEEN_BY_RAYS,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_bridge_built_end",
	model = "data/models/dungeon_bridge_built_end.fbx",
	width = 2,
	height = 1,
	platform_model = true,
	footstep_sound = "hard",
	flags = F_SEEN_BY_RAYS,
	tags = { "dungeon" },
}

def_object{
	name = "oghmu_statue",
	width = 2,
	height = 2,
	model = "data/models/oghmu_statue.fbx",
	particle_system = "oghmu_statue",
	light_type = "point",
	light_position = vec(0.0, -0.8, 2.7),
	light_color = vec(1.0, 0.5, 0.25),
	light_intensity = 45.0,
	light_range = 8.0,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.2,
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	tags = { "dungeon" },
}

def_object{
	name = "oghmu_statue2",
	width = 2,
	height = 2,
	model = "data/models/oghmu_statue2.fbx",
	flags = F_BLOCK_ALL,
	tags = { "dungeon" },
}

def_object{
	name = "oghmu_statue2_lava",
	width = 2,
	height = 2,
	model = "data/models/oghmu_statue2_lava.fbx",
	particle_system = "oghmu_statue",
	light_type = "point",
	light_position = vec(0.0, -0.8, 2.7),
	light_color = vec(1.0, 0.5, 0.25),
	light_intensity = 45.0,
	light_range = 8.0,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.2,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_plant_bowl",
	model = "data/models/plant_bowl.fbx",
	particle_system = "plant_bowl",
	light_type = "point",
	light_position = vec(0.0, 3.0, 0),
	light_color = vec(0.5, 1.5, 0.5),
	light_intensity = 12.0,
	light_range = 9.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	light_flicker_frequency = 1.5,
	light_flicker_amplitude = 0.25,
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "light" },
}

def_object{
	name = "dungeon_overgrown_fog",
	particle_system = "dungeon_overgrown_fog",
	particle_warm_up = 2.0,
	particle_follow_camera = true,
	tags = { "dungeon", "swamp", "env" },
}

def_object{
	name = "dungeon_daylight_spot",
	light_type = "spot",
	light_rotation = vec(math.pi * 0.5, 0.0, 0.0),
	light_color = vec(0.6, 0.9, 1.0),
	light_intensity = 50.0,
	light_range = 25.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	tags = { "light" },
}

def_object{
	name = "dungeon_daylight_rays",
	particle_system = "dungeon_daylight_rays",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_water_drips",
	particle_system = "dungeon_water_drips",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_point_light",
	light_type = "point",
	light_color = vec(1.0, 0.5, 0.25),
	light_intensity = 7.0,
	light_range = 20.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	tags = { "light" },
}

def_object{
	name = "dungeon_rubble_01",
	model = "data/models/dungeon_rubble_01.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_rubble_02",
	model = "data/models/dungeon_rubble_02.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_rubble_03",
	model = "data/models/dungeon_rubble_03.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_ladders",
	model = "data/models/dungeon_ladders.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_floor_grate",
	model = "data/models/dungeon_floor_grate.fbx",
	platform_model = "data/models/dungeon_floor_01.fbx",
	footstep_sound = "hard",					-- this would benefit from a "metal" sound set
	layer = "floor",
	flags = F_SEEN_BY_RAYS,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_foundry_lava_pipe_flow",
	model = "data/models/dungeon_foundry_lava_pipe_flow.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_foundry_lava_flow_down",
	particle_system = "lava_flow_down",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_foundry_vertical_chain",
	model = "data/models/dungeon_foundry_vertical_chain.fbx",
	anims = { idle = "data/anims/dungeon_foundry_vertical_chain.fbx" },
	anim_random_start_time = true,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_foundry_gear",
	model = "data/models/dungeon_foundry_gear.fbx",
	width = 1,
	height = 2,
	anims = { idle = "data/anims/dungeon_foundry_gear.fbx" },
	anim_random_start_time = true,
	flags = F_BLOCK_ALL + F_SEEN_BY_RAYS + F_HIDE_CLOSEUP,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_fire_light",
	light_type = "point",
	light_color = vec(1.0, 0.45, 0.0),
	light_intensity = 10.0,
	light_range = 10.0,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.25,
	tags = { "dungeon", "light" },
}

def_object{
	name = "dungeon_prison_wall",
	model = "data/models/dungeon_prison_wall.fbx",
	flags = F_PLACE_EDGE_BLOCKER,
	snap_to = "edge",
	tags = { "dungeon" },
	collider_size_y = 0.1,
}

def_object{
	name = "dungeon_wall_top_stones",
	model = "data/models/dungeon_wall_top_stones.fbx",
	snap_to = "edge",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_door_prison",
	ui_name = "Grate Door",
	model = "data/models/dungeon_door_prison.fbx",
	width = 2,
	height = 1,
	anims = {
		open = "data/anims/dungeon_door_open.fbx",
		close = "data/anims/dungeon_door_close.fbx",
	},
	on_interact = interact_door,
	on_tooltip = tooltip_door,
	door_type = "generic",
	door_open_sound = "door_open_prison",
	flags = F_BLOCK_ALL + F_INTERACTIVE,
	fog_tile = { FOG_DOOR_NS, FOG_DOOR_EW, FOG_DOOR_NS, FOG_DOOR_EW },
	collider_size_x = 1.0,
	collider_size_y = 0.15,
	capsule_height = 1.5,	-- for positioning 'locked' damage text
	capsule_radius = 0.0,
	on_game_loaded = door_game_loaded,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_door_prison_edge",
	model = "data/models/dungeon_door_prison.fbx",
	width = 2,
	height = 1,
	anims = {
		close = "data/anims/dungeon_door_close.fbx",
		open = "data/anims/dungeon_door_open.fbx",
	},
	on_interact = interact_door,
	on_tooltip = tooltip_door,
	door_type = "generic",
	door_open_sound = "door_open_prison",
	flags = F_PLACE_EDGE_BLOCKER,
	fog_tile = { FOG_DOOR_NS, FOG_DOOR_EW, FOG_DOOR_NS, FOG_DOOR_EW },
	collider_size_x = 1.0,
	collider_size_y = 0.15,
	on_game_loaded = door_game_loaded,
	snap_to = "edge",
	tags = { "dungeon" },
}

def_object{
	name = "padlock",
	model = "data/models/padlock.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "padlock_2x1",
	ui_name = "Padlock",
	width = 2,
	height = 1,
	model = "data/models/padlock.fbx",
	model_position = vec(0.0, 0.0, -0.1),
	mob_hp = 1,			-- mob so that the lock can be targeted with spells
	mob_armor = 0,
	mob_thing = true,
	mob_xp = 0,
	mob_death_effect = "none",
	projectile_trajectory_target_exact = true,		-- make the trajectory hit the padlock exactly
	mob_flags = MF_HIDE_HP + MF_IMMOVABLE,
	flags = F_BLOCK_ALL + F_INTERACTIVE,
	tags = { "dungeon" },
	draw_spells = { "protect" },
}

def_object{
	name = "dungeon_prison_bench",
	model = "data/models/dungeon_prison_bench.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_prison_arch_chain",
	model = "data/models/dungeon_prison_arch_chain.fbx",
	width = 2,
	height = 1,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_prison_cylinder_cage",
	model = "data/models/dungeon_prison_cylinder_cage.fbx",
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS + F_HIDE_CLOSEUP,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_prison_cylinder_cage_hanging",
	model = "data/models/dungeon_prison_cylinder_cage_hanging.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_prison_cylinder_cage_w_skeleton",
	model = "data/models/dungeon_prison_cylinder_cage_w_skeleton.fbx",
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS + F_HIDE_CLOSEUP,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_prison_stocks_w_skeleton",
	model = "data/models/dungeon_prison_stocks_w_skeleton.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_prison_stocks",
	model = "data/models/dungeon_prison_stocks.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_wall_arch",
	model = "data/models/dungeon_wall_arch.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_bookshelf",
	ui_name = "Bookshelf",
	model = "data/models/dungeon_bookshelf.fbx",
	snap_to = "edge",
	tags = { "dungeon" },
}

def_object{
	name = "catacomb_floor",
	model = "data/models/dungeon_floor_01.fbx",
	model_material = "catacomb_floor",
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "soft",
	layer = "floor",
	tags = { "dungeon" },
}

def_object{
	name = "catacomb_blue_point",
	light_type = "point",
	light_position = vec(0.0, 0.0, 0.0),
	light_color = vec(0.1, 0.3, 0.5),
	light_intensity = 30.0,
	light_range = 13.0,
	tags = { "light" },
}

def_object{
	name = "dungeon_floor_seam",
	model = "data/models/dungeon_floor_seam.fbx",
	snap_to = "edge",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_wall_alcove_empty",
	model = "data/models/dungeon_wall_alcove_empty.fbx",
	flags = F_HIDE_CLOSEUP,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_wall_alcove_skeleton",
	model = "data/models/dungeon_wall_alcove_skeleton.fbx",
	flags = F_HIDE_CLOSEUP,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_rail",
	model = "data/models/dungeon_rail.fbx",
	snap_to = "edge",
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_rail_stairs",
	model = "data/models/dungeon_rail_stairs.fbx",
	snap_to = "edge",
	tags = { "dungeon" },
}

-------------------------------------------------
-- Castle
---------------------------------------------------

def_object{
	name = "castle_wall",
	model = "data/models/castle_wall_01.fbx",
	flags = F_HIDE_CLOSEUP + F_PLACE_EDGE_BLOCKER,
	tags = { "castle" },
}

def_object{
	name = "castle_wall_upper",
	model = "data/models/castle_wall_upper.fbx",
	flags = F_HIDE_CLOSEUP,
	tags = { "castle" },
}

def_object{
	name = "castle_ceiling",
	model = "data/models/castle_ceiling.fbx",
	fog_tile = FOG_WALL,
	flags = F_BLOCK_ALL,
	layer = "ceiling",
	tags = { "castle" },
}

def_object{
	name = "castle_pillar",
	model = "data/models/castle_pillar.fbx",
	flags = F_IGNORE_HEIGHT + F_PLACE_CORNER_BLOCKER,
	tags = { "castle" },
	snap_to = "vertex",
}

def_object{
	name = "castle_pillar_upper",
	model = "data/models/castle_pillar_upper.fbx",
	flags = F_IGNORE_HEIGHT + F_PLACE_CORNER_BLOCKER,
	tags = { "castle" },
	snap_to = "vertex",
}

def_object{
	name = "castle_pillar_upper_2nd",
	model = "data/models/castle_pillar_upper_2nd.fbx",
	flags = F_IGNORE_HEIGHT + F_PLACE_CORNER_BLOCKER,
	tags = { "castle" },
	snap_to = "vertex",
}

def_object{
	name = "castle_floor",
	model = "data/models/dungeon_floor_01.fbx",
	model_material = "castle_floor",
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "castle" },
}

def_object{
	name = "castle_marble_floor",
	model = "data/models/dungeon_floor_01.fbx",
	model_material = "castle_marble_floor",
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "castle" },
}

def_object{
	name = "castle_divider",
	model = "data/models/castle_divider.fbx",
	tags = { "castle" },
	snap_to = "edge",
}

def_object{
	name = "castle_wall_arch",
	model = "data/models/castle_wall_arch.fbx",
	tags = { "castle" },
}

def_object{
	name = "castle_pillar_candle",
	model = "data/models/castle_pillar_candle.fbx",
	particle_system = "candle",
	particle_parent = "null",
	light_type = "point",
	light_position = vec(0.0, 2.29, 0.7),
	light_color = vec(1.0, 0.5, 0.25),
	light_intensity = 10.0,
	light_range = 4.0,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.25,
	flags = F_PLACE_CORNER_BLOCKER,
	tags = { "castle" },
	snap_to = "vertex",
}

def_object{
	name = "castle_arch",
	model = "data/models/castle_arch.fbx",
	width = 2,
	height = 1,
	tags = { "castle" },
}

def_object{
	name = "castle_round_stairs",
	model = "data/models/castle_round_stairs.fbx",
	width = 2,
	height = 2,
	tags = { "castle" },
}

def_object{
	name = "castle_door",
	ui_name = "Iron Door",
	model = "data/models/castle_door.fbx",
	width = 2,
	height = 1,
	anims = {
		close = "data/anims/dungeon_door_close.fbx",
		open = "data/anims/dungeon_door_open.fbx",
	},
	on_interact = interact_door,
	on_tooltip = tooltip_door,
	door_type = "generic",
	door_open_sound = "door_open_metal",
	flags = F_BLOCK_ALL + F_INTERACTIVE + F_INTERACT_ACTION,
	fog_tile = { FOG_DOOR_NS, FOG_DOOR_EW, FOG_DOOR_NS, FOG_DOOR_EW },
	collider_size_x = 1.0,
	collider_size_y = 0.15,
	on_game_loaded = door_game_loaded,
	tags = { "castle" },
}

-- fake edge door for final room in escape2
def_object{
	name = "castle_door_edge",
	ui_name = "Iron Door",
	model = "data/models/castle_door.fbx",
	snap_to = "edge",
	width = 2,
	height = 1,
	anims = { open = "data/anims/dungeon_door_open.fbx" },
	on_interact = interact_door,
	on_tooltip = tooltip_door,
	door_type = "generic",
	door_open_sound = "door_open_metal",
	flags = F_INTERACTIVE + F_INTERACT_ACTION,
	collider_size_x = 1.0,
	collider_size_y = 0.15,
	on_game_loaded = door_game_loaded,
	tags = { "castle" },
}

def_object{
	name = "castle_wall_cloth_long",
	model = "data/models/castle_wall_cloth_long.fbx",
	tags = { "castle" },
}

def_object{
	name = "castle_door_filler",
	model = "data/models/castle_door_filler.fbx",
	width = 2,
	height = 1,
	tags = { "castle" },
}

-------------------------------------------------
-- Epilogue
---------------------------------------------------

def_object{
	name = "cabin",
	model = "data/models/cabin.fbx",
	width = 4,
	height = 3,
}

def_object{
	name = "cabin_smoke",	
	particle_system = "cabin_smoke",
}

def_object{
	name = "wheat",
	model = "data/models/grass_lods.fbx",
	model_lod_distances = { 0.0, 28.0, 40 },
	model_scale = vec(1.0, 3.0, 1.0),
	model_cast_shadow = false,
	model_render_mode = "heightmap",
	model_material = "forest_grass_yellow",
	flags = F_IGNORE_HEIGHT,
	layer = "grass",
	tags = { "forest", "plant" },
}

def_object{
	name = "dryad_child",
	model = "data/models/dryad_child.fbx",
	anims = {
		idle_alone = "data/anims/dryad_child_idle_alone.fbx",
		idle = "data/anims/dryad_child_idle.fbx",
		startle = "data/anims/dryad_child_startle.fbx",
		look_down = "data/anims/dryad_child_look_down.fbx",
		idle_to_crouch = "data/anims/dryad_child_idle_to_crouch.fbx",
		crouch_idle = "data/anims/dryad_child_crouch_idle.fbx",
		crouch_to_idle = "data/anims/dryad_child_crouch_to_idle.fbx",
		laugh = "data/anims/dryad_child_laugh.fbx",
		chase = "data/anims/dryad_child_chase.fbx",
	 },
	flags = 0,
}

def_object{
	name = "leonhard_child",
	model = "data/models/leonhard_child.fbx",
	anims = {
		run_fall = "data/anims/leonhard_child_run_fall.fbx",
		fall_idle = "data/anims/leonhard_child_fall_idle.fbx",
		stand_up = "data/anims/leonhard_child_stand_up.fbx",
		idle = "data/anims/leonhard_child_idle.fbx",
		talk = "data/anims/leonhard_child_talk.fbx",
		chase = "data/anims/leonhard_child_chase.fbx",
	},
	flags = 0,
}

def_object{
	name = "sorceress_pendant",
	model = "data/models/sorceress_pendant.fbx",
	anims = {
		idle = "data/anims/sorceress_pendant_idle.fbx",
		epilogue = "data/anims/sorceress_pendant_epilogue.fbx",
	},
}

def_object{
	name = "epilogue_sorceress_smoke",	
	particle_system = "epilogue_sorceress_smoke",
}

def_object{
	name = "pendant",
	model = "data/models/pendant.fbx",
}

---------------------------------------------------
-- Crypt
---------------------------------------------------

def_object{
	name = "crypt_arch",
	model = "data/models/crypt_arch.fbx",
	width = 2,
	height = 1,
	tags = { "dungeon" },
}

def_object{
	name = "crypt_wall",
	model = "data/models/crypt_wall.fbx",
	flags = F_HIDE_CLOSEUP,
	tags = { "dungeon" },
}

def_object{
	name = "crypt_wall_alcove_empty",
	model = "data/models/crypt_wall_alcove_empty.fbx",
	flags = F_HIDE_CLOSEUP,
	tags = { "dungeon" },
}

def_object{
	name = "crypt_wall_arch",
	model = "data/models/crypt_wall_arch.fbx",
	tags = { "dungeon" },
}

def_object{
	name = "crypt_wall_alcove_skeleton",
	model = "data/models/crypt_wall_alcove_skeleton.fbx",
	flags = F_HIDE_CLOSEUP,
	tags = { "dungeon" },
}

def_object{
	name = "crypt_door",
	ui_name = "Iron Door",
	model = "data/models/crypt_door.fbx",
	width = 2,
	height = 1,
	anims = { open = "data/anims/dungeon_door_open.fbx" },
	on_interact = interact_door,
	on_tooltip = tooltip_door,
	door_type = "generic",
	door_open_sound = "door_open_metal",
	flags = F_BLOCK_ALL + F_INTERACTIVE + F_INTERACT_ACTION,
	fog_tile = { FOG_DOOR_NS, FOG_DOOR_EW, FOG_DOOR_NS, FOG_DOOR_EW },
	collider_size_x = 1.0,
	collider_size_y = 0.15,
	on_game_loaded = door_game_loaded,
	tags = { "dungeon" },
}

def_object{
	name = "crypt_door_special",
	model = "data/models/crypt_door_special.fbx",
	width = 2,
	height = 1,
	anims = { open = "data/anims/dungeon_door_open.fbx" },
	on_interact = interact_door,
	on_tooltip = tooltip_door,
	door_type = "generic",
	door_open_sound = "door_open_metal",
	flags = F_BLOCK_ALL + F_INTERACTIVE + F_INTERACT_ACTION,
	fog_tile = { FOG_DOOR_NS, FOG_DOOR_EW, FOG_DOOR_NS, FOG_DOOR_EW },
	collider_size_x = 1.0,
	collider_size_y = 0.15,
	on_game_loaded = door_game_loaded,
	tags = { "dungeon" },
}
---------------------------------------------------
-- General decorations
---------------------------------------------------

def_object{
	name = "lava",
	model = "data/models/lava.fbx",
	particle_system = "lava",
	particle_warm_up = 2.0,
	light_type = "point",
	light_position = vec(0.0, 1.5, 0.0),
	light_color = vec(1.0, 0.5, 0.05),
	light_intensity = 15,
	light_range = 7,
	light_flicker_frequency = 1,
	light_flicker_amplitude = 0.5,
	--flags = F_BLOCK_WALKING + F_SEEN_BY_RAYS,
}

def_object{
	name = "lava_simple",
	model = "data/models/lava.fbx",
}

def_object{
	name = "lava_big_pool_effect",
	particle_system = "lava_big_pool",
}

def_object{
	name = "lava_small_pool_effect",
	particle_system = "lava_small_pool",
}
	
def_object{
	name = "red_priest_carpet",
	model = "data/models/red_priest_carpet.fbx",
}

def_object{
	name = "blue_mist",
	particle_system = "blue_mist",
}

def_object{
	name = "water_puddle_01",
	model = "data/models/water_puddle_01.fbx",
}

def_object{
	name = "ground_dirt_paper_leaves_01",
	model = "data/models/ground_dirt_paper_leaves_01.fbx",
	layer = "dungeon_clutter",
}

def_object{
	name = "ground_dirt_paper_leaves_02",
	model = "data/models/ground_dirt_paper_leaves_02.fbx",
	layer = "dungeon_clutter",
}

def_object{
	name = "ground_dirt_ash_piles",
	model = "data/models/ground_dirt_ash_piles.fbx",
	layer = "dungeon_clutter",
}

def_object{
	name = "ground_dirt_wood_pile_01",
	model = "data/models/ground_dirt_wood_pile_01.fbx",
	layer = "dungeon_clutter",
}

def_object{
	name = "ground_dirt_wood_pile_02",
	model = "data/models/ground_dirt_wood_pile_02.fbx",
	layer = "dungeon_clutter",
}

def_object{
	name = "ground_dirt_wood_pile_03",
	model = "data/models/ground_dirt_wood_pile_03.fbx",
	layer = "dungeon_clutter",
}

def_object{
	name = "bridge_wood_planks_2x1",
	model = "data/models/bridge_wood_planks_2x1.fbx",
	model_position = vec(-1.5, 0.0, 0.0),
	platform_model = true,
	footstep_sound = "hard",			-- this would benefit from a "wood" sound set
	width = 2,
	height = 1,
	flags = F_SEEN_BY_RAYS,
}

def_object{
	name = "metal_bridge",
	model = "data/models/metal_bridge.fbx",
	--model_position = vec(-1.5, 0.0, 0.0),
	platform_model = true,
	footstep_sound = "hard",
	flags = F_SEEN_BY_RAYS + F_HIT_BOUNDING_BOX,
}

def_object{
	name = "prison_cube_01",
	model = "data/models/prison_cube_01.fbx",
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT + F_HIDE_CLOSEUP + F_HARD_BLOCKER,
	tags = { "dungeon" },
}

def_object{
	name = "prison_cube_big",
	model = "data/models/prison_cube.fbx",
	width = 2,
	height = 2,
	tags = { "mansion" },
}

def_object{
	name = "spider_web_01",
	model = "data/models/spider_web_01.fbx",
	flags = F_HIDE_CLOSEUP,
}

def_object{
	name = "spider_web_02",
	model = "data/models/spider_web_02.fbx",
	flags = F_HIDE_CLOSEUP,
}

def_object{
	name = "spider_web_03",
	model = "data/models/spider_web_03.fbx",
	flags = F_HIDE_CLOSEUP,
}

def_object{
	name = "bloodstain_footprints",
	model = "data/models/magic_circle.fbx",
	model_material = "bloodstain_footprints",
}

def_object{
	name = "blood_splatter1",
	model = "data/models/magic_circle.fbx",
	model_material = "blood_splatter1",
}

def_object{
	name = "blood_scripture",
	model = "data/models/magic_circle.fbx",
	model_material = "blood_scripture",
}

def_object{
	name = "mahogany_table",
	model = "data/models/mahogany_table.fbx",
	width = 2,
	height = 1,
	flags = F_BLOCK_ALL + F_HARD_BLOCKER,
}

def_object{
	name = "abacus",
	model = "data/models/abacus.fbx",
}

def_object{
	name = "chair",
	model = "data/models/chair.fbx",
}

---------------------------------------------------
-- Forest
---------------------------------------------------

def_object{
	name = "forest_ambient",
	light_type = "ambient",
	light_color  = shb_color_to_vec(0x80bfffff),
	light_color2 = shb_color_to_vec(0x3e697bff),
	light_color3 = shb_color_to_vec(0x0a2f17ff),
	light_intensity = 0.5,
	tags = { "forest", "env" },
	flags = F_THUMBNAIL_ALWAYS,
}

def_object{
	name = "forest_sun",
	model = "data/models/wire_tetra_long.fbx",
	model_rotation = vec(0.0, math.pi, 0.0),
	model_scale = 4.0,
	model_render_mode = "wireframe",
	light_type = "directional",
	light_color = vec(1.0, 0.8, 0.7),
	light_intensity = 6.0,
	light_cast_shadow = true,
	light_shadow_map_size = 2048,
	light_max_shadow_distance = 120.0,
	light_robust_shadow_map = false,
	light_shadow_distance_fade = true,
	light_sun = true,
	tags = { "forest", "env" },
	flags = F_THUMBNAIL_ALWAYS,
}

def_object{
	name = "moon_light",
	model = "data/models/wire_tetra_long.fbx",
	model_rotation = vec(0.0, math.pi, 0.0),
	model_scale = 4.0,
	model_render_mode = "wireframe",
	light_type = "directional",
	light_color = vec(0.10, 0.64, 1.00),
	light_intensity = 7.0,
	light_cast_shadow = true,
	light_shadow_map_size = 2048,
	light_max_shadow_distance = 120.0,
	light_robust_shadow_map = false,
	light_shadow_distance_fade = true,
	light_sun = true,
	tags = { "forest", "env" },
	flags = F_THUMBNAIL_ALWAYS,
}

def_object{
	name = "forest_ambient_rain",
	light_type = "ambient",
	light_color  = shb_color_to_vec(0x80bfffff),
	light_color2 = shb_color_to_vec(0x3e697bff),
	light_color3 = shb_color_to_vec(0x0a2f17ff),
	light_intensity = 0.8,
	tags = { "forest", "env" },
	flags = F_THUMBNAIL_ALWAYS,
}

def_object{
	name = "forest_sun_rain",
	model = "data/models/wire_tetra_long.fbx",
	model_rotation = vec(0.0, math.pi, 0.0),
	model_scale = 4.0,
	model_render_mode = "wireframe",
	light_type = "directional",
	light_color = vec(1.0, 0.8, 0.7),
	light_intensity = 3.0,
	light_cast_shadow = true,
	light_shadow_map_size = 2048,
	light_max_shadow_distance = 120.0,
	light_robust_shadow_map = false,
	light_shadow_distance_fade = true,
	light_sun = true,
	tags = { "forest", "env" },
	flags = F_THUMBNAIL_ALWAYS,
}

def_object{
	name = "forest_point_light",
	light_type = "point",
	light_color = vec(1.0, 1.0, 0.8),
	light_intensity = 30.0,
	light_range = 12.0,
	tags = { "forest", "light" },
}

def_object{
	name = "forest_skydome",
	model = "data/models/skydome_forest.fbx",
	receive_shadows = false,		-- this line is super important for efficient dirlight shadows!
	tags = { "forest" },
	-- timer = function(obj, t)
	-- 	set_world_rot_euler(obj, 0.0, t * 0.05, 0.0)
	-- end
}

def_object{
	name = "world_map_skydome",
	model = "data/models/skydome_forest.fbx",
	model_material = "skydome_world_map",
	receive_shadows = false,		-- this line is super important for efficient dirlight shadows!
	tags = { "world_map" },
}

def_object{
	name = "forest_night",
	model = "data/models/skydome_forest.fbx",
	model_material = "skydome_night",
	receive_shadows = false,	-- this line is super important for efficient dirlight shadows!
	tags = { "forest" },
}

def_object{
	name = "forest_fog",
	particle_system = "forest_fog",
	particle_warm_up = 2.0,
	particle_follow_camera = true,
	tags = { "forest", "env" },
}

def_object{
	name = "forest_ground_fog",
	particle_system = "forest_ground_fog",
	particle_warm_up = 2.0,
	--particle_follow_camera = true,
	tags = { "forest", "env" },
}

def_object{
	name = "waterfall_01",
	particle_system = "waterfall_01",
	particle_warm_up = 2.0,
}

def_object{
	name = "waterfall_oakfield",
	particle_system = "waterfall_oakfield",
	particle_warm_up = 2.0,
}

def_object{
	name = "forest_rain",
	particle_system = "forest_rain",
	particle_follow_camera = true,
	tags = { "forest", "env" },
	flags = F_THUMBNAIL_ALWAYS,
}

def_object{
	name = "forest_ground",
	model = "data/models/forest_ground.fbx",
	model_material = "forest_ground_01",
	model_render_mode = "heightmap",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT + F_SEEN_BY_RAYS,
	footstep_sound = "soft",
	layer = "floor",
	tags = { "forest" },
}

def_object{
	name = "forest_ground_no_floor_tag",
	model = "data/models/forest_ground.fbx",
	model_material = "forest_ground_01",
	model_render_mode = "heightmap",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT + F_SEEN_BY_RAYS,
	tags = { "forest" },
}

def_object{
	name = "forest_ground_rocky",
	model = "data/models/forest_ground.fbx",
	model_material = "forest_ground_rocky",
	model_render_mode = "heightmap",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT + F_SEEN_BY_RAYS,
	footstep_sound = "soft",
	layer = "floor",
	tags = { "forest" },
}

def_object{
	name = "corruption",
	model = "data/models/corruption.fbx",
	model_material = "corruption",
	particle_system = "corruption",
	tooltip = "Any non-flying creature entering the square suffers 1 damage.",
	tooltip_priority = 2,
	trigger_flags = TRIGGER_WALKING,
	on_enter_trigger = enter_corruption,
	flags = F_BLOCK_CORRUPTION + F_INTERACTIVE,	-- prevent non-flying monsters from entering corruption tiles voluntarily
	interaction_type = "move_to",
	interaction_draw_outline = false,
	interaction_tick_color = 0xff0000ff,
}

def_object{
	name = "forest_oak",
	model = "data/models/forest_oak_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	anims = { idle = "data/anims/forest_oak_idle.fbx", },
	anim_random_start_time = true,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	layer = "tree",
	tags = { "forest", "tree" },
}

def_object{
	name = "tree_shadow_caster",
	model = "data/models/tree_shadow_caster.fbx",
	anims = { idle = "data/anims/tree_shadow_caster.fbx", },
	anim_random_start_time = true,
	tags = { "forest", "tree" },
}

def_object{
	name = "forest_fallen_tree",
	model = "data/models/forest_fallen_tree.fbx",
	platform_model = true,
	footstep_sound = "hard",			-- this would benefit from a "wood" sound set
	layer = "tree",
	tags = { "forest", "tree" },
}

def_object{
	name = "forest_birch",
	model = "data/models/forest_birch_01.fbx",
	anims = { idle = "data/anims/forest_birch_01_idle.fbx", },
	anim_random_start_time = true,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	layer = "tree",
	tags = { "forest", "tree" },
}

def_object{
	name = "forest_birch2",
	model = "data/models/forest_birch_02.fbx",
	anims = { idle = "data/anims/forest_birch_02_idle.fbx", },
	anim_random_start_time = true,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	layer = "tree",
	tags = { "forest", "tree" },
}

def_object{
	name = "forest_spruce",
	model = "data/models/forest_spruce_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	anims = { idle = "data/anims/forest_spruce_idle.fbx" },
	anim_random_start_time = true,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	layer = "tree",
	tags = { "forest", "tree" },
}

def_object{
	name = "forest_spruce_small",
	model = "data/models/forest_spruce_small_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },	
	anims = { idle = "data/anims/forest_spruce_small_idle.fbx" },
	anim_random_start_time = true,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	layer = "tree",
	tags = { "forest", "tree" },
}

def_object{
	name = "forest_filler_bush_01",
	model = "data/models/forest_filler_bush_01.fbx",
	anims = { idle = "data/anims/forest_filler_bush_01_idle.fbx" },
	anim_random_start_time = true,
	tags = { "forest", "tree" },
}

def_object{
	name = "forest_willow_prop",
	model = "data/models/forest_willow.fbx",
	anims = {
		idle = "data/anims/forest_willow_idle.fbx",
	},
	tags = { "forest" },
}

def_object{
	name = "forest_willow_destroyed",
	model = "data/models/forest_destroyable_bush_broken.fbx",
	tags = { "forest" },
}

def_object{
	name = "forest_boulder",
	model = "data/models/forest_boulder.fbx",
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "forest" },
}

def_object{
	name = "forest_boulder_02",
	model = "data/models/rock_wall.fbx",
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "forest", "rock" },
}

def_object{
	name = "forest_plants",
	model = "data/models/forest_plants_01_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	anims = {
		idle = "data/anims/forest_plants1_idle.fbx",
		spawn = "data/anims/forest_plants1_spawn.fbx",
		die = "data/anims/forest_plants1_die.fbx",
	},
	anim_random_start_time = true,
	layer = "plant",
	tags = { "forest", "plant" },
}

def_object{
	name = "forest_plants2",
	model = "data/models/forest_plants_02_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	anims = {
		idle = "data/anims/forest_plants2_idle.fbx",
		spawn = "data/anims/forest_plants2_spawn.fbx",
		die = "data/anims/forest_plants2_die.fbx",
	},
	anim_random_start_time = true,
	layer = "plant",
	tags = { "forest", "plant" },
}

def_object{
	name = "forest_plants_red",
	model = "data/models/forest_plants_01_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	model_material = "forest_plants_autumn",
	anims = {
		idle = "data/anims/forest_plants1_idle.fbx",
		spawn = "data/anims/forest_plants1_spawn.fbx",
		die = "data/anims/forest_plants1_die.fbx",
	},
	anim_random_start_time = true,
	layer = "plant",
	tags = { "forest", "plant" },
}

def_object{
	name = "forest_plants2_red",
	model = "data/models/forest_plants_02_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	model_material = "forest_plants_autumn",
	anims = {
		idle = "data/anims/forest_plants2_idle.fbx",
		spawn = "data/anims/forest_plants2_spawn.fbx",
		die = "data/anims/forest_plants2_die.fbx",
	},
	anim_random_start_time = true,
	layer = "plant",
	tags = { "forest", "plant" },
}

def_object{
	name = "forest_grass",
	model = "data/models/grass_lods.fbx",
	model_lod_distances = { 0.0, 28.0, 40 },
	model_cast_shadow = false,
	model_render_mode = "heightmap",
	model_material = "forest_grass",
	flags = F_IGNORE_HEIGHT,
	layer = "grass",
	tags = { "forest", "plant" },
}

def_object{
	name = "grass_chest",
	model = "data/models/grass_chest.fbx",
	model_lod_distances = { 0.0, 28.0, 40 },
	model_cast_shadow = false,
	model_render_mode = "heightmap",
	model_material = "forest_grass",
	flags = F_IGNORE_HEIGHT,
	layer = "grass",
	tags = { "forest", "plant" },
}

def_object{
	name = "forest_grass_sparse",
	model = "data/models/grass_sparse_lods.fbx",
	model_lod_distances = { 0.0, 28.0, 40 },
	model_cast_shadow = false,
	model_render_mode = "heightmap",
	model_material = "forest_grass",
	flags = F_IGNORE_HEIGHT,
	layer = "grass",
	tags = { "forest", "plant" },
}

def_object{
	name = "forest_grass_sparse_no_height",
	model = "data/models/grass_sparse_long_lods.fbx",
	model_lod_distances = { 0.0, 28.0, 40 },
	model_cast_shadow = false,
	model_material = "forest_grass_no_height",
	flags = F_IGNORE_HEIGHT + F_HIT_BOUNDING_BOX,
	layer = "grass",
	tags = { "forest", "plant" },
}

def_object{
	name = "forest_grass_sparse_long_yellow",
	model = "data/models/grass_sparse_long_lods.fbx",
	model_lod_distances = { 0.0, 28.0, 40 },
	model_cast_shadow = false,
	model_render_mode = "heightmap",
	model_material = "forest_grass_yellow",
	flags = F_IGNORE_HEIGHT,
	layer = "grass",
	tags = { "forest", "plant" },
}

def_object{
	name = "forest_grass_sparse_long_yellow_no_height",
	model = "data/models/grass_sparse_long_lods.fbx",
	model_lod_distances = { 0.0, 28.0, 40 },
	model_cast_shadow = false,
	model_material = "forest_grass_yellow_no_height",
	flags = F_IGNORE_HEIGHT + F_HIT_BOUNDING_BOX,
	layer = "grass",
	tags = { "forest", "plant" },
}

def_object{
	name = "forest_grass_round",
	model = "data/models/grass_round.fbx",
	model_lod_distances = { 0.0, 28.0, 40 },
	model_material = "forest_grass",
	model_cast_shadow = false,
	model_render_mode = "heightmap",
	flags = F_IGNORE_HEIGHT,
	layer = "grass",
	tags = { "forest", "plant" },
}

def_object{
	name = "forest_grass_round_no_height",
	model = "data/models/grass_round.fbx",
	model_lod_distances = { 0.0, 28.0, 40 },
	model_material = "forest_grass_no_height",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT + F_HIT_BOUNDING_BOX,
	layer = "grass",
	tags = { "forest", "plant" },
}

def_object{
	name = "forest_grass_autumn",
	model = "data/models/grass_lods.fbx",
	model_lod_distances = { 0.0, 28.0, 40.0 },
	model_material = "forest_grass_autumn",
	model_cast_shadow = false,
	model_render_mode = "heightmap",
	flags = F_IGNORE_HEIGHT,
	layer = "grass",
	tags = { "forest", "plant" },
}

def_object{
	name = "forest_grass_autumn_sparse",
	model = "data/models/forest_grass_yellow.fbx",
	model_material = "forest_grass_autumn",
	model_cast_shadow = false,
	model_render_mode = "heightmap",
	flags = F_IGNORE_HEIGHT,
	layer = "grass",
	tags = { "forest", "plant" },
}

def_object{
	name = "sanctuary_grass",
	model = "data/models/grass_lods.fbx",
	model_lod_distances = { 0.0, 28.0, 40.0 },
	model_cast_shadow = false,
	model_render_mode = "heightmap",
	model_material = "sanctuary_grass",
	flags = F_IGNORE_HEIGHT,
	layer = "grass",
	tags = { "sanctuary", "plant" },
}

def_object{
	name = "sanctuary_grass_round",
	model = "data/models/grass_round.fbx",
	model_lod_distances = { 0.0, 28.0, 40 },
	--model_material = "sanctuary_grass",
	model_material = "sanctuary_grass_no_height",
	model_cast_shadow = false,
	--model_render_mode = "heightmap", -- no heightmap when no_height shader is used!
	flags = F_IGNORE_HEIGHT + F_HIT_BOUNDING_BOX,
	layer = "grass",
	tags = { "sanctuary", "plant" },
}

def_object{
	name = "sanctuary_grass_sparse",
	model = "data/models/grass_sparse_long_lods.fbx",
	model_lod_distances = { 0.0, 28.0, 40 },
	model_cast_shadow = false,
	model_render_mode = "heightmap",
	model_material = "sanctuary_grass",
	flags = F_IGNORE_HEIGHT,
	layer = "grass",
	tags = { "sanctuary", "plant" },
}

def_object{
	name = "sanctuary_grass_sparse_no_height",
	model = "data/models/grass_sparse_long_lods.fbx",
	model_lod_distances = { 0.0, 28.0, 40 },
	model_cast_shadow = false,
	model_material = "sanctuary_grass_no_height",
	flags = F_IGNORE_HEIGHT + F_HIT_BOUNDING_BOX,
	layer = "grass",
	tags = { "sanctuary", "plant" },
}

def_object{
	name = "sanctuary_grass_sparse_long_yellow",
	model = "data/models/grass_sparse_long_lods.fbx",
	model_lod_distances = { 0.0, 28.0, 40 },
	model_cast_shadow = false,
	model_render_mode = "heightmap",
	model_material = "sanctuary_grass_yellow",
	flags = F_IGNORE_HEIGHT,
	layer = "grass",
	tags = { "sanctuary", "plant" },
}

def_object{
	name = "sanctuary_grass_sparse_long_yellow_no_height",
	model = "data/models/grass_sparse_long_lods.fbx",
	model_lod_distances = { 0.0, 28.0, 40 },
	model_cast_shadow = false,
	model_material = "sanctuary_grass_yellow_no_height",
	flags = F_IGNORE_HEIGHT + F_HIT_BOUNDING_BOX,
	layer = "grass",
	tags = { "sanctuary", "plant" },
}

def_object{
	name = "dead_druid",
	model = "data/models/dead_druid.fbx",
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS + F_INTERACTIVE,
	tags = { "sanctuary" },
}

def_object{
	name = "forest_dungeon_entrance",
	width = 2,
	height = 1,
	model = "data/models/forest_dungeon_entrance.fbx",
	flags = F_BLOCK_AI + F_BLOCK_SUMMON,
	tags = { "forest", "exit" },
}

def_object{
	name = "forest_arch",
	model = "data/models/forest_arch.fbx",
	width = 2,
	height = 1,
	tags = { "forest" },
}

def_object{
	name = "menhir",
	model = "data/models/circle_stone.fbx",
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
}

def_object{
	name = "forest_dragon_egg",
	model = "data/models/forest_dragon_egg.fbx",
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
}

def_object{
	name = "magic_circle",
	model = "data/models/magic_circle.fbx",
	model_position = vec(0.0, 0.05, 0.0),
	model_material = "magic_circle",
	model_clone_material = true,
	light_type = "point",
	light_position = vec(0.0, 1.0, 0.0),
	light_color = vec(0, 200, 255)/255.0,
	light_intensity = 20.0,
	light_range = 8.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 64,
	heightmap_sample_radius = 1.5,
	flags = 0,
	trigger_flags = TRIGGER_WALKING,
	on_enter_trigger = enter_magic_circle,
	timer = function(obj, t)
		-- fade mesh color multiplier
		local color_active = tvec(86, 222, 255, 0)
		local color_inactive = tvec(0, 0, 0, 255)
		local t = math.clamp((shb_light_intensity(obj.light) - 0) / 20.0, 0.0, 1.0)
		local color = math.lerp(color_inactive, color_active, t) / 255.0
		local cbuf = shb_material_cbuffer(obj.model_material_instance)
		shb_map_cbuffer(cbuf)
		shb_cbuffer_float4(cbuf, "color_multiplier", color)
		shb_unmap_cbuffer(cbuf)
	end,
	on_game_loaded = function(obj)
		if get_flag(obj, F_ACTIVATED) then
			fade_light(obj, 0.0, 0.0)
		end
	end,
}

def_object{
	name = "travel_stone",
	model = "data/models/magic_circle.fbx",
	model_position = vec(0.0, 0.05, 0.0),
	model_material = "magic_circle",
	model_clone_material = true,
	light_type = "point",
	light_position = vec(0.0, 1.0, 0.0),
	light_color = vec(0, 200, 255)/255.0,
	light_intensity = 20.0,
	light_range = 8.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 64,
	heightmap_sample_radius = 1.5,
	flags = 0,
	timer = function(obj, t)
		-- fade mesh color multiplier
		local color_active = tvec(86, 222, 255, 0)
		local color_inactive = tvec(0, 0, 0, 255)
		local t = math.clamp((shb_light_intensity(obj.light) - 0) / 20.0, 0.0, 1.0)
		local color = math.lerp(color_inactive, color_active, t) / 255.0
		local cbuf = shb_material_cbuffer(obj.model_material_instance)
		shb_map_cbuffer(cbuf)
		shb_cbuffer_float4(cbuf, "color_multiplier", color)
		shb_unmap_cbuffer(cbuf)
	end,
}

def_object{
	name = "teleport_trail",
	particle_system = "bolt",
	trail_type = "swipe",
	trail_max_segments = 40,
	trail_offset1 = vec(0.0, 0.0, 0.0),
	trail_offset2 = vec(0.0, 0.0, 0.2),
	trail_texture = load_texture("data/textures/swipe.png", "rgba8_srgb"),
	trail_color = 0x00ffffff,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "campfire",
	model = "data/models/campfire.fbx",
	particle_system = "campfire",
	light_type = "point",
	light_position = vec(0.0, 1.0, 0),
	light_color = vec(1.0, 0.5, 0.25),
	light_intensity = 10.0,
	light_range = 10.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.4,
	flags = F_BLOCK_AI,
	heightmap_sample_radius = 1.0,
}

def_object{
	name = "campfire_scene_fire",
	model = "data/models/campfire.fbx",
	particle_system = "campfire_scene",
	light_type = "point",
	light_position = vec(0.0, 1.0, 0),
	light_color = vec(1.0, 0.5, 0.25),
	light_intensity = 10.0,
	light_range = 10.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.4,
	heightmap_sample_radius = 1.0,
}

def_object{
	name = "campfire_abandoned",
	model = "data/models/campfire.fbx",
	--particle_system = "campfire_smoke",
	heightmap_sample_radius = 1.0,
}

def_object{
	name = "monolith",
	model = "data/models/monolith.fbx",
	model_material = "monolith",
	particle_system = "monolith_runes",
	light_type = "point",
	light_position = vec(-2.3, 5.0, 0.0),
	light_color = vec(0.0, 0.75, 0.75),
	light_intensity = 10.0,
	light_range = 8.0,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	on_interact = interact_monolith,
}

def_object{
	name = "druidstone",
	width = 4,
	height = 4,
	model = "data/models/druidstone.fbx",
	-- model_scale = 7.0,
	model_material = "druidstone",
	anims = { idle = "data/anims/druidstone_idle.fbx", },
	model_cast_shadow = false,
	particle_system = "druidstone",
	light_type = "point",
	light_position = vec( 0.0, 13.0, 0.0),
	light_color = vec(0.0, 1.0, 0.0),
	light_intensity = 40.0,
	light_range = 30.0,
	light_shadow_map_size = 512,
	light_flicker_frequency = 0.25,
	light_flicker_amplitude = 0.75,
	flags = F_BLOCK_ALL,
}

def_object{
	name = "druidstone_dying",
	model = "data/models/druidstone_dying.fbx",
	model_material = "druidstone_dying",
	model_cast_shadow = false,
	light_type = "point",
	light_position = vec(-2.3, 5.0, 0.0),
	light_color = vec(0.0, 1.0, 0.0),
	light_intensity = 15.0,
	light_range = 30.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.4,
	flags = F_BLOCK_ALL,
}

def_object{
	name = "druidstone_dying_collapse",
	model = "data/models/druidstone_dying_collapse.fbx",
	anims = { shatter = "data/anims/druidstone_dying_collapse.fbx", },
	anim_play_on_init = "shatter",
}

def_object{
	name = "galaxy",
	model = "data/models/magic_circle.fbx",
	model_material = "galaxy",
}

def_object{
	name = "galaxy_particles",
	particle_system = "galaxy_particles",
}

def_object{
	name = "outer_space_particles",
	particle_system = "outer_space_particles",
}

def_object{
	name = "space_dome",
	model = "data/models/space_dome.fbx",
	model_material = "space_dome",
}

def_object{
	name = "outer_space_floor",
	model = "data/models/outer_space_floor.fbx",
	anims = {
		shake = "data/anims/outer_space_floor_shake.fbx",
		fall = "data/anims/outer_space_floor_fall.fbx",
	},
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
}

def_object{
	name = "outer_space_wall_01",
	model = "data/models/outer_space_wall_01.fbx",
	anims = {
		fall = "data/anims/outer_space_wall_01_fall.fbx",
	},
	heightmap_sample_radius = 1.0,
	collider_size_y = 0.3,
	snap_to = "edge",
	flags = F_PLACE_EDGE_BLOCKER,
}

def_object{
	ui_name = "Unstable Floor",
	name = "outer_space_floor_unstable",
	model = "data/models/outer_space_floor_unstable.fbx",
	anims = {
		shake = "data/anims/outer_space_floor_unstable_shake.fbx",
		fall = "data/anims/outer_space_floor_unstable_fall.fbx",
	},
	flags = F_INTERACTIVE + F_SEEN_BY_RAYS + F_HIT_BOUNDING_BOX,
	trigger_flags = TRIGGER_WALKING,
	tooltip = "This square will collapse when a non-flying creature moves away from it.",
	interaction_type = "move_to",
	footstep_sound = "hard",
	layer = "floor",
}

def_object{
	name = "outer_space_rubble",
	model = "data/models/outer_space_rubble.fbx",
	anims = {
		shake = "data/anims/outer_space_rubble_shake.fbx",
		fall = "data/anims/outer_space_rubble_fall.fbx",
	},
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
}

def_object{
	name = "outer_space_rubble2",
	model = "data/models/outer_space_rubble2.fbx",
	anims = {
		shake = "data/anims/outer_space_rubble2_shake.fbx",
		fall = "data/anims/outer_space_rubble2_fall.fbx",
	},
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
}

def_object{
	name = "outer_space_rubble_floating",
	model = "data/models/outer_space_rubble_floating.fbx",
	model_bounds = shb_create_box(vec(0.0, 0.0, 0.0), vec(2.0, 2.0, 2.0)),
	anims = { idle = "data/anims/outer_space_rubble_floating.fbx", },
	anim_random_start_time = true,
}

def_object{
	name = "outer_space_stairs",
	width = 2,
	height = 3,
	model = "data/models/outer_space_stairs.fbx",
	model_position = vec(0.0, 0.0, -2.0),
	platform_model = true,
	footstep_sound = "hard",
	flags = F_SEEN_BY_RAYS,
}

def_object{
	name = "aether_holder",
	ui_name = "Crux Pylon",
	model = "data/models/aether_holder.fbx",
	model_scale = vec(0.85, 1.0, 0.85),
	particle_system = "aether_holder_effect",
	particle_warm_up = 2.0,
	light_type = "point",
	light_position = vec(0.0, 4.0, 0.0),
	light_color = vec(0.00, 1.00, 0.26),
	light_intensity = 50.0,
	light_range = 7.0,
	light_flicker_frequency = 0.75,
	light_flicker_amplitude = 0.75,
	-- light_cast_shadow = true,
	-- light_blur_shadow = true,
	-- light_shadow_map_size = 128,
	flags = F_BLOCK_ALL + F_INTERACTIVE,
	tooltip = "Interact with the Crux Pylon to receive a Tear of Aether. This is a free action.",
}

def_object{
	name = "zero_seed_portal",
	model = "data/models/dark_seal.fbx",
	model_position = vec(0.0, -2.2, 0.0),
	model_scale = 1.5,
	model_material = "zero_seed_portal",
	anims = { idle = "data/anims/dark_seal.fbx", },
	light_type = "point",
	light_color = vec(0.0, 0.5, 1.0),
	light_intensity = 30.0,
	light_range = 25.0,
	particle_system = "zero_seed_portal",
	particle_sort_offset = -100.0,	-- make sure particle effect is always rendered after the model
	snap_to = "edge",
	spawn_sound = "portal_spawn",
	timer = function(obj, t)
		t = shb_random_float(0.0, math.pi * 2.0)

		local radius = 2.2
		local x = math.sin(t) * radius
		local y = math.cos(t) * radius

		local node = obj.particle_node
		shb_node_position(node, x, y, 0.0)
		shb_node_rotation(node, 0.0, 0.0, -t)
		--shb_debug_draw_base(node)
	end,
	dynamic_geometry_func = function(obj, time)
		local tex = load_texture("data/textures/teleport_effect.png", "rgba8_srgb")
		local pos = get_world_pos(obj)

		local intensity = 0.25

		shb_vertex_color(intensity, intensity, intensity, 1.0)

		local function ring(num_segments, r1, r2, h1, h2, base_u, scale_u)
			shb_blend_state("additive")
			--shb_depth_stencil_state("disabled")
			shb_begin_vertices("quad_strip", tex)

			for i=0,num_segments do
				local t = i / num_segments
				local x = math.sin(t * math.pi * 2.0)
				local y = math.cos(t * math.pi * 2.0)

				shb_vertex_texcoord(base_u + t * scale_u, 1.0)
				shb_vertex_position(pos.x + x * r1, pos.y + y * r1, pos.z + h1)

				shb_vertex_texcoord(base_u + t * scale_u, 0.0)
				shb_vertex_position(pos.x + x * r2, pos.y + y * r2, pos.z + h2)
			end

			shb_end_vertices()
		end

		local scale = (2.5 + math.cos(time) * 0.05) * get_obj_scale(obj).x

		ring(20, 0.55 * scale, 1.7 * scale, 0.0, 0.0, obj.id + time * -0.2 + 0.5, 10)
		ring(20, 0.65 * scale, 1.5 * scale, 0.0, 0.0, obj.id + time * 0.1 + 0.2, 7)
	end,
}

def_object{
	name = "dark_crystal",
	ui_name = "Cyst",
	model = "data/models/dark_crystal.fbx",
	anims = { idle = "data/anims/dark_crystal.fbx", },
	anim_random_start_time = true,
	light_type = "point",
	light_position = vec(0.0, 2.0, 0.0),
	light_color = vec(0.51, 0.00, 1.00),
	light_intensity = 8.0,
	light_range = 8.0,
	light_flicker_frequency = 2.0,
	light_flicker_amplitude = 1.0,
	particle_system = "dark_crystal",
	mob_hp = 7,
	mob_damage = 0,
	mob_armor = 1,
	mob_thing = true,
	mob_xp = 0,
	mob_size = 1,
	mob_spawn_on_death = "dark_crystal_shatter",
	mob_death_effect = "none",
	mob_hit_effect = "dark_crystal_hit",
	mob_hit_flash_intensity = 4.0,
	on_tooltip = tooltip_mob,
	immunities = IMMUNE_ALL,
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS + F_INTERACTIVE + F_HIDE_CLOSEUP,
	mob_flags = MF_IMMOVABLE,
	mob_description = "A magical power source of unknown origin. It is drawing energy from the Zero Seed.",
}

def_object{
	name = "dark_crystal_base",
	model = "data/models/dark_crystal_base.fbx",
	flags = 0,
}

def_object{
	name = "dark_crystal_hit",
	particle_system = "dark_crystal_hit",
	particle_auto_destroy = true,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "dark_crystal_shatter",
	model = "data/models/dark_crystal_shatter.fbx",
	particle_system = "dark_crystal_shatter",
	particle_auto_destroy = true,
	anims = {
		shatter = "data/anims/dark_crystal_shatter.fbx",
	},
	anim_play_on_init = "shatter",
	timer = function(obj, t)
		set_model_dissolve(obj, math.clamp(t - 0.25, 0.0, 1.0))
	end,
	flags = F_TEMPORARY,
}

def_object{
	name = "dark_seal",
	model = "data/models/dark_seal.fbx",
	anims = { idle = "data/anims/dark_seal.fbx", },
	anim_random_start_time = true,
	light_type = "point",
	light_position = vec(0.0, 2.0, 0.0),
	light_rotation = vec(math.pi, 0.0, 0.0),
	light_color = vec(0.51, 0.00, 1.00),
	light_intensity = 50.0,
	light_range = 6.0,
	light_spot_angle = 170,
	light_spot_sharpness = 0.95,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.5,
	particle_system = "dark_seal",
	snap_to = "edge",
}

def_object{
	name = "dark_seal_vanish",
	particle_system = "dark_seal_vanish",
	particle_auto_destroy = true,
	snap_to = "edge",
	flags = F_TEMPORARY,
}

def_object{
	name = "rock_wall",
	model = "data/models/rock_wall.fbx",
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "rock" },
}

def_object{
	name = "rock_wall2",
	model = "data/models/rock_wall2.fbx",
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "rock" },
}

def_object{
	name = "rock_wall_filler",
	model = "data/models/rock_wall_filler.fbx",
	model_position = vec(0.0, 0.0, 1.5),
	flags = F_HIDE_CLOSEUP,
	tags = { "rock" },
}

def_object{
	name = "rock_wall_filler2",
	model = "data/models/rock_wall_filler2.fbx",
	model_position = vec(0.0, 0.0, 1.5),
	flags = F_HIDE_CLOSEUP,
	tags = { "rock" },
}

def_object{
	name = "rock_wall_2x1",
	width = 2,
	height = 1,
	model = "data/models/rock_wall_2x1.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "rock" },
}

def_object{
	name = "rock_wall_2x2",
	width = 2,
	height = 2,
	model = "data/models/rock_wall_2x2.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "rock" },
}

def_object{
	name = "rock_wall_2x2_burned",
	width = 2,
	height = 2,
	model = "data/models/rock_wall_2x2.fbx",
	model_material = "sanctuary_burned_rock",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "rock" },
}

def_object{
	name = "rock_wall_2x2_margin",
	width = 2,
	height = 2,
	model = "data/models/rock_wall_2x2_margin.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "rock" },
}

def_object{
	name = "forest_cliff_edge_01",
	model = "data/models/forest_cliff_edge_01.fbx",
	tags = { "rock" },
}

def_object{
	name = "forest_cliff_edge_02",
	model = "data/models/forest_cliff_edge_02.fbx",
	tags = { "rock" },
}

def_object{
	name = "reed",
	model = "data/models/reed_01_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	anims = { idle = "data/anims/reed_idle.fbx" },
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT,
	tags = { "plant", "swamp" },
}

def_object{
	name = "lilypads",
	model = "data/models/lilypads.fbx",
	anims = { idle = "data/anims/lilypads_idle.fbx" },
	anim_random_start_time = true,
	tags = { "plant", "swamp" },
}

def_object{
	name = "head_statue_1",
	width = 2,
	height = 2,
	model = "data/models/head_statue_01.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
}

def_object{
	name = "head_statue_2",
	width = 2,
	height = 2,
	model = "data/models/head_statue_02.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
}

def_object{
	name = "forest_pillar_01",
	model = "data/models/forest_pillar_01.fbx",
	flags = F_PLACE_CORNER_BLOCKER + F_HIDE_CLOSEUP,
	tags = { "forest", "ruins" },
	snap_to = "vertex",
}

def_object{
	name = "forest_pillar_02",
	model = "data/models/forest_pillar_02.fbx",
	flags = F_PLACE_CORNER_BLOCKER + F_HIDE_CLOSEUP,
	tags = { "forest", "ruins" },
	snap_to = "vertex",
}

def_object{
	name = "forest_pillar_03",
	model = "data/models/forest_pillar_03.fbx",
	tags = { "forest", "ruins" },
	snap_to = "vertex",
}

def_object{
	name = "spawnling_goahti",
	width = 2,
	height = 2,
	model = "data/models/spawnling_goahti.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
}

def_object{
	name = "spawnling_weapon_rack",
	model = "data/models/spawnling_weapon_rack.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT + F_HIDE_CLOSEUP,
}

def_object{
	name = "spawnling_skin",
	model = "data/models/spawnling_skin.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT + F_HIDE_CLOSEUP,
}

def_object{
	name = "spawnling_flag",
	model = "data/models/spawnling_flag.fbx",
	anims = { idle = "data/anims/spawnling_flag.fbx" },
	anim_random_start_time = true,
	flags = F_BLOCK_MOVE,
}

def_object{
	name = "spawnling_bonfire",
	model = "data/models/spawnling_bonfire.fbx",
	particle_system = "bonfire",
	light_type = "point",
	light_position = vec(0.0, 1.8, 0),
	light_color = vec(1.0, 0.5, 0.25),
	light_intensity = 20.0,
	light_range = 8.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.4,
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT + F_HIDE_CLOSEUP,
	heightmap_sample_radius = 1.0,
}

def_object{
	name = "spawnling_fence",
	model = "data/models/spawnling_fence.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_PLACE_EDGE_BLOCKER,
	snap_to = "edge",
}

def_object{
	name = "spawnling_fence_gate",
	ui_name = "Barn Gate",
	model = "data/models/spawnling_fence_gate.fbx",
	-- rotate the gate around so that it opens away from the hero when the hero is standing in the same cell:
	model_rotation = vec(0.0, math.pi, 0.0),
	anims = {
		open = "data/anims/spawnling_fence_gate_open.fbx",
	},
	on_interact = interact_door,
	on_tooltip = tooltip_door,
	door_type = "fence",
	on_game_loaded = door_game_loaded,
	heightmap_sample_radius = 1.0,
	flags = F_PLACE_EDGE_BLOCKER + F_INTERACTIVE + F_INTERACT_ACTION + F_SEEN_BY_RAYS + F_NO_REDIRECT + F_HIT_BOUNDING_BOX,
	snap_to = "edge",
}

def_object{
	name = "ranger_tent",
	width = 2,
	height = 2,
	model = "data/models/ranger_tent.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
}

def_object{
	name = "forest_rubble_01",
	model = "data/models/forest_rubble_01.fbx",
	tags = { "forest", "rock" },
}

def_object{
	name = "forest_rubble_02",
	model = "data/models/forest_rubble_02.fbx",
	tags = { "forest", "rock" },
}

def_object{
	name = "forest_ruins_floor_01",
	model = "data/models/forest_ruins_floor_01.fbx",
	flags = F_SEEN_BY_RAYS,
	platform_model = true,
	footstep_sound = "hard",
	tags = { "forest", "ruins" },
}

def_object{
	name = "forest_ruins_floor_02",
	model = "data/models/forest_ruins_floor_02.fbx",
	flags = F_SEEN_BY_RAYS,
	platform_model = true,
	footstep_sound = "hard",
	tags = { "forest", "ruins" },
}

def_object{
	name = "forest_ruins_floor_03",
	model = "data/models/forest_ruins_floor_03.fbx",
	flags = F_SEEN_BY_RAYS,
	platform_model = true,
	footstep_sound = "hard",
	tags = { "forest", "ruins" },
}

def_object{
	name = "forest_ruins_floor_04",
	model = "data/models/forest_ruins_floor_04.fbx",
	flags = F_SEEN_BY_RAYS,
	platform_model = true,
	footstep_sound = "hard",
	tags = { "forest", "ruins" },
}

def_object{
	name = "forest_ruins_wall_center_01",
	model = "data/models/forest_ruins_wall_center_01.fbx",
	heightmap_sample_radius = 1.0,
	tags = { "forest", "ruins" },
	snap_to = "edge",
	flags = F_PLACE_EDGE_BLOCKER,
}

def_object{
	name = "forest_ruins_wall_center_02",
	model = "data/models/forest_ruins_wall_center_02.fbx",
	heightmap_sample_radius = 1.0,
	tags = { "forest", "ruins" },
	snap_to = "edge",
	flags = F_PLACE_EDGE_BLOCKER,
}

def_object{
	name = "forest_ruins_wall_center_03",
	model = "data/models/forest_ruins_wall_center_03.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT, 
	tags = { "forest", "ruins" },
}

def_object{
	name = "forest_ruins_wall_right",
	model = "data/models/forest_ruins_wall_right.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_PLACE_EDGE_BLOCKER,
	tags = { "forest", "ruins" },
	snap_to = "edge",
}

def_object{
	name = "forest_ruins_wall_left",
	model = "data/models/forest_ruins_wall_left.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_PLACE_EDGE_BLOCKER,
	tags = { "forest", "ruins" },
	snap_to = "edge",
}

def_object{
	name = "forest_ruins_wall_rubble",
	model = "data/models/forest_ruins_wall_rubble.fbx",
	heightmap_sample_radius = 1.0,
	tags = { "forest", "ruins" },
}

def_object{
	name = "forest_ruins_pillar_filler",
	model = "data/models/forest_ruins_pillar_filler.fbx",
	tags = { "forest", "ruins" },
}

def_object{
	name = "forest_ruins_pillar_filler_corner",
	model = "data/models/forest_ruins_pillar_filler_corner.fbx",
	tags = { "forest", "ruins" },
}

def_object{
	name = "forest_ruins_arch_01",
	model = "data/models/forest_ruins_arch_01.fbx",
	flags = F_PLACE_CORNER_BLOCKER + F_HIDE_CLOSEUP,
	snap_to = "vertex",
	tags = { "forest", "ruins" },
}

def_object{
	name = "forest_ruins_arch_02",
	model = "data/models/forest_ruins_arch_02.fbx",
	flags = F_PLACE_CORNER_BLOCKER + F_HIDE_CLOSEUP,
	snap_to = "vertex",
	tags = { "forest", "ruins" },
}

def_object{
	name = "forest_stairs",
	model = "data/models/forest_stairs.fbx",
	platform_model = true,
	footstep_sound = "hard",
	width = 2,
	height = 3,
	tags = { "forest" },
}

def_object{
	name = "forest_ruins_bridge",
	model = "data/models/forest_ruins_bridge.fbx",
	platform_model = true,
	footstep_sound = "hard",
	width = 2,
	height = 3,
	flags = F_SEEN_BY_RAYS,
	tags = { "forest", "ruins" },
}

def_object{
	name = "forest_ruins_tower",
	model = "data/models/forest_ruins_tower.fbx",
	width = 4,
	height = 4,
	tags = { "forest", "ruins" },
}

def_object{
	name = "wood_troll_sleeping",
	model = "data/models/wood_troll_sleeping.fbx",
	width = 2,
	height = 2,
}

def_object{
	name = "wood_troll_rock",
	model = "data/models/wood_troll_rock.fbx",
	projectile_speed = 20.0,
	projectile_trajectory_height = 0.2,
	projectile_rotate_x = 10.0,
	projectile_rotate_y = 5.0,
	projectile_hit_effect = "wood_troll_rock_shatter",
	projectile_hit_callback = function() camera_shake(0.5, 0.4) end,
	tags = { "rock" },
}

def_object{
	name = "wood_troll_rock_shatter",
	model = "data/models/wood_troll_rock_shatter.fbx",
	anims = {
		shatter = "data/anims/wood_troll_rock_shatter.fbx",
	},
	anim_play_on_init = "shatter",
	particle_system = "wood_troll_rock_hit",
	particle_auto_destroy = true,
	light_type = "point",
	light_color = vec(1.0, 1.0, 1.0),
	light_intensity = 10.0,
	light_range = 15.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	light_fade_out = 1.0,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "forest_old_tree",
	model = "data/models/forest_old_tree.fbx",
	--model_lod_distances = { 0.0, 30.0 },
	anims = { idle = "data/anims/forest_old_tree_idle.fbx", },
	anim_random_start_time = true,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	layer = "tree",
	tags = { "forest", "tree" },
}

def_object{
	name = "forest_old_tree_static",
	model = "data/models/forest_old_tree.fbx",
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	layer = "tree",
	tags = { "forest", "tree" },
}

def_object{
	name = "forest_tree_branch",
	model = "data/models/forest_tree_branch.fbx",
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	layer = "tree",
	tags = { "forest", "tree" },
}

---------------------------------------------------
-- Mountains
---------------------------------------------------

def_object{
	name = "mountain_ambient",
	light_type = "ambient",
	light_color  = shb_color_to_vec(0x67A6F6ff),
	light_color2 = shb_color_to_vec(0x9BCFFFff), --0x368EE7ff
	light_color3 = shb_color_to_vec(0x3078C3ff),
	light_intensity = 0.5,
	tags = { "mountain", "env" },
	flags = F_THUMBNAIL_ALWAYS,
}

def_object{
	name = "snow_storm_sun",
	model = "data/models/wire_tetra_long.fbx",
	model_rotation = vec(0.0, math.pi, 0.0),
	model_scale = 4.0,
	model_render_mode = "wireframe",
	light_type = "directional",
	light_color = vec(0.81, 0.93, 0.99),
	light_intensity = 3.2,
	light_cast_shadow = true,
	light_shadow_map_size = 2048,
	light_max_shadow_distance = 120.0,
	light_robust_shadow_map = false,
	light_shadow_distance_fade = true,
	light_sun = true,
	tags = { "mountain", "env" },
	flags = F_THUMBNAIL_ALWAYS,
}

def_object{
	name = "mountain_sun",
	model = "data/models/wire_tetra_long.fbx",
	model_rotation = vec(0.0, math.pi, 0.0),
	model_scale = 4.0,
	model_render_mode = "wireframe",
	light_type = "directional",
	light_color = vec(1.0, 1.0, 1.0),
	light_intensity = 3.0,
	light_cast_shadow = true,
	light_shadow_map_size = 2048,
	light_max_shadow_distance = 120.0,
	light_robust_shadow_map = false,
	light_shadow_distance_fade = true,
	light_sun = true,
	tags = { "mountain", "env" },
	flags = F_THUMBNAIL_ALWAYS,
}

def_object{
	name = "snow_storm_fog",
	particle_system = "snow_storm_fog",
	particle_warm_up = 2.0,
	particle_follow_camera = true,
	tags = { "mountain", "env" },
}

def_object{
	name = "snow_storm_flakes",
	particle_system = "snow_storm",
	particle_follow_camera = true,
	tags = { "mountain", "env" },
}

def_object{
	name = "snow_fall_light",
	particle_system = "snow_fall_light",
	particle_follow_camera = true,
	tags = { "mountain", "env" },
}

def_object{
	name = "mountain_ground",
	model = "data/models/mountain_ground.fbx",
	model_material = "mountain_ground",
	model_render_mode = "heightmap",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT + F_SEEN_BY_RAYS,
	footstep_sound = "soft",
	layer = "floor",
	tags = { "mountain" },
}

def_object{
	name = "mountain_ice",
	model = "data/models/mountain_ground.fbx",
	model_material = "mountain_ground_ice",
	platform_model = true,
	footstep_sound = "hard",
	flags = F_IGNORE_HEIGHT + F_SEEN_BY_RAYS,
	tags = { "mountain" },
}

def_object{
	name = "rock_wall_snowy",
	model = "data/models/rock_wall_snowy.fbx",
	model_material = "rock_wall_snowy",
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "mountain", "rock" },
}

def_object{
	name = "rock_wall_snowy2",
	model = "data/models/rock_wall_snowy2.fbx",
	model_material = "rock_wall_snowy",
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "mountain", "rock" },
}

def_object{
	name = "rock_wall_filler_snowy",
	model = "data/models/rock_wall_filler_snowy.fbx",
	model_material = "rock_wall_snowy",
	model_position = vec(0.0, 0.0, 1.5),
	flags = F_HIDE_CLOSEUP,
	tags = { "mountain", "rock" },
}

def_object{
	name = "rock_wall_filler_snowy2",
	model = "data/models/rock_wall_filler_snowy2.fbx",
	model_material = "rock_wall_snowy",
	model_position = vec(0.0, 0.0, 1.5),
	flags = F_HIDE_CLOSEUP,
	tags = { "mountain", "rock" },
}

def_object{
	name = "rock_wall_2x1_snowy",
	width = 2,
	height = 1,
	model = "data/models/rock_wall_2x1.fbx",
	model_material = "rock_wall_snowy",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "mountain", "rock" },
}

def_object{
	name = "rock_wall_2x2_snowy",
	width = 2,
	height = 2,
	model = "data/models/rock_wall_2x2.fbx",
	model_material = "rock_wall_snowy",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "mountain", "rock" },
}

def_object{
	name = "rock_wall_2x2_margin_snowy",
	width = 2,
	height = 2,
	model = "data/models/rock_wall_2x2_margin.fbx",
	model_material = "rock_wall_snowy",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "mountain", "rock" },
}

def_object{
	name = "mountain_cliff_edge_01",
	model = "data/models/forest_cliff_edge_01.fbx",
	model_material = "rock_wall_snowy",
	platform_model = "data/models/forest_cliff_edge_01_platform.fbx",
	always_draw_path_tile = true,	-- force drawing path tiles on this object (needed because these objects often expand over their footprint)
	footstep_sound = "soft",
	width = 2,
	height = 2,
	tags = { "mountain", "rock" },
}

def_object{
	name = "mountain_cliff_edge_02",
	model = "data/models/forest_cliff_edge_02.fbx",
	model_material = "rock_wall_snowy",
	model_scale = vec(1.4, 1.0, 1.3),
	platform_model = "data/models/forest_cliff_edge_02_platform.fbx",
	always_draw_path_tile = true,	-- force drawing path tiles on this object (needed because these objects often expand over their footprint)
	footstep_sound = "soft",
	width = 3,
	height = 5,
	tags = { "mountain", "rock" },
}

def_object{
	name = "mountain_stones_big",
	model = "data/models/sanctuary_stones_big_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	model_material = "rock_wall_snowy",
	width = 2,
	height = 2,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	tags = { "mountain", "rock" },
}

def_object{
	name = "mountain_stones_01",
	model = "data/models/sanctuary_stones_01_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	model_material = "rock_wall_snowy",
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "mountain", "rock" },
}

def_object{
	name = "mountain_stones_02",
	model = "data/models/sanctuary_stones_02_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	model_material = "rock_wall_snowy",
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "mountain", "rock" },
}

def_object{
	name = "mountain_stones_rubble",
	model = "data/models/sanctuary_stones_rubble.fbx",
	model_material = "rock_wall_snowy",
	tags = { "mountain", "rock" },
}

def_object{
	name = "mountain_dead_tree",
	model = "data/models/mountain_dead_tree.fbx",
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	layer = "tree",
	tags = { "mountain", "tree" },
}

def_object{
	name = "mountain_dead_tree_windy",
	model = "data/models/mountain_dead_tree.fbx",
	anims = { idle = "data/anims/mountain_dead_tree_windy.fbx" },
	anim_random_start_time = true,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	layer = "tree",
	tags = { "mountain", "tree" },
}

def_object{
	name = "mountain_spruce",
	model = "data/models/mountain_spruce.fbx",
	anims = { idle = "data/anims/mountain_spruce_idle.fbx" },
	anim_random_start_time = true,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	layer = "tree",
	tags = { "mountain", "tree" },
}

def_object{
	name = "mountain_spruce_frosty",
	model = "data/models/mountain_spruce_frosty.fbx",
	anims = { idle = "data/anims/mountain_spruce_idle.fbx" },
	anim_random_start_time = true,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	layer = "tree",
	tags = { "mountain", "tree" },
}

def_object{
	name = "mountain_spruce_small",
	model = "data/models/mountain_spruce_small.fbx",
	anims = { idle = "data/anims/forest_spruce_small_idle.fbx" },
	anim_random_start_time = true,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	layer = "tree",
	tags = { "mountain", "tree" },
}

def_object{
	name = "reed_frozen",
	model = "data/models/reed_01_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	model_material = "reed_frozen",
	anims = { idle = "data/anims/reed_idle.fbx" },
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT,
	tags = { "plant", "mountain" },
}

def_object{
	name = "mountain_thicket",
	model = "data/models/swamp_thicket.fbx",
	model_material = "mountain_dead_tree",
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT,
	tags = { "plant", "mountain" },
}

def_object{
	name = "mountain_ruins_wall_center_01",
	model = "data/models/forest_ruins_wall_center_01.fbx",
	model_material = "mountain_ruins_tile",
	heightmap_sample_radius = 1.0,
	tags = { "mountain", "ruins" },
	snap_to = "edge",
	flags = F_PLACE_EDGE_BLOCKER,
}

def_object{
	name = "mountain_ruins_wall_center_02",
	model = "data/models/forest_ruins_wall_center_02.fbx",
	model_material = "mountain_ruins_tile",
	heightmap_sample_radius = 1.0,
	tags = { "mountain", "ruins" },
	snap_to = "edge",
	flags = F_PLACE_EDGE_BLOCKER,
}

def_object{
	name = "mountain_ruins_wall_center_03",
	model = "data/models/forest_ruins_wall_center_03.fbx",
	model_material = "mountain_ruins_tile",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT,
	tags = { "mountain", "ruins" },
}

def_object{
	name = "mountain_ruins_wall_right",
	model = "data/models/forest_ruins_wall_right.fbx",
	model_material = "mountain_ruins_tile",
	heightmap_sample_radius = 1.0,
	flags = F_PLACE_EDGE_BLOCKER,
	tags = { "mountain", "ruins" },
	snap_to = "edge",
}

def_object{
	name = "mountain_ruins_wall_left",
	model = "data/models/forest_ruins_wall_left.fbx",
	model_material = "mountain_ruins_tile",
	heightmap_sample_radius = 1.0,
	flags = F_PLACE_EDGE_BLOCKER,
	tags = { "mountain", "ruins" },
	snap_to = "edge",
}

def_object{
	name = "mountain_ruins_wall_rubble",
	model = "data/models/forest_ruins_wall_rubble.fbx",
	model_material = "mountain_ruins_tile",
	heightmap_sample_radius = 1.0,
	tags = { "mountain", "ruins" },
}

def_object{
	name = "mountain_ruins_pillar_filler",
	model = "data/models/forest_ruins_pillar_filler.fbx",
	model_material = "mountain_ruins_tile",
	tags = { "mountain", "ruins" },
	snap_to = "vertex",
}

def_object{
	name = "mountain_ruins_pillar_filler_corner",
	model = "data/models/forest_ruins_pillar_filler_corner.fbx",
	model_material = "mountain_ruins_tile",
	tags = { "mountain", "ruins" },
	snap_to = "vertex",
}

def_object{
	name = "mountain_ruins_arch_01",
	model = "data/models/forest_ruins_arch_01.fbx",
	model_material = "mountain_ruins_tile",
	flags = F_PLACE_CORNER_BLOCKER + F_HIDE_CLOSEUP,
	tags = { "mountain", "ruins" },
	snap_to = "vertex",
}

def_object{
	name = "mountain_ruins_arch_02",
	model = "data/models/forest_ruins_arch_02.fbx",
	model_material = "mountain_ruins_tile",
	flags = F_PLACE_CORNER_BLOCKER + F_HIDE_CLOSEUP,
	tags = { "mountain", "ruins" },
	snap_to = "vertex",
}

def_object{
	name = "mountain_pillar_01",
	model = "data/models/forest_pillar_01.fbx",
	model_material = "mountain_ruins_tile",
	flags = F_PLACE_CORNER_BLOCKER + F_HIDE_CLOSEUP,
	tags = { "mountain", "ruins" },
	snap_to = "vertex",
}

def_object{
	name = "mountain_pillar_02",
	model = "data/models/forest_pillar_02.fbx",
	model_material = "mountain_ruins_tile",
	flags = F_PLACE_CORNER_BLOCKER + F_HIDE_CLOSEUP,
	tags = { "mountain", "ruins" },
	snap_to = "vertex",
}

def_object{
	name = "mountain_pillar_03",
	model = "data/models/forest_pillar_03.fbx",
	model_material = "mountain_ruins_tile",
	tags = { "mountain", "ruins" },
	snap_to = "vertex",
}

def_object{
	name = "mountain_icicles",
	model = "data/models/mountain_icicles.fbx",
}

def_object{
	name = "monastery_icicles",
	model = "data/models/monastery_icicles.fbx",
	light_type = "point",
	light_position = vec(0.0, 2.0, 0.0),		
	light_color = vec(0.08, 0.6, 0.9),
	light_intensity = 8.0,	
	light_range = 12.0,
	light_flicker_frequency = 1,	
	light_flicker_amplitude = 0.3,
}

def_object{
	name = "beacon_fire_unlit",
	ui_name = "Beacon Fire (unlit)",
	width = 2,
	height = 2,
	model = "data/models/spawnling_bonfire.fbx",
	model_scale = vec(3.0, 3.5, 3.0),
	model_material_overrides = { bonfire = "bonfire_unlit" },
	mob_hp = 1,			-- beacon fire is a mob so that it can be targetted with fire spell (and other spells)
	mob_armor = 0,
	mob_thing = true,
	mob_xp = 0,
	mob_death_effect = "none",
	mob_flags = MF_HIDE_HP + MF_IMMOVABLE,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP + F_INTERACTIVE + F_SEEN_BY_RAYS,
	heightmap_sample_radius = 0.5,
	draw_spells = { "ice" },
}

def_object{
	name = "beacon_fire",
	width = 2,
	height = 2,
	model = "data/models/spawnling_bonfire.fbx",
	model_scale = vec(3.0, 3.5, 3.0),
	particle_system = "beacon_fire",
	light_type = "point",
	light_position = vec(0.0, 5.0, 0),
	light_color = vec(1.0, 0.5, 0.25),
	light_intensity = 20.0,
	light_range = 15.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.4,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP + F_INTERACTIVE + F_SEEN_BY_RAYS,
	heightmap_sample_radius = 1.0,
}

def_object{
	name = "ancient_furnace",
	model = "data/models/arken_temple_blocker.fbx",
	mob_hp = 1,			-- mob so that it can be targetted with spells
	mob_armor = 0,
	mob_thing = true,
	mob_xp = 0,
	mob_death_effect = "none",
	mob_flags = MF_HIDE_HP + MF_IMMOVABLE,
	flags = F_BLOCK_ALL + F_INTERACTIVE + F_SEEN_BY_RAYS,
}

def_object{
	name = "mountain_arch",
	model = "data/models/mountain_arch.fbx",
	width = 2,
	height = 1,
	tags = { "mountain" },
}

def_object{
	name = "mountain_grass_sparse",
	model = "data/models/grass_sparse_long_lods.fbx",
	model_lod_distances = { 0.0, 28.0, 40 },
	model_cast_shadow = false,
	model_render_mode = "heightmap",
	model_material = "mountain_grass",
	flags = F_IGNORE_HEIGHT,
	layer = "grass",
	tags = { "mountain", "plant" },
}

def_object{
	name = "mountain_rope_bridge",
	model = "data/models/mountain_rope_bridge.fbx",
	model_material = "mountain_snow_covered_wood",
	platform_model = true,
	footstep_sound = "hard",			-- this would benefit from a "wood" sound set
	width = 2,
	height = 3,
	flags = F_SEEN_BY_RAYS,
	tags = { "mountain" },
}

def_object{
	name = "mountain_snow_spray",
	particle_system = "mountain_snow_spray",
	tags = { "mountain" },
}

def_object{
	name = "mountain_flag",
	model = "data/models/mountain_flag.fbx",
	anims = { idle = "data/anims/mountain_flag.fbx" },
	anim_random_start_time = true,
	snap_to = "vertex",
	--flags = F_BLOCK_MOVE,
	tags = { "mountain" },
}

---------------------------------------------------
-- Mansion
---------------------------------------------------

def_object{
	name = "mansion_tile_floor",
	model = "data/models/dungeon_floor_01.fbx",
	model_material = "mansion_tile_floor",
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "mansion" },
}

def_object{
	name = "mansion_wall",
	model = "data/models/mansion_wall.fbx",
	flags = F_HIDE_CLOSEUP,
	tags = { "mansion" },
}

def_object{
	name = "mansion_wall_half",
	model = "data/models/mansion_wall_half.fbx",
	flags = F_HIDE_CLOSEUP,
	tags = { "mansion" },
}

def_object{
	name = "mansion_wall_middle",
	model = "data/models/mansion_wall_middle.fbx",
	flags = F_HIDE_CLOSEUP,
	tags = { "mansion" },
}

def_object{
	name = "mansion_wall_top",
	model = "data/models/mansion_wall_top.fbx",
	flags = F_HIDE_CLOSEUP,
	tags = { "mansion" },
}

def_object{
	name = "mansion_pillar",
	model = "data/models/mansion_pillar.fbx",
	flags = F_IGNORE_HEIGHT + F_PLACE_CORNER_BLOCKER,
	tags = { "mansion" },
	snap_to = "vertex",
}

def_object{
	name = "mansion_pillar_middle",
	model = "data/models/mansion_pillar_middle.fbx",
	flags = F_IGNORE_HEIGHT + F_PLACE_CORNER_BLOCKER,
	tags = { "mansion" },
	snap_to = "vertex",
}

def_object{
	name = "mansion_pillar_top",
	model = "data/models/mansion_pillar_top.fbx",
	flags = F_IGNORE_HEIGHT + F_PLACE_CORNER_BLOCKER,
	tags = { "mansion" },
	snap_to = "vertex",
}

def_object{
	name = "mansion_pillar_big",
	model = "data/models/mansion_pillar_big.fbx",
	flags = F_BLOCK_ALL + F_HARD_BLOCKER,
	tags = { "mansion" },
}

def_object{
	name = "mansion_pillar_big_short",
	model = "data/models/mansion_pillar_big_short.fbx",
	flags = F_BLOCK_ALL + F_HARD_BLOCKER,
	tags = { "mansion" },
}

def_object{
	name = "mansion_door",
	model = "data/models/mansion_door.fbx",
	width = 2,
	height = 1,
	anims = { open = "data/anims/dungeon_door_open.fbx" },
	on_interact = interact_door,
	on_tooltip = tooltip_door,
	door_type = "generic",
	flags = F_BLOCK_ALL + F_INTERACTIVE + F_INTERACT_ACTION,
	fog_tile = { FOG_DOOR_NS, FOG_DOOR_EW, FOG_DOOR_NS, FOG_DOOR_EW },
	collider_size_x = 1.0,
	collider_size_y = 0.15,
	on_game_loaded = door_game_loaded,
	tags = { "mansion" },
}

def_object{
	name = "mansion_door_puzzle",
	model = "data/models/mansion_door.fbx",
	width = 2,
	height = 1,
	tags = { "mansion" },
	snap_to = "edge",
	interaction_type = "directed",
}

def_object{
	name = "mansion_painting_01",
	ui_name = "Painting",
	model = "data/models/mansion_painting_01.fbx",
	tags = { "mansion" },
	snap_to = "edge",
}

def_object{
	name = "mansion_painting_02",
	ui_name = "Painting",
	model = "data/models/mansion_painting_02.fbx",
	tags = { "mansion" },
	snap_to = "edge",
}

def_object{
	name = "mansion_painting_03",
	ui_name = "Painting",
	model = "data/models/mansion_painting_03.fbx",
	tags = { "mansion" },
	snap_to = "edge",
}

def_object{
	name = "mansion_painting_04",
	ui_name = "Painting",
	model = "data/models/mansion_painting_04.fbx",
	tags = { "mansion" },
	snap_to = "edge",
}

def_object{
	name = "mansion_painting_puzzle",
	ui_name = "Painting",
	model = "data/models/mansion_painting_puzzle.fbx",
	tags = { "mansion" },
	snap_to = "edge",
}

def_object{
	name = "mansion_stairs",
	model = "data/models/mansion_stairs.fbx",
	width = 2,
	height = 1,
	platform_model = true,
	footstep_sound = "hard",
	flags = F_SEEN_BY_RAYS,
	tags = { "mansion" },
}

def_object{
	name = "mansion_furniture_chair",
	model = "data/models/mansion_furniture_chair.fbx",
	tags = { "mansion" },
}

def_object{
	name = "mansion_furniture_table",
	model = "data/models/mansion_furniture_table.fbx",
	tags = { "mansion" },
}

def_object{
	name = "brick_wall_decal",
	model = "data/models/brick_wall_decal.fbx",
	tags = { "mansion" },
	snap_to = "edge",
}

def_object{
	name = "mansion_chandelier",
	model = "data/models/mansion_chandelier.fbx",
	width = 2,
	height = 2,
	tags = { "mansion" },
}

def_object{
	name = "destruction_ground_hit",
	particle_system = "destruction_rock_shatter",
	--particle_system = "destruction_ground_hit",
	--particle_auto_destroy = true,

	tags = { "mansion" },
}

def_object{
	name = "destruction_rock_shatter",
	model = "data/models/wood_troll_rock_shatter.fbx",
	anims = {
		shatter = "data/anims/wood_troll_rock_shatter.fbx",
	},
	anim_play_on_init = "shatter",
	particle_system = "destruction_rock_shatter",
	particle_auto_destroy = true,
	-- NOTE: on_game_loaded not implemented - animation will replay after loading a savegame! (this asset is only used in cinematics)
	tags = { "mansion", "effect" },
}

def_object{
	name = "destruction_ceiling_dust",
	particle_system = "destruction_ceiling_dust",
	tags = { "mansion" },
	flags = F_TEMPORARY,
}

def_object{
	name = "destruction_pillar_fall_particles",
	particle_system = "destruction_pillar_fall",
	tags = { "mansion" },
	flags = F_TEMPORARY,
}

def_object{
	name = "mansion_destruction_falling_bricks_01",
	model = "data/models/mansion_destruction_falling_bricks_01.fbx",
	anims = { fall = "data/anims/mansion_destruction_falling_bricks_01.fbx" },
	anim_play_on_init = "fall",
	tags = { "mansion" },
	on_game_loaded = function(obj) sample_anim(obj, "fall", 100.0) end,
}

def_object{
	name = "mansion_chandelier_falling",
	model = "data/models/mansion_chandelier_falling.fbx",
	anims = { fall = "data/anims/mansion_chandelier_falling.fbx" },
	width = 2,
	height = 2,
	tags = { "mansion" },
}

def_object{
	name = "mansion_destruction_falling_pillar_01",
	model = "data/models/mansion_destruction_falling_pillar_01.fbx",
	anims = { spawn = "data/anims/mansion_destruction_falling_pillar_01.fbx" },
	anim_play_on_init = "spawn",
	tags = { "mansion" },
	-- NOTE: on_game_loaded not implemented - animation will replay after loading a savegame! (this asset is only used in cinematics)
}

def_object{
	name = "mansion_pillar_collapsed",
	model = "data/models/mansion_pillar_collapsed.fbx",
	width = 3,
	height = 1,
	flags = F_SEEN_BY_RAYS,
	tags = { "mansion" },
}

def_object{
	name = "mansion_collapsed",
	particle_system = "mansion_collapsed",
	particle_warm_up = 4.0,
	tags = { "mansion" },
}

def_object{
	name = "mansion_gate",
	model = "data/models/mansion_gate.fbx",
	flags = F_SEEN_BY_RAYS,
	tags = { "mansion" },
}

def_object{
	name = "mansion_numbers",
	model = "data/models/mansion_numbers.fbx",
	tags = { "mansion" },
}

---------------------------------------------------
-- Monastery
---------------------------------------------------

def_object{
	name = "monastery_floor",
	model = "data/models/dungeon_floor_01.fbx",
	model_material = "monastery_floor_01",
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "monastery" },
}

def_object{
	name = "monastery_floor2",
	model = "data/models/dungeon_floor_01.fbx",
	model_material = "monastery_floor_02",
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall",
	model = "data/models/monastery_wall_01.fbx",
	flags = F_HIDE_CLOSEUP + F_PLACE_EDGE_BLOCKER,
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall_edge",
	model = "data/models/monastery_wall_edge.fbx",
	tags = { "monastery" },
}

def_object{
	name = "monastery_courtyard",
	model = "data/models/dungeon_floor_01.fbx",
	model_material = "monastery_cobblestone_ground",
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall_outer_corner",
	model = "data/models/monastery_wall_outer_corner.fbx",
	flags = F_BLOCK_ALL + F_HARD_BLOCKER,
	fog_tile = FOG_WALL,
	layer = "wall",
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall_inner_corner",
	model = "data/models/monastery_wall_inner_corner_right.fbx",
	flags = F_BLOCK_ALL + F_HARD_BLOCKER,
	fog_tile = FOG_WALL,
	layer = "wall",
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall_left",
	model = "data/models/monastery_wall_straight_left_01.fbx",
	flags = F_BLOCK_ALL + F_HARD_BLOCKER,
	fog_tile = FOG_WALL,
	layer = "wall",
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall_right",
	model = "data/models/monastery_wall_straight_right_01.fbx",
	flags = F_BLOCK_ALL + F_HARD_BLOCKER,
	fog_tile = FOG_WALL,
	layer = "wall",
	tags = { "monastery" },
}

def_object{
	name = "monastery_corner_pillar",
	model = "data/models/monastery_corner_pillar.fbx",
	flags = F_PLACE_CORNER_BLOCKER,
	tags = { "monastery" },
	snap_to = "vertex",
}

def_object{
	name = "monastery_wall_high",
	model = "data/models/monastery_wall_high.fbx",
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall_high_door_cut",
	model = "data/models/monastery_wall_high_door_cut.fbx",
	width = 2,
	height = 1,
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall_high_filler",
	model = "data/models/monastery_wall_high_filler.fbx",
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall_high_ceiling",
	model = "data/models/monastery_wall_high_ceiling.fbx",
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall_high_1x1_pillar",
	model = "data/models/monastery_wall_high_1x1_pillar.fbx",
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall_high_outer_corner",
	model = "data/models/monastery_wall_high_outer_corner.fbx",
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall_high_inner_corner",
	model = "data/models/monastery_wall_high_inner_corner.fbx",
	tags = { "monastery" },
}

def_object{
	name = "monastery_ceiling",
	model = "data/models/monastery_roof.fbx",
	flags = F_BLOCK_ALL,
	fog_tile = FOG_WALL,
	layer = "ceiling",
	tags = { "monastery" },
}

def_object{
	name = "monastery_ceiling_small",
	model = "data/models/monastery_roof_small.fbx",
	flags = F_BLOCK_ALL,
	fog_tile = FOG_WALL,
	layer = "ceiling",
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall_alcove",
	model = "data/models/monastery_wall_alcove.fbx",
	fog_tile = FOG_WALL,
	flags = F_BLOCK_ALL + F_SEEN_BY_RAYS + F_HARD_BLOCKER,
	tags = { "monastery" },
}

def_object{
	name = "monastery_window",
	model = "data/models/monastery_window.fbx",
	particle_system = "monastery_window",
	flags = F_BLOCK_ALL,
	light_type = "point",
	light_position = vec(0.0, 2.5, 2.3),
	light_color = vec(0.25, 0.75, 1.0),
	light_intensity = 25.0,
	light_range = 7.0,
	fog_tile = FOG_WALL,
	tags = { "monastery" },
}

def_object{
	name = "monastery_window_small",
	model = "data/models/monastery_window_small.fbx",
	particle_system = "monastery_window",
	flags = F_BLOCK_ALL,
	light_type = "point",
	light_position = vec(0.0, 2.5, 2.3),
	light_color = vec(0.25, 0.75, 1.0),
	light_intensity = 25.0,
	light_range = 7.0,
	fog_tile = FOG_WALL,
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall_arch",
	model = "data/models/monastery_wall_arch.fbx",
	width = 2,
	height = 1,
	tags = { "monastery" },
}

def_object{
	name = "monastery_entrance",
	model = "data/models/monastery_entrance.fbx",
	anims = { idle = "data/anims/monastery_entrance_idle.fbx" },
	anim_random_start_time = true,
	width = 2,
	height = 1,
	flags = F_BLOCK_AI + F_BLOCK_SUMMON,
	tags = { "monastery", "exit" },
}

def_object{
	name = "monastery_bed_01",
	model = "data/models/monastery_bed_01.fbx",
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS,
	tags = { "monastery" },
}

def_object{
	name = "monastery_bed_02",
	model = "data/models/monastery_bed_02.fbx",
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS,
	tags = { "monastery" },
}

def_object{
	name = "monastery_dining_table_01",
	model = "data/models/monastery_dining_table_01.fbx",
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS + F_HARD_BLOCKER,
	tags = { "monastery" },
}

def_object{
	name = "monastery_dining_table_02",
	model = "data/models/monastery_dining_table_02.fbx",
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS + F_HARD_BLOCKER,
	tags = { "monastery" },
}

def_object{
	name = "monastery_carpet_01",
	model = "data/models/monastery_carpet_01.fbx",
	tags = { "monastery" },
}

def_object{
	name = "monastery_bookshelf_straight",
	model = "data/models/monastery_bookshelf_straight.fbx",
	flags = F_BLOCK_ALL + F_HARD_BLOCKER,
	tags = { "monastery" },
}

def_object{
	name = "monastery_bookshelf_90",
	model = "data/models/monastery_bookshelf_90.fbx",
	flags = F_BLOCK_ALL + F_HARD_BLOCKER,
	tags = { "monastery" },
}

def_object{
	name = "monastery_bookshelf_t",
	model = "data/models/monastery_bookshelf_t.fbx",
	flags = F_BLOCK_ALL + F_HARD_BLOCKER,
	tags = { "monastery" },
}

def_object{
	name = "monastery_bookshelf_x",
	model = "data/models/monastery_bookshelf_x.fbx",
	flags = F_BLOCK_ALL + F_HARD_BLOCKER,
	tags = { "monastery" },
}

def_object{
	name = "monastery_bookshelf_half",
	ui_name = "Bookshelf",
	model = "data/models/dungeon_bookshelf.fbx",
	model_position = vec(0.0, 0.0, -0.75),
	snap_to = "edge",
	tags = { "dungeon" },
}

def_object{
	name = "monastery_bookshelf_interactive",
	ui_name = "Bookshelf",
	model = "data/models/dungeon_bookshelf.fbx",
	model_position = vec(0.0, 0.0, -0.75 - 0.075),
	light_type = "point",
	light_position = vec(0.0, 2.0, 0.0),
	light_color = 0x00ff55ff,
	light_intensity = 20.0,
	light_range = 6.0,
	particle_system = "bookshelf_clue",
	particle_position = vec(0.0, 0.0, -0.5),
	snap_to = "edge",
	flags = F_INTERACTIVE + F_SEEN_BY_RAYS,
	tags = { "dungeon" },
}

def_object{
	name = "monastery_bookshelf_animated",
	ui_name = "Bookshelf",
	model = "data/models/monastery_bookshelf_animated.fbx",
	anims = {
		rumble = "data/anims/monastery_bookshelf_animated_rumble.fbx",
	},
	model_position = vec(0.0, 0.0, -0.75 - 0.075),
	snap_to = "edge",
	tags = { "dungeon" },
}

def_object{
	name = "monastery_desk",
	model = "data/models/monastery_desk.fbx",
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS,
	tags = { "monastery" },
}

def_object{
	name = "monastery_chair",
	model = "data/models/monastery_desk.fbx",
	tags = { "monastery" },
}

def_object{
	name = "monastery_fog",
	particle_system = "monastery_fog",
	particle_warm_up = 2.0,
	tags = { "monastery", "env" },
}

def_object{
	name = "monastery_ceiling_lamp",
	model = "data/models/fire_bowl_hanging.fbx",
	model_position = vec(0.0, 5.5, 0.0),
	anims = { idle = "data/anims/fire_bowl_hanging.fbx" },
	anim_random_start_time = true,
	particle_system = "monastery_hanging_lamp",
	particle_parent = "light_null",
	light_type = "point",
	light_position = vec(0.0, 0.5, 0),		
	light_parent = "light_null",
	light_color = vec(0.08, 0.7, 0.78),
	light_intensity = 30.0,	
	light_range = 16.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	light_flicker_frequency = 1.0,	
	light_flicker_amplitude = 0.6,
	tags = { "monastery", "light" },
}

def_object{
	name = "monastery_corpse_01",
	ui_name = "Corpse",
	model = "data/models/monastery_corpse_01.fbx",
	interaction_type = "move_to",
	flags = F_INTERACTIVE,
	tags = { "monastery" },
}

def_object{
	name = "monastery_fireplace",
	model = "data/models/monastery_fireplace.fbx",
	particle_system = "monastery_hanging_lamp",
	particle_position = vec(0.0, 0.4, -0.1),
	light_type = "point",
	light_position = vec(0.0, 1.25, -0.15),		
	light_color = vec(0.08, 0.7, 0.85),
	light_intensity = 15.0,	
	light_range = 12.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 64,
	light_flicker_frequency = 2.0,	
	light_flicker_amplitude = 0.5,
	flags = F_BLOCK_ALL + F_LOCKED + F_SEEN_BY_RAYS,
	tags = { "monastery" },
}

def_object{
	name = "monastery_secret_door",
	model = "data/models/monastery_secret_door.fbx",
	on_interact = interact_door,
	door_type = "secret_door",
	flags = F_BLOCK_ALL + F_SEEN_BY_RAYS + F_INTERACTIVE + F_SECRET,
	fog_tile = { FOG_SECRET_DOOR_NS, FOG_SECRET_DOOR_EW, FOG_SECRET_DOOR_NS, FOG_SECRET_DOOR_EW },
	tags = { "monastery" },
}

def_object{
	name = "monastery_post_flags",
	model = "data/models/monastery_post_flags.fbx",
	anims = { idle = "data/anims/monastery_post_flags_idle.fbx" },
	anim_random_start_time = true,
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS,
	tags = { "monastery" },
}

def_object{
	name = "monastery_post",
	model = "data/models/monastery_post.fbx",
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS,
	tags = { "monastery" },
}

def_object{
	name = "monastery_ice_fire",
	model = "data/models/monastery_ice_fire.fbx",
	particle_system = "monastery_ice_fire",
	particle_position = vec(0.0, 0.4, 0.0),
	light_type = "point",
	light_position = vec(0.0, 5.0, 0.0),		
	light_color = vec(0.08, 0.6, 0.9),
	light_intensity = 13.0,	
	light_range = 14.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	-- light_flicker_frequency = 1,	
	-- light_flicker_amplitude = 0.3,
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS,
	tags = { "monastery" },
}

def_object{
	name = "monastery_frozen_monk_01",
	model = "data/models/monastery_frozen_monk_01.fbx",
	particle_system = "monastery_ice_fire",
	particle_position = vec(0.0, 0.0, 0.0),
	light_type = "point",
	light_position = vec(0.0, 5.0, 0.0),		
	light_color = vec(0.08, 0.6, 0.9),
	light_intensity = 10.0,	
	light_range = 15.0,
	light_flicker_frequency = 1,	
	light_flicker_amplitude = 0.3,
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS + F_INTERACTIVE,
	tags = { "monastery" },
}

def_object{
	name = "monastery_icicles_destroyed",
	model = "data/models/monastery_icicles_destroyed.fbx",
	tags = { "monastery" },
}

def_object{
	name = "monastery_cage",
	width = 2,
	height = 2,
	model = "data/models/monastery_cage.fbx",
	flags = F_BLOCK_ALL + F_HARD_BLOCKER,
	tags = { "monastery" },
}

def_object{
	name = "monastery_wine_barrel",
	model = "data/models/monastery_wine_barrel.fbx",
	flags = F_BLOCK_ALL,
	tags = { "monastery" },
}

def_object{
	name = "monastery_pillar",
	model = "data/models/monastery_pillar_01.fbx",
	flags = F_IGNORE_HEIGHT + F_PLACE_CORNER_BLOCKER,
	tags = { "monastery" },
	snap_to = "vertex",
}

def_object{
	name = "monastery_pillar_corner",
	model = "data/models/monastery_pillar_01.fbx",
	tags = { "monastery" },
	flags = F_IGNORE_HEIGHT + F_PLACE_CORNER_BLOCKER,
	snap_to = "vertex",
}

def_object{
	name = "monastery_pillar_candle",
	model = "data/models/monastery_pillar_candle.fbx",
	particle_system = "monastery_pillar_candle",
	light_type = "point",
	light_position = vec(0.0, 3.5, 1.5),
	light_color = vec(1.0, 0.6, 0.35),
	light_intensity = 12.0,
	light_range = 12.0,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.25,
	flags = F_BLOCK_ALL,
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall_cloth",
	model = "data/models/monastery_wall_cloth.fbx",
	tags = { "monastery" },
}

def_object{
	name = "monastery_letters",
	model = "data/models/monastery_letters.fbx",
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall_candle",
	model = "data/models/monastery_wall_candle.fbx",
	particle_system = "monastery_wall_candle",
	light_type = "point",
	light_position = vec(0.0, 2.7, 0.5),
	light_color = vec(1.0, 0.6, 0.35),
	light_intensity = 12.0,
	light_range = 12.0,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.25,
	tags = { "monastery" },
}

def_object{
	name = "monastery_table_candle",
	model = "data/models/monastery_table_candle.fbx",
	particle_system = "monastery_wall_candle",
	particle_position = vec(0.0, -0.7, -1.5),
	light_type = "point",
	light_position = vec(0.0, 2.3, 0.0),
	light_color = vec(1.0, 0.6, 0.35),
	light_intensity = 12.0,
	light_range = 10.0,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.25,
	tags = { "monastery" },
}

def_object{
	name = "monastery_abbots_table",
	model = "data/models/monastery_abbots_table.fbx",
	width = 3,
	height = 2,
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT + F_SEEN_BY_RAYS + F_HARD_BLOCKER,
	tags = { "monastery" },
}

def_object{
	name = "monastery_glass_window",
	model = "data/models/monastery_glass_window.fbx",
	light_type = "point",
	light_position = vec(0.0, 7.0, -0.3),
	light_color = vec(1.0, 0.6, 0.35),
	light_intensity = 14.0,
	light_range = 14.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 64,
	tags = { "monastery" },
}

def_object{
	name = "monastery_window_big",
	model = "data/models/monastery_window_big.fbx",
	model_position = vec(-1.5, 0.0, -2.85),
	light_type = "point",
	light_position = vec(-1.5, 7.0, 0.0),
	light_color = vec(0.25, 0.75, 1.0),
	light_intensity = 14.0,
	light_range = 16.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 64,
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall_arch",
	model = "data/models/monastery_wall_arch.fbx",
	model_position = vec(0.0, 0.0, -3.0),
	tags = { "monastery" },
}

def_object{
	name = "monastery_abbots_book", --Used in Escape1
	model = "data/models/monastery_abbots_book.fbx",
	-- particle_system = "spellbook",
	-- particle_position = vec(0.0, 2.0, 0.5),
	-- flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS + F_INTERACTIVE,
	-- light_type = "spot",
	-- light_position = vec(0.0, 4.0, 0.0),
	-- light_rotation = vec(math.pi * 0.5, 0.0, 0.0),
	-- light_color = vec(0.0, 0.75, 1.0),
	-- light_intensity = 20.0,
	-- light_range = 10.0,
	-- light_cast_shadow = true,
	-- light_blur_shadow = true,
	-- light_shadow_map_size = 128,
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall_cloth",
	model = "data/models/monastery_wall_cloth.fbx",
	model_position = vec(1.5, 0.0, 0.0),
	tags = { "monastery" },
}

def_object{
	name = "monastery_annal",
	model = "data/models/monastery_abbots_book.fbx",
	model_position = vec(0.0, 0.2, 0.6),
	model_rotation = vec(0.0, math.pi, 0.0),
	model_scale = 0.75,
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS + F_INTERACTIVE,
	light_type = "spot",
	light_position = vec(0.0, 3.0, 0.0),
	light_rotation = vec(math.pi * 0.5, 0.0, 0.0),
	light_color = vec(1.0, 0.8, 0.6),
	light_intensity = 20.0,
	light_angle = 40,
	light_range = 3.5,
	tags = { "monastery" },
}

def_object{
	name = "monastery_lecter",
	model = "data/models/monastery_lecter.fbx",
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT,
	tags = { "monastery" },
}

def_object{
	name = "monastery_librarians_book",
	model = "data/models/monastery_librarians_book.fbx",
	light_type = "spot",
	light_position = vec(0.0, 3.0, 0.0),
	light_rotation = vec(math.pi * 0.5, 0.0, 0.0),
	light_color = vec(1.0, 0.8, 0.6),
	light_intensity = 20.0,
	light_angle = 40,
	light_range = 3.5,
	flags = F_INTERACTIVE,
	tags = { "monastery" },
}

def_object{
	name = "monastery_stairs_up_south",
	model = "data/models/monastery_stairs_up.fbx",
	platform_model = true,
	footstep_sound = "hard",
	width = 2,
	height = 2,
	flags = F_BLOCK_AI + F_BLOCK_SUMMON + F_SEEN_BY_RAYS,
	tags = { "monastery", "exit" },
}

def_object{
	name = "monastery_stairs_down_south",
	model = "data/models/monastery_stairs_down.fbx",
	model_position = vec(0.0, 0.0, -3.0),
	platform_model = true,
	footstep_sound = "hard",
	width = 2,
	height = 2,
	flags = F_BLOCK_AI + F_BLOCK_SUMMON + F_SEEN_BY_RAYS,
	tags = { "monastery", "exit" },
}

def_object{
	name = "monastery_meditation_chamber_platform",
	model = "data/models/monastery_meditation_chamber_platform.fbx",
	platform_model = true,
	footstep_sound = "hard",
	width = 3,
	height = 4,
	tags = { "monastery" },
	flags = F_SEEN_BY_RAYS,
}

def_object{
	name = "monastery_meditation_chamber_bell",
	model = "data/models/monastery_meditation_chamber_bell.fbx",
	width = 3,
	height = 1,
	flags = F_BLOCK_ALL,
	tags = { "monastery" },
}

def_object{
	name = "monastery_distillery",
	model = "data/models/monastery_distillery.fbx",
	width = 2,
	height = 1,
	flags = F_BLOCK_ALL,
	tags = { "monastery" },
}

def_object{
	name = "monastery_pit_grated",
	model = "data/models/monastery_pit_grated.fbx",
	flags = F_SEEN_BY_RAYS,
	tags = { "monastery" },
}

def_object{
	name = "monastery_wall_writing",
	model = "data/models/monastery_wall_writing.fbx",
	interaction_type = "move_to",
	flags = F_INTERACTIVE + F_SEEN_BY_RAYS + F_NO_REDIRECT,
	tags = { "monastery" },
}

def_object{
	name = "monastery_orrery", --Used in escape1. If used elsewhere, the do another copy
	model = "data/models/monastery_orrery.fbx",
	anims = { idle = "data/anims/monastery_orrery.fbx" },
	anim_random_start_time = true,
	-- width = 4,
	-- height = 4,
	--particle_system = "monastery_orrery",
	-- light_type = "point",
	-- light_position = vec(0.0, 6.2, 0.0),
	-- light_color = vec(1.0, 1.0, 1.0),
	-- light_intensity = 10.0,
	-- light_range = 16.0,
	-- light_cast_shadow = true,
	-- light_blur_shadow = true,
	-- light_shadow_map_size = 256,
	flags = F_BLOCK_ALL + F_SEEN_BY_RAYS + F_HARD_BLOCKER,
	tags = { "monastery" },
}

def_object{
	name = "monastery_monk_robe",
	model = "data/models/monastery_monk_robe.fbx",
	anims = { idle = "data/anims/monastery_monk_robe.fbx" },
	anim_random_start_time = true,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	tags = { "monastery" },
}

def_object{
	name = "monastery_abbots_pentagram",
	model = "data/models/monastery_abbots_pentagram.fbx",
	width = 3,
	height = 3,
	flags = 0,
	tags = { "monastery" },
}

def_object{
	name = "monastery_cupboard_01",
	model = "data/models/monastery_cupboard_01.fbx",
	flags = F_BLOCK_ALL + F_SEEN_BY_RAYS,
	tags = { "monastery" },
}

def_object{
	name = "monastery_cupboard_02",
	model = "data/models/monastery_cupboard_02.fbx",
	flags = F_BLOCK_ALL + F_SEEN_BY_RAYS,
	tags = { "monastery" },
}

def_object{
	name = "monastery_kitchen_table",
	model = "data/models/monastery_kitchen_table.fbx",
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT + F_SEEN_BY_RAYS + F_HARD_BLOCKER,
	tags = { "monastery" },
}

def_object{
	name = "monastery_stove",
	model = "data/models/monastery_stove.fbx",
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT + F_SEEN_BY_RAYS + F_HARD_BLOCKER,
	tags = { "monastery" },
}

def_object{
	name = "monastery_door_seal",
	model = "data/models/monastery_door_seal.fbx",
	anims = { idle = "data/anims/monastery_door_seal.fbx" },
	model_position = vec(0.0, 0.0, 2.7),
	anim_random_start_time = true,
	particle_system = "monastery_door_seal",
	light_type = "point",
	light_position = vec(0.0, 6.2, 0.0),
	light_color = vec(0.5, 0.7, 1.0),
	light_intensity = 10.0,
	light_range = 16.0,
	flags = 0,
	tags = { "monastery" },
}

def_object{
	name = "monastery_arch",
	model = "data/models/monastery_arch.fbx",
	width = 2,
	height = 1,
	tags = { "monastery" },
}

def_object{
	name = "monastery_courtyard_snow_pile_01",
	model = "data/models/monastery_courtyard_snow_pile_01.fbx",
	tags = { "monastery", "mountain" },
}

def_object{
	name = "monastery_courtyard_snow_pile_02",
	model = "data/models/monastery_courtyard_snow_pile_02.fbx",
	tags = { "monastery", "mountain" },
}

def_object{
	name = "monastery_courtyard_fountain",
	model = "data/models/monastery_courtyard_fountain.fbx",
	width = 4,
	height = 4,
	flags = F_BLOCK_MOVE,
	tags = { "monastery" },
}

def_object{
	name = "monastery_courtyard_tree",
	model = "data/models/monastery_courtyard_tree.fbx",
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	tags = { "monastery", "tree" },
}

def_object{
	name = "monastery_courtyard_hedge",
	model = "data/models/monastery_courtyard_hedge.fbx",
	flags = F_BLOCK_ALL + F_SEEN_BY_RAYS,
	tags = { "monastery" },
}

def_object{
	name = "monastery_courtyard_gate",
	model = "data/models/monastery_courtyard_gate.fbx",
	model_rotation = vec(0, math.pi, 0),
	width = 2,
	height = 1,
	flags = F_BLOCK_AI + F_BLOCK_SUMMON,
	tags = { "monastery", "exit" },
}

def_object{
	name = "monastery_courtyard_gate_tall",
	model = "data/models/monastery_courtyard_gate_tall.fbx",
	model_rotation = vec(0, math.pi, 0),
	width = 2,
	height = 1,
	flags = F_BLOCK_AI + F_BLOCK_SUMMON,
	tags = { "monastery", "exit" },
}

def_object{
	name = "monastery_courtyard_corner",
	model = "data/models/monastery_courtyard_corner.fbx",
	width = 4,
	height = 1,
	fog_tile = FOG_SOFT,
	tags = { "monastery" },
}

def_object{
	name = "monastery_courtyard_corner_tall",
	model = "data/models/monastery_courtyard_corner_tall.fbx",
	width = 4,
	height = 1,
	fog_tile = FOG_SOFT,
	tags = { "monastery" },
}

def_object{
	name = "monastery_courtyard_straight",
	model = "data/models/monastery_courtyard_straight.fbx",
	width = 4,
	height = 1,
	fog_tile = FOG_SOFT,
	tags = { "monastery" },
}

def_object{
	name = "monastery_courtyard_straight_tall",
	model = "data/models/monastery_courtyard_straight_tall.fbx",
	width = 4,
	height = 1,
	fog_tile = FOG_SOFT,
	tags = { "monastery" },
}

---------------------------------------------------
-- Swamp
---------------------------------------------------

def_object{
	name = "swamp_skydome",
	model = "data/models/skydome_forest.fbx",
	model_material = "skydome_swamp",
	model_scale = 2.0,
	receive_shadows = false,	-- this line is super important for efficient dirlight shadows!
	tags = { "swamp" },
}

def_object{
	name = "swamp_point_light",
	light_type = "point",
	light_color = vec(1.0, 1.0, 0.8),
	light_intensity = 15.0,
	light_range = 20.0,
	tags = { "swamp", "light" },
}

def_object{
	name = "swamp_ground",
	model = "data/models/mountain_ground.fbx",
	model_material = "swamp_ground",
	model_render_mode = "heightmap",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT + F_SEEN_BY_RAYS,
	footstep_sound = "soft",
	layer = "floor",
	tags = { "swamp" },
}

def_object{
	name = "swamp_grass",
	model = "data/models/grass_lods.fbx",
	model_lod_distances = { 0.0, 28.0, 40.0 },
	model_material = "swamp_grass_blades",
	model_cast_shadow = false,
	model_render_mode = "heightmap",
	flags = F_IGNORE_HEIGHT,
	layer = "grass",
	tags = { "swamp", "plant" },
}

def_object{
	name = "swamp_grass_sparse",
	model = "data/models/grass_swamp_sparse_lods.fbx",
	model_lod_distances = { 0.0, 28.0, 40 },
	model_cast_shadow = false,
	model_render_mode = "heightmap",
	model_material = "swamp_grass_blades",
	flags = F_IGNORE_HEIGHT,
	layer = "grass",
	tags = { "swamp", "plant" },
}

def_object{
	name = "swamp_grass_sparse_no_height",
	model = "data/models/grass_sparse_long_lods.fbx",
	model_lod_distances = { 0.0, 28.0, 40 },
	model_cast_shadow = false,
	model_material = "swamp_grass_blades_no_height",
	flags = F_IGNORE_HEIGHT + F_HIT_BOUNDING_BOX,
	layer = "grass",
	tags = { "swamp", "plant" },
}

def_object{
	name = "swamp_plants",
	model = "data/models/swamp_plants_01.fbx",
	layer = "plant",
	tags = { "swamp", "plant" },
}

def_object{
	name = "swamp_thicket",
	model = "data/models/swamp_thicket.fbx",
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT,
	tags = { "plant", "swamp" },
}

def_object{
	name = "swamp_dead_tree",
	model = "data/models/swamp_dead_tree.fbx",
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	tags = { "swamp", "tree" },
	layer = "tree",
}

def_object{
	name = "swamp_fog",
	particle_system = "swamp_fog",
	particle_warm_up = 2.0,
	particle_follow_camera = true,
	tags = { "swamp", "env" },
}

def_object{
	name = "swamp_edge_fog",
	particle_system = "swamp_edge_fog",
	particle_warm_up = 2.0,
	tags = { "swamp", "env" },
}

def_object{
	name = "swamp_cave_entrance",
	model = "data/models/swamp_cave_entrance.fbx",
	light_type = "point",
	light_position = vec(0.0, 5.1, -3.2),
	light_color = vec(1.0, 0.65, 0.5),
	light_intensity = 15,
	light_range = 7,
	flags = F_BLOCK_AI + F_BLOCK_SUMMON,
	tags = { "swamp", "exit" },
}

def_object{
	name = "swamp_wall",
	model = "data/models/swamp_wall.fbx",
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "swamp" },
}

def_object{
	name = "swamp_wall2",
	model = "data/models/swamp_wall2.fbx",
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "swamp" },
}

def_object{
	name = "swamp_wall_filler",
	model = "data/models/swamp_filler.fbx",
	model_position = vec(0.0, 0.0, 1.5),
	flags = F_HIDE_CLOSEUP,
	tags = { "swamp" },
}

def_object{
	name = "swamp_wall_filler2",
	model = "data/models/swamp_filler2.fbx",
	model_position = vec(0.0, 0.0, 1.5),
	flags = F_HIDE_CLOSEUP,
	tags = { "swamp" },
}

def_object{
	name = "swamp_wall_2x1",
	width = 2,
	height = 1,
	model = "data/models/swamp_wall_2x1.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "swamp" },
}

def_object{
	name = "swamp_wall_2x2",
	width = 2,
	height = 2,
	model = "data/models/swamp_wall_2x2.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "swamp" },
}

def_object{
	name = "swamp_wall_2x2_margin",
	width = 2,
	height = 2,
	model = "data/models/swamp_wall_2x2_margin.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "swamp" },
}

def_object{
	name = "swamp_stones_big",
	model = "data/models/sanctuary_stones_big_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	model_material = "swamp_rock_tile",
	width = 2,
	height = 2,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	tags = { "swamp", "rock" },
}

def_object{
	name = "swamp_stones_01",
	model = "data/models/sanctuary_stones_01_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	model_material = "swamp_rock_tile",
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "swamp", "rock" },
}

def_object{
	name = "swamp_stones_02",
	model = "data/models/sanctuary_stones_02_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	model_material = "swamp_rock_tile",
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "swamp", "rock" },
}

def_object{
	name = "swamp_stones_rubble",
	model = "data/models/sanctuary_stones_rubble.fbx",
	model_material = "swamp_rock_tile",
	tags = { "swamp", "rock" },
}

def_object{
	name = "swamp_mushrooms_01",
	model = "data/models/sanctuary_mushrooms_01_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	model_material = "swamp_mushroom",
	model_scale = 0.5,
	tags = { "swamp" },
}

def_object{
	name = "swamp_mushrooms_02",
	model = "data/models/swamp_small_mushrooms.fbx",
	model_material = "swamp_mushroom",
	tags = { "swamp" },
}

def_object{
	name = "swamp_mushrooms_yellow",
	model = "data/models/swamp_small_mushrooms.fbx",
	model_material = "swamp_mushroom_yellow",
	tags = { "swamp" },
}

def_object{
	name = "swamp_mushrooms_red",
	model = "data/models/swamp_small_mushrooms.fbx",
	model_material = "swamp_mushroom_red",
	tags = { "swamp" },
}

def_object{
	name = "darkness_wart_01",
	model = "data/models/darkness_wart_01.fbx",
	anims = { idle = "data/anims/darkness_wart_01.fbx" },
	anim_random_start_time = true,
	tags = { "plant" },
}

def_object{
	name = "darkness_wart_effect",
	particle_system = "darkness_wart",
	tags = { "plant" },
}

def_object{
	name = "tombstone_01",
	model = "data/models/tombstone_01.fbx",
	tags = { "swamp" },
}

def_object{
	name = "tombstone_02",
	model = "data/models/tombstone_02.fbx",
	tags = { "swamp" },
}

def_object{
	name = "tombstone_03",
	model = "data/models/tombstone_03.fbx",
	tags = { "swamp" },
}

---------------------------------------------------
-- Arken Temple
---------------------------------------------------

def_object{
	name = "arken_temple_ground_tile",
	model = "data/models/arken_temple_ground_tile.fbx",
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "arken" },
}

def_object{
	name = "arken_temple_inside_ground",
	model = "data/models/forest_ground.fbx",
	model_material = "arken_temple_inside_ground",
	model_render_mode = "heightmap",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT + F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "arken" },
}

def_object{
	name = "arken_temple_special_floor",
	model = "data/models/dungeon_floor_01.fbx",
	model_material = "arken_temple_special_floor",
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "arken" },
}

def_object{
	name = "arken_temple_inside_tile_floor",
	model = "data/models/dungeon_floor_01.fbx",
	model_material = "arken_temple_tile",
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "arken" },
}

def_object{
	name = "arken_temple_inside_tile_floor_no_floor_tag",
	model = "data/models/dungeon_floor_01.fbx",
	model_material = "arken_temple_tile",
	tags = { "arken" },
}

def_object{
	name = "arken_temple_stairs_2x",
	model = "data/models/arken_temple_stairs_2x.fbx",
	platform_model = true,
	footstep_sound = "hard",
	width = 2,
	height = 3,
	flags = F_SEEN_BY_RAYS,
	tags = { "arken" },
}

def_object{
	name = "arken_temple_stairs_3x",
	model = "data/models/arken_temple_stairs_3x.fbx",
	platform_model = true,
	footstep_sound = "hard",
	width = 3,
	height = 3,
	flags = F_SEEN_BY_RAYS,
	tags = { "arken" },
}

def_object{
	name = "arken_temple_bridge",
	model = "data/models/arken_temple_bridge.fbx",
	platform_model = true,
	footstep_sound = "hard",
	width = 2,
	height = 3,
	flags = F_SEEN_BY_RAYS,
	tags = { "arken", "ruins" },
}

def_object{
	name = "arken_temple_blocker",
	model = "data/models/arken_temple_blocker.fbx",
	flags = F_BLOCK_ALL,
	tags = { "arken" },
}

def_object{
	name = "arken_temple_pedestal",
	model = "data/models/arken_temple_pedestal.fbx",
	flags = F_BLOCK_ALL,
	tags = { "arken" },
}

def_object{
	name = "arken_temple_tetra_pedestal",
	model = "data/models/arken_temple_tetra_pedestal.fbx",
	flags = F_BLOCK_ALL,
	tags = { "arken" },
}

def_object{
	name = "arken_temple_pedestal_wave",
	model = "data/models/arken_temple_pedestal_wave.fbx",
	tags = { "arken" },
}

def_object{
	name = "arken_temple_pedestal_rose",
	model = "data/models/arken_temple_pedestal_rose.fbx",
	tags = { "arken" },
}

def_object{
	name = "arken_temple_pedestal_cloud",
	model = "data/models/arken_temple_pedestal_cloud.fbx",
	tags = { "arken" },
}

def_object{
	name = "arken_temple_pedestal_leaf",
	model = "data/models/arken_temple_pedestal_leaf.fbx",
	tags = { "arken" },
}

def_object{
	name = "arken_temple_arch",
	model = "data/models/arken_temple_arch.fbx",
	width = 2,
	height = 1,
	tags = { "arken" },
}

def_object{
	name = "arken_temple_pillar_tall",
	model = "data/models/arken_temple_pillar_tall.fbx",
	flags = F_BLOCK_ALL,
	tags = { "arken" },
}

def_object{
	name = "arken_temple_pillar_short",
	model = "data/models/arken_temple_pillar_short.fbx",
	flags = F_BLOCK_ALL,
	tags = { "arken" },
}

def_object{
	name = "arken_temple",
	model = "data/models/arken_temple.fbx",
	flags = F_BLOCK_ALL,
	tags = { "arken" },
}

def_object{
	name = "arken_temple_entrance_effect",
	model = "data/models/arken_temple_entrance_effect.fbx",
	light_type = "point",
	light_position = vec(0.0, 1.5, 5.0),
	light_color = vec(0.1, 0.3, 0.5),
	light_intensity = 20.0,
	light_range = 12.0,
	light_flicker_frequency = 0.5,
	light_flicker_amplitude = 1.0,
	tags = { "arken" },
}

def_object{
	name = "arken_temple_rail",
	model = "data/models/arken_temple_rail.fbx",
	flags = F_BLOCK_MOVE,
	tags = { "arken" },
}

def_object{
	name = "arken_temple_wall",
	model = "data/models/arken_temple_wall.fbx",
	flags = F_HIDE_CLOSEUP + F_PLACE_EDGE_BLOCKER,
	tags = { "arken" },
}

def_object{
	name = "arken_temple_wall_arch",
	model = "data/models/arken_temple_wall_arch.fbx",
	tags = { "arken" },
}

def_object{
	name = "arken_ruins_wall_center_01",
	model = "data/models/forest_ruins_wall_center_01.fbx",
	model_material = "arken_temple_wall",
	heightmap_sample_radius = 1.0,
	collider_size_y = 0.3,
	tags = { "arken" },
	snap_to = "edge",
	flags = F_PLACE_EDGE_BLOCKER,
}

def_object{
	name = "arken_ruins_wall_center_02",
	model = "data/models/forest_ruins_wall_center_02.fbx",
	model_material = "arken_temple_wall",
	heightmap_sample_radius = 1.0,
	tags = { "arken" },
	snap_to = "edge",
	flags = F_PLACE_EDGE_BLOCKER,
}

def_object{
	name = "arken_ruins_wall_center_03",
	model = "data/models/forest_ruins_wall_center_03.fbx",
	model_material = "arken_temple_wall",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT, 
	tags = { "arken" },
}

def_object{
	name = "arken_ruins_wall_right",
	model = "data/models/forest_ruins_wall_right.fbx",
	model_material = "arken_temple_wall",
	heightmap_sample_radius = 1.0,
	flags = F_PLACE_EDGE_BLOCKER,
	tags = { "arken" },
	snap_to = "edge",
}

def_object{
	name = "arken_ruins_wall_left",
	model = "data/models/forest_ruins_wall_left.fbx",
	model_material = "arken_temple_wall",
	heightmap_sample_radius = 1.0,
	flags = F_PLACE_EDGE_BLOCKER,
	tags = { "arken" },
	snap_to = "edge",
}

def_object{
	name = "arken_ruins_wall_rubble",
	model = "data/models/forest_ruins_wall_rubble.fbx",
	model_material = "arken_temple_wall",
	heightmap_sample_radius = 1.0,
	tags = { "arken" },
}

def_object{
	name = "crystallite_cracks",
	model = "data/models/zero_seed_cracks.fbx",
	model_material = "crystallite_cracks",
	flags = F_IGNORE_HEIGHT,
	model_cast_shadow = false,
	--layer = "floor",
	tags = { "arken" },
}

def_object{
	name = "arken_temple_floor_01",
	model = "data/models/forest_ruins_floor_01.fbx",
	model_material = "arken_temple_wall",
	flags = F_SEEN_BY_RAYS,
	platform_model = true,
	footstep_sound = "hard",
	tags = { "arken" },
}

def_object{
	name = "arken_temple_floor_02",
	model = "data/models/forest_ruins_floor_02.fbx",
	model_material = "arken_temple_wall",
	flags = F_SEEN_BY_RAYS,
	platform_model = true,
	footstep_sound = "hard",
	tags = { "arken" },
}

def_object{
	name = "arken_temple_floor_03",
	model = "data/models/forest_ruins_floor_03.fbx",
	model_material = "arken_temple_wall",
	flags = F_SEEN_BY_RAYS,
	platform_model = true,
	footstep_sound = "hard",
	tags = { "arken" },
}

def_object{
	name = "arken_temple_floor_04",
	model = "data/models/forest_ruins_floor_04.fbx",
	model_material = "arken_temple_wall",
	flags = F_SEEN_BY_RAYS,
	platform_model = true,
	footstep_sound = "hard",
	tags = { "arken" },
}

def_object{
	name = "sanctuary_waterfall",
	particle_system = "sanctuary_waterfall",
	particle_warm_up = 2.0,
	flags = F_THUMBNAIL_NEVER,
	tags = { "arken" },
}

def_object{
	name = "arken_temple_fire",
	particle_system = "zero_seed_fire",
	light_type = "point",
	light_position = vec(0.0, 5, -1.0),
	light_color = vec(1.0, 0.5, 0.25),
	light_intensity = 50.0,
	light_range = 10.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 64,
	-- light_flicker_frequency = 5.0,
	-- light_flicker_amplitude = 0.4,
	flags = F_BLOCK_AI,
	heightmap_sample_radius = 1.0,
	tags = { "arken" },
}

def_object{
	name = "arken_temple_statue_guard",
	model = "data/models/arken_temple_statue_guard.fbx",
	tags = { "arken" },
	-- these position the speech balloons:
	capsule_height = 2.5,
	capsule_radius = 1.5,
}

def_object{
	name = "arken_temple_statue_sitting",
	model = "data/models/arken_temple_statue_sitting.fbx",
	-- these position the speech balloons:
	capsule_height = 2.5,
	capsule_radius = 1.5,
	capsule_offset_z = 0.7,
	tags = { "arken" },
}

def_object{
	name = "arken_temple_chest",
	ui_name = "Stone Coffin",
	model = "data/models/arken_temple_chest.fbx",
	anims = {
		open = "data/anims/arken_temple_chest.fbx",
	},
	width = 2,
	height = 1,
	light_type = "point",
	light_position = vec(0.0, 1.45, -0.6),
	light_color = vec(0.42, 0.88, 1.00),
	light_intensity = 75.0,
	light_range = 10.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 64,
	tags = { "arken" },
	flags = F_INTERACTIVE + F_BLOCK_ALL + F_HARD_BLOCKER,
	on_interact = function(mob, chest, dir)
		spawn_at_obj("arken_temple_chest_open", chest)
		return interact_chest(mob, chest, dir)
	end,
	on_game_loaded = function(obj)
		if get_flag(obj, F_ACTIVATED) then
			sample_anim(obj, "open", 100.0)
		end
	end,
}

def_object{
	name = "arken_temple_chest_open",
	particle_system = "arken_temple_chest_open",
	particle_position = vec(0.0, 1.5, 0.0),
	tags = { "arken" },
	flags = F_TEMPORARY,
}

def_object{
	name = "arken_temple_door",
	ui_name = "Ancient Door",
	model = "data/models/arken_temple_door.fbx",
	width = 2,
	height = 1,
	anims = {
		close = "data/anims/dungeon_door_close.fbx",
		open = "data/anims/dungeon_door_open.fbx",
	},
	on_interact = interact_door,
	on_tooltip = tooltip_door,
	door_type = "generic",
	flags = F_BLOCK_ALL + F_INTERACTIVE + F_INTERACT_ACTION,
	fog_tile = { FOG_DOOR_NS, FOG_DOOR_EW, FOG_DOOR_NS, FOG_DOOR_EW },
	collider_size_x = 1.0,
	collider_size_y = 0.15,
	on_game_loaded = door_game_loaded,
	tags = { "arken" },
}

def_object{
	name = "arken_temple_seal",
	model = "data/models/arken_temple_seal.fbx",
	particle_system = "arken_temple_seal",
	light_type = "point",
	light_position = vec(0.0, 3.0, 0.0),
	light_color = vec(0.13, 0.63, 1.00),
	light_intensity = 15.0,
	light_range = 10.0,
	tags = { "arken" },
	snap_to = "edge",
}

def_object{
	name = "arken_temple_lightning_emitter",
	model = "data/models/arken_temple_lightning_emitter.fbx",
	tags = { "arken" },
}

def_object{
	name = "lightning_puzzle_tetra",
	particle_system = "lightning_puzzle_tetra",
	tags = { "arken" },
}

def_object{
	name = "arken_statue_gem",
	model = "data/models/arken_statue_gem.fbx",
	tags = { "arken" },
}

---------------------------------------------------
-- Darkness
---------------------------------------------------

def_object{
	name = "darkness_sun",
	model = "data/models/wire_tetra_long.fbx",
	model_rotation = vec(0.0, math.pi, 0.0),
	model_scale = 4.0,
	model_render_mode = "wireframe",
	light_type = "directional",
	light_color = vec(100, 240, 255) / 255.0,
	light_intensity = 5.0,
	light_cast_shadow = true,
	light_shadow_map_size = 2048,
	light_max_shadow_distance = 120.0,
	light_robust_shadow_map = false,
	light_shadow_distance_fade = true,
	light_sun = true,
	tags = { "darkness", "env" },
	flags = F_THUMBNAIL_ALWAYS,
}

def_object{
	name = "darkness_ground",
	model = "data/models/mountain_ground.fbx",
	model_material = "darkness_ground",
	model_render_mode = "heightmap",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT + F_SEEN_BY_RAYS,
	footstep_sound = "soft",
	layer = "floor",
	tags = { "darkness" },
}

def_object{
	name = "darkness_plants",
	model = "data/models/darkness_plants_01.fbx",
	anims = {
		--idle = "data/anims/darkness_plants_idle.fbx",
		spawn = "data/anims/darkness_plants_spawn.fbx",
		die = "data/anims/darkness_plants_die.fbx",
	},
	layer = "plant",
	tags = { "darkness", "zero_seed", "plant" },
}

def_object{
	name = "darkness_fog",
	particle_system = "darkness_fog",
	particle_warm_up = 5.0,
	particle_follow_camera = true,
	tags = { "darkness", "env" },
	flags = F_THUMBNAIL_NEVER,
}

---------------------------------------------------
-- Sanctuary
---------------------------------------------------

def_object{
	name = "sanctuary_sun",
	model = "data/models/wire_tetra_long.fbx",
	model_rotation = vec(0.0, math.pi, 0.0),
	model_scale = 6.0,
	model_render_mode = "wireframe",
	light_type = "directional",
	light_color = vec(0.36, 0.77, 0.99),
	light_intensity = 4.5,
	light_cast_shadow = true,
	light_shadow_map_size = 2048,
	light_max_shadow_distance = 120.0,
	light_robust_shadow_map = false,
	light_shadow_distance_fade = true,
	light_sun = true,
	tags = { "sanctuary", "env" },
	flags = F_THUMBNAIL_ALWAYS,
}

def_object{
	name = "sanctuary_ambient",
	light_type = "ambient",
	light_color  = shb_color_to_vec(0x506497ff),
	light_color2 = shb_color_to_vec(0x0F4A5Fff),
	light_color3 = shb_color_to_vec(0x111538ff),
	light_intensity = 0.6,
	tags = { "sanctuary" },
	flags = F_THUMBNAIL_ALWAYS,
}

def_object{
	name = "sanctuary_fog",
	particle_system = "forest_fog",
	particle_warm_up = 2.0,
	particle_follow_camera = true,
	tags = { "sanctuary", "env" },
	flags = F_THUMBNAIL_NEVER,
}

def_object{
	name = "sanctuary_ground",
	model = "data/models/forest_ground.fbx",
	model_material = "sanctuary_ground",
	model_render_mode = "heightmap",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT + F_SEEN_BY_RAYS,
	footstep_sound = "soft",
	layer = "floor",
	tags = { "sanctuary" },
}

def_object{
	name = "sanctuary_ground_burned",
	model = "data/models/forest_ground.fbx",
	model_material = "sanctuary_ground_burned",
	model_render_mode = "heightmap",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT + F_SEEN_BY_RAYS,
	footstep_sound = "soft",
	layer = "floor",
	tags = { "sanctuary" },
}

def_object{
	name = "sanctuary_wall_rock_medium",
	model = "data/models/sanctuary_wall_rock_medium_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	flags = F_BLOCK_ALL,
	fog_tile = FOG_SOFT,
	tags = { "sanctuary" },
}

def_object{
	name = "sanctuary_wall_rock_large",
	width = 2,
	height = 1,
	model = "data/models/sanctuary_wall_rock_large_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	fog_tile = FOG_SOFT,
	tags = { "sanctuary" },
}

def_object{
	name = "sanctuary_wall_rock_medium_vine",
	model = "data/models/sanctuary_wall_rock_medium_vine_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	anims = { idle = "data/anims/sanctuary_wall_rock_medium_vine_idle.fbx" },
	anim_random_start_time = true,
	flags = F_BLOCK_ALL,
	fog_tile = FOG_SOFT,
	tags = { "sanctuary" },
}

def_object{
	name = "sanctuary_wall_rock_large_vine",
	width = 2,
	height = 1,
	model = "data/models/sanctuary_wall_rock_large_vine_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	anims = { idle = "data/anims/sanctuary_wall_rock_large_vine_idle.fbx" },
	anim_random_start_time = true,
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	fog_tile = FOG_SOFT,
	tags = { "sanctuary" },
}

def_object{
	name = "sanctuary_giant_root_arch",
	width = 4,
	height = 1,
	model = "data/models/sanctuary_giant_root_arch_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	fog_tile = FOG_SOFT,
	tags = { "sanctuary" },
}

def_object{
	name = "sanctuary_giant_root_ground_01",
	width = 4,
	height = 1,
	model = "data/models/sanctuary_giant_root_ground_01_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	fog_tile = FOG_SOFT,
	tags = { "sanctuary" },
}

def_object{
	name = "sanctuary_giant_root_ground_02",
	width = 3,
	height = 1,
	model = "data/models/sanctuary_giant_root_ground_02_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	fog_tile = FOG_SOFT,
	tags = { "sanctuary" },
}

def_object{
	name = "sanctuary_small_roots",
	model = "data/models/sanctuary_small_roots_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	width = 2,
	height = 2,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	tags = { "sanctuary" },
}

def_object{
	name = "sanctuary_mushrooms_01",
	model = "data/models/sanctuary_mushrooms_01_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	particle_system = "sanctuary_mushrooms_01",
	light_type = "point",
	light_position = vec(0.0, 5.0, 0.0),
	light_color = vec(0.3, 1.0, 0.3),
	light_intensity = 10.0,
	light_range = 10.0,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	tags = { "sanctuary" },
}

def_object{
	name = "sanctuary_giant_wood",
	width = 3,
	height = 3,
	model = "data/models/sanctuary_giant_wood.fbx",
	model_cull_mode = "dissolve_normal",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	fog_tile = FOG_SOFT,
	tags = { "sanctuary" },
}

def_object{
	name = "sanctuary_giant_fern",
	model = "data/models/sanctuary_giant_fern.fbx",
	model_scale = vec(1.0, 1.5, 1.0),
	anims = { idle = "data/anims/sanctuary_giant_fern_idle.fbx" },
	anim_random_start_time = true,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	tags = { "sanctuary", "plant" },
}

def_object{
	name = "sanctuary_small_fern",
	model = "data/models/sanctuary_small_fern_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	anims = { idle = "data/anims/sanctuary_small_fern_idle.fbx" },
	anim_random_start_time = true,
	tags = { "sanctuary", "plant" },
}

def_object{
	name = "sanctuary_bush_01",
	model = "data/models/sanctuary_bush_01.fbx",
	model_scale = vec(1.05, 1.35, 1.05),
	anims = { idle = "data/anims/sanctuary_bush_01_idle.fbx" },
	anim_random_start_time = true,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	tags = { "sanctuary", "plant" },
}

def_object{
	name = "sanctuary_vine",
	model = "data/models/sanctuary_vine.fbx",
	anims = { idle = "data/anims/sanctuary_vine_idle.fbx" },
	anim_random_start_time = true,
	tags = { "sanctuary", "plant" },
}

def_object{
	name = "sanctuary_leaves_01_wall",
	model = "data/models/sanctuary_leaves_01_wall.fbx",
	anims = { idle = "data/anims/sanctuary_leaves_01_wall_idle.fbx" },
	anim_random_start_time = true,
	tags = { "sanctuary", "plant" },
}

def_object{
	name = "sanctuary_leaves_01_top",
	model = "data/models/sanctuary_leaves_01_top.fbx",
	anims = { idle = "data/anims/sanctuary_leaves_01_top_idle.fbx" },
	anim_random_start_time = true,
	tags = { "sanctuary", "plant" },
}

def_object{
	name = "sanctuary_plants_01",
	model = "data/models/forest_plants_01_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	model_material = "sanctuary_plants",
	anims = {
		idle = "data/anims/forest_plants1_idle.fbx",
		spawn = "data/anims/forest_plants1_spawn.fbx",
		die = "data/anims/forest_plants1_die.fbx",
	},
	anim_random_start_time = true,
	layer = "plant",
	tags = { "sanctuary", "plant" },
}

def_object{
	name = "sanctuary_plants_02",
	model = "data/models/forest_plants_02_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	model_material = "sanctuary_plants",
	anims = {
		idle = "data/anims/forest_plants2_idle.fbx",
		spawn = "data/anims/forest_plants2_spawn.fbx",
		die = "data/anims/forest_plants2_die.fbx",
	},
	anim_random_start_time = true,
	layer = "plant",
	tags = { "sanctuary", "plant" },
}

def_object{
	name = "sanctuary_fireflies_blue",
	particle_system = "sanctuary_fireflies_blue",
	light_type = "point",
	light_position = vec(0.0, 3.0, 0.0),
	light_color = vec(0.0, 0.15, 1.0),
	light_intensity = 60.0,
	light_range = 9.0,
	tags = { "sanctuary" },
}

def_object{
	name = "sanctuary_fireflies_green",
	particle_system = "sanctuary_fireflies_green",
	light_type = "point",
	light_position = vec(0.0, 3.0, 0.0),
	light_color = vec(0.3, 1.0, 0.15),
	light_intensity = 16.0,
	light_range = 8.0,
	tags = { "sanctuary" },
}

def_object{
	name = "sanctuary_flover_plant_01",
	model = "data/models/sanctuary_flover_plant_01_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	anims = { idle = "data/anims/sanctuary_flower_plant_01_idle.fbx", },
	anim_random_start_time = true,
	particle_system = "sanctuary_flover_plant_01",
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	tags = { "sanctuary", "plant" },
}

def_object{
	name = "sanctuary_tree_01",
	model = "data/models/sanctuary_tree_01.fbx",
	anims = { idle = "data/anims/sanctuary_tree_01_idle.fbx", },
	anim_random_start_time = true,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	layer = "tree",
	tags = { "sanctuary" },
}

def_object{
	name = "sanctuary_god_rays",
	particle_system = "sanctuary_god_rays",
	tags = { "sanctuary" },
	flags = F_THUMBNAIL_NEVER,
}

def_object{
	name = "shido_prop",
	model = "data/models/shido.fbx",
	anims = {
		idle = "data/anims/shido_idle.fbx",
		whirlwind = "data/anims/shido_whirlwind.fbx",
		sad = "data/anims/shido_sad.fbx",
	},
	anim_random_start_time = true,
	tags = { "sanctuary" },
}

def_object{
	name = "shido_adventurer_prop",
	model = "data/models/shido_adventurer.fbx",
	anims = {
		idle = "data/anims/shido_idle.fbx",
		rescue = "data/anims/shido_rescue.fbx",
	},
	anim_random_start_time = true,
}

def_object{
	name = "sanctuary_stones_big",
	model = "data/models/sanctuary_stones_big_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },	
	width = 2,
	height = 2,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	tags = { "sanctuary", "rock" },
}

def_object{
	name = "sanctuary_stones_big_burned",
	model = "data/models/sanctuary_stones_big_lods.fbx",
	model_material = "sanctuary_burned_rock",
	model_lod_distances = { 0.0, 30.0 },	
	width = 2,
	height = 2,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	tags = { "sanctuary", "rock" },
}

def_object{
	name = "sanctuary_stones_01",
	model = "data/models/sanctuary_stones_01_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "sanctuary", "rock" },
}

def_object{
	name = "sanctuary_stones_02",
	model = "data/models/sanctuary_stones_02_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "sanctuary", "rock" },
}

def_object{
	name = "sanctuary_stones_rubble",
	model = "data/models/sanctuary_stones_rubble.fbx",
	tags = { "sanctuary", "rock" },
}

def_object{
	name = "travel_stone_effect",
	particle_system = "travel_stone_effect",
	light_type = "point",
	light_position = vec(1.6, -2.0, -1.6),
	light_color = vec(0.0, 0.15, 1.0),
	light_intensity = 10.0,
	light_range = 25.0,
	tags = { "sanctuary" },
}

def_object{
	name = "sanctuary_big_fire",
	particle_system = "beacon_fire",
	light_type = "point",
	light_position = vec(0.0, 1.8, 0),
	light_color = vec(1.0, 0.5, 0.25),
	light_intensity = 20.0,
	light_range = 8.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.4,
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT + F_HIDE_CLOSEUP,
	heightmap_sample_radius = 1.0,
	tags = { "sanctuary" },
}

def_object{
	name = "sad_shido",
	model = "data/models/shido.fbx",
	anims = { idle = "data/anims/shido_sad.fbx", },
	anim_random_start_time = true,
}

def_object{
	name = "sanctuary_burning_light",
	light_type = "point",
	light_position = vec(0.0, 3.0, 0.0),
	light_color = vec(1.0, 0.5, 0.0),
	light_intensity = 60.0,
	light_range = 15.0,
	flags = F_IGNORE_HEIGHT + F_SEEN_BY_RAYS,
	tags = { "sanctuary" },
}

---------------------------------------------------
-- Zero Seed
---------------------------------------------------

def_object{
	name = "zero_seed_ambient",
	light_type = "ambient",
	light_color  = shb_color_to_vec(0x1bb2f000),
	light_color2 = shb_color_to_vec(0x0fffdf00),
	light_color3 = shb_color_to_vec(0x01e6fa00),
	light_intensity = 0.5,
	tags = { "zero_seed", "env" },
	flags = F_THUMBNAIL_ALWAYS,
}

def_object{
	name = "zero_seed_sun",
	model = "data/models/wire_tetra_long.fbx",
	model_rotation = vec(0.0, math.pi, 0.0),
	model_scale = 4.0,
	model_render_mode = "wireframe",
	light_type = "directional",
	light_color = vec(1.0, 0.8, 0.7),
	light_intensity = 4.0,
	light_cast_shadow = true,
	light_shadow_map_size = 2048,
	light_max_shadow_distance = 120.0,
	light_robust_shadow_map = false,
	light_shadow_distance_fade = true,
	light_sun = true,
	tags = { "zero_seed", "env" },
	flags = F_THUMBNAIL_ALWAYS,
}

def_object{
	name = "zero_seed_fog",
	particle_system = "zero_seed_fog",
	particle_follow_camera = true,
	tags = { "zero_seed", "env" },
}

def_object{
	name = "zero_seed_ground",
	model = "data/models/forest_ground.fbx",
	model_material = "zero_seed_ground",
	model_render_mode = "heightmap",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT + F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "zero_seed" },
}

def_object{
	name = "zero_seed_cracks",
	model = "data/models/zero_seed_cracks.fbx",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT + F_SEEN_BY_RAYS,
	tags = { "zero_seed" },
}

def_object{
	name = "zero_seed_cracks_light",
	light_type = "point",
	light_position = vec(0.0, 3.0, 0.0),
	light_color = vec(1.0, 0.5, 0.0),
	light_intensity = 46.0,
	light_range = 30.0,
	flags = F_IGNORE_HEIGHT + F_SEEN_BY_RAYS,
	tags = { "zero_seed" },
}

def_object{
	name = "zero_seed_fire",
	particle_system = "zero_seed_fire",
	light_type = "point",
	light_position = vec(0.0, 1.0, 0),
	light_color = vec(1.0, 0.5, 0.25),
	light_intensity = 10.0,
	light_range = 10.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.4,
	flags = F_BLOCK_AI,
	heightmap_sample_radius = 1.0,
	tags = { "zero_seed" },
}

def_object{
	name = "zero_seed_grass",
	model = "data/models/forest_grass_yellow.fbx",
	model_material = "zero_seed_grass_no_height",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT + F_HIT_BOUNDING_BOX,
	layer = "grass",
	tags = { "zero_seed", "plant" },
}

def_object{
	name = "zero_seed_rock_01",
	model = "data/models/zero_seed_rock_01.fbx",
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "zero_seed", "rock" },
}

def_object{
	name = "zero_seed_rock_02",
	model = "data/models/zero_seed_rock_02.fbx",
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "zero_seed", "rock" },
}

def_object{
	name = "zero_seed_rock_03",
	model = "data/models/zero_seed_rock_03.fbx",
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "zero_seed", "rock" },
}

def_object{
	name = "zero_seed_rock_04",
	model = "data/models/zero_seed_rock_04.fbx",
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "zero_seed", "rock" },
}

def_object{
	name = "zero_seed_rock_05",
	model = "data/models/zero_seed_rock_05.fbx",
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "zero_seed", "rock" },
}

def_object{
	name = "zero_seed_rock_06",
	model = "data/models/sanctuary_stones_01_lods.fbx",
	model_material = "zero_seed_rock_tile",
	model_lod_distances = { 0.0, 30.0 },
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "zero_seed", "rock" },
}

def_object{
	name = "zero_seed_rock_07",
	model = "data/models/sanctuary_stones_02_lods.fbx",
	model_material = "zero_seed_rock_tile",
	model_lod_distances = { 0.0, 30.0 },
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "zero_seed", "rock" },
}

def_object{
	name = "zero_seed_rubble",
	model = "data/models/zero_seed_rubble.fbx",
	tags = { "zero_seed", "rock" },
}

def_object{
	name = "zero_seed_rock_big",
	width = 2,
	height = 2,
	model = "data/models/sanctuary_stones_big_lods.fbx",
	model_material = "zero_seed_rock_tile",
	model_lod_distances = { 0.0, 30.0 },	
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	tags = { "zero_seed", "rock" },
}

def_object{
	name = "zero_seed_rock_wall_2x2",
	width = 2,
	height = 2,
	model = "data/models/rock_wall_2x2.fbx",
	model_material = "zero_seed_rock_tile",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "zero_seed", "rock" },
}

def_object{
	name = "zero_seed_rock_wall_2x2_margin",
	width = 2,
	height = 2,
	model = "data/models/rock_wall_2x2_margin.fbx",
	model_material = "zero_seed_rock_tile",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "zero_seed", "rock" },
}

def_object{
	name = "zero_seed_cliff_edge_01",
	model = "data/models/forest_cliff_edge_01.fbx",
	model_material = "zero_seed_rock_tile",
	footstep_sound = "hard",
	layer = "floor",
	always_draw_path_tile = true,	-- force drawing path tiles on this object (needed because these objects often expand over their footprint)
	flags = F_SEEN_BY_RAYS,
	tags = { "zero_seed", "rock" },
}

def_object{
	name = "zero_seed_cliff_edge_02",
	model = "data/models/forest_cliff_edge_02.fbx",
	model_material = "zero_seed_rock_tile",
	footstep_sound = "hard",
	layer = "floor",
	always_draw_path_tile = true,	-- force drawing path tiles on this object (needed because these objects often expand over their footprint)
	flags = F_SEEN_BY_RAYS,
	tags = { "zero_seed", "rock" },
}

def_object{
	name = "blackroot_decoration",
	model = "data/models/blackroot.fbx",
	anims = { idle = "data/anims/blackroot_idle.fbx", },
	anim_random_start_time = true,
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT + F_HIDE_CLOSEUP,
	tags = { "zero_seed" },
}

def_object{
	name = "egg_sack",
	ui_name = "Egg Sack",
	model = "data/models/egg_sack.fbx",
	model_scale = 1.2,
	model_material = "darkness_orb_dark",
	anims = {
		idle = "data/anims/egg_sack_idle.fbx",
		hit_front1 = "data/anims/egg_sack_hit_front1.fbx",
		hit_front2 = "data/anims/egg_sack_hit_front1.fbx",
		hit_back = "data/anims/egg_sack_hit_front1.fbx",
		hit_left = "data/anims/egg_sack_hit_front1.fbx",
		hit_right = "data/anims/egg_sack_hit_front1.fbx",
	},
	anim_random_start_time = true,
	mob_hp = 5,
	mob_damage = 0,
	mob_armor = 0,
	mob_thing = true,
	mob_xp = 0,
	mob_size = 1,
	mob_death_effect = "none",
	mob_spawn_on_death = "egg_sack_destroyed",
	mob_flags = MF_IMMOVABLE,
	on_tooltip = tooltip_mob,
	immunities = IMMUNE_ALL,
	-- do not block sight to avoid problems with chained lightning and keep it aligned with other "mobs"
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS + F_INTERACTIVE + F_HIDE_CLOSEUP,
	tags = { "zero_seed" },
	mob_description = "The disgusting bulges throb and pulsate rythmically and seem to be controlling the flow of unknown subtances inside the thick purple veins on the ground.",
}

def_object{
	name = "egg_sack_destroyed",
	model = "data/models/egg_sack_destroyed.fbx",
	model_scale = 1.2,
	model_material = "darkness_orb_dark",
	anims = {
		burst = "data/anims/egg_sack_destroyed_burst.fbx",
	},
	on_spawn = function(obj)
		local def = {
			particle_system = "egg_sack_burst",
			flags = F_TEMPORARY,
		}
		spawn(def, obj.map, obj.x, obj.y)
	end,
	anim_play_on_init = "burst",
	tags = { "zero_seed" },
	on_game_loaded = function(obj)
		sample_anim(obj, "burst", 100.0)
	end,
}

def_object{
	name = "egg_sack_larva_trigger",
	width = 5,
	height = 5,
	editor_draw_footprint = true,
	trigger_flags = TRIGGER_WALKING,
	on_enter_trigger = function(mob, trigger)
		if is_hero(mob) then
			local egg_sack = find_obj_at(trigger.map, "egg_sack", trigger.x + 2, trigger.y + 2)
			if egg_sack then
				local old_camera_target = get_camera_target()
				local old_camera_height = get_camera_height()
				set_camera_controls(false)
				set_camera_height(25.0)
				set_camera_target(egg_sack, true)
				local larva = spawn_at_obj("larva", egg_sack)
				larva.previous_trigger_pos_x = larva.x	-- prevent large from receiving damage from corruption tile in same space
				larva.previous_trigger_pos_y = larva.y
				move_obj(larva, 0.0, 0.3, 0.0)	-- lift up so that it does not clip with the egg sack so badly
				set_facing(larva, mob_dir_towards(larva, mob.x, mob.y))
				play_anim_and_resume_idle(larva, "spawn")
				kill_mob(egg_sack)
				delay(1500)
				set_camera_height(old_camera_height)
				set_camera_target(old_camera_target)
				set_camera_controls(true)
				abort_path()
			end
			destroy(trigger)
		end
	end,
}

def_object{
	name = "purple_point",
	light_type = "point",
	light_position = vec(0.0, 0.0, 0.0),
	light_color = vec(0.8, 0.0, 1.0),
	light_intensity = 30.0,
	light_range = 12.0,
	tags = { "zero_seed", "light" },
}

def_object{
	name = "zero_seed_root_01",
	model = "data/models/zero_seed_root_01.fbx",
	model_material = "zero_seed_crystal_veins",
	model_clone_material = true,
	tags = { "zero_seed" },
}

def_object{
	name = "zero_seed_root_02",
	model = "data/models/zero_seed_root_02.fbx",
	model_material = "zero_seed_crystal_veins",
	model_clone_material = true,
	tags = { "zero_seed" },
}

def_object{
	name = "zero_seed_root_01_dead",
	model = "data/models/zero_seed_root_01.fbx",
	model_material = "zero_seed_crystal_veins_dead",
	tags = { "zero_seed" },
}

def_object{
	name = "zero_seed_root_02_dead",
	model = "data/models/zero_seed_root_02.fbx",
	model_material = "zero_seed_crystal_veins_dead",
	tags = { "zero_seed" },
}

def_object{
	name = "zero_seed_giant_root_arch",
	width = 4,
	height = 1,
	model = "data/models/sanctuary_giant_root_arch_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	model_material = "zero_seed_giant_root",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	fog_tile = FOG_SOFT,
	tags = { "zero_seed" },
}

def_object{
	name = "zero_seed_giant_root_ground_01",
	width = 4,
	height = 1,
	model = "data/models/sanctuary_giant_root_ground_01_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	model_material = "zero_seed_giant_root",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	fog_tile = FOG_SOFT,
	tags = { "zero_seed" },
}

def_object{
	name = "zero_seed_giant_root_ground_02",
	width = 3,
	height = 1,
	model = "data/models/sanctuary_giant_root_ground_02_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	model_material = "zero_seed_giant_root",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	fog_tile = FOG_SOFT,
	tags = { "zero_seed" },
}

def_object{
	name = "end_ground",
	model = "data/models/forest_ground.fbx",
	model_material = "end_ground",
	model_render_mode = "heightmap",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT + F_SEEN_BY_RAYS,
	footstep_sound = "soft",
	layer = "floor",
	tags = { "zero_seed" },
}

def_object{
	name = "green_cracks",
	model = "data/models/zero_seed_cracks.fbx",
	model_material = "green_cracks",
	flags = F_IGNORE_HEIGHT,
	model_cast_shadow = false,
}

def_object{
	name = "end_particles",
	particle_system = "end_particles",
	particle_warm_up = 6.0,
	editor_draw_footprint = false,
}

def_object{
	name = "end_roots",
	model = "data/models/end_roots.fbx",
	flags = F_IGNORE_HEIGHT,
}

---------------------------------------------------
-- Cave
---------------------------------------------------

def_object{
	name = "cave_ground",
	model = "data/models/forest_ground.fbx",
	model_material = "cave_ground",
	model_render_mode = "heightmap",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT + F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "cave" },
}

def_object{
	name = "cave_rubble_01",
	model = "data/models/forest_rubble_01.fbx",
	model_material = "cave_wall",
	tags = { "cave", "rock" },
}

def_object{
	name = "cave_rubble_02",
	model = "data/models/forest_rubble_02.fbx",
	model_material = "cave_wall",
	tags = { "cave", "rock" },
}

def_object{
	name = "cave_stones_big",
	model = "data/models/sanctuary_stones_big_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	model_material = "cave_wall",
	width = 2,
	height = 2,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	tags = { "cave", "rock" },
}

def_object{
	name = "cave_stones_01",
	model = "data/models/sanctuary_stones_01_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	model_material = "cave_wall",
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "cave", "rock" },
}

def_object{
	name = "cave_stones_02",
	model = "data/models/sanctuary_stones_02_lods.fbx",
	model_lod_distances = { 0.0, 30.0 },
	model_material = "cave_wall",
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "cave", "rock" },
}

def_object{
	name = "cave_wall_4x2",
	width = 4,
	height = 2,
	model = "data/models/cave_wall_4x2.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	tags = { "cave", "rock" },
}

def_object{
	name = "cave_wall_2x2",
	width = 2,
	height = 2,
	model = "data/models/cave_wall_2x2.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	tags = { "cave", "rock" },
}

def_object{
	name = "cave_wall_2x1",
	width = 2,
	height = 1,
	model = "data/models/cave_wall_2x1.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	tags = { "cave", "rock" },
}

def_object{
	name = "cave_wall_4x2_short",
	width = 4,
	height = 2,
	model = "data/models/cave_wall_4x2_short.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	tags = { "cave", "rock" },
}

def_object{
	name = "cave_wall_2x2_short",
	width = 2,
	height = 2,
	model = "data/models/cave_wall_2x2_short.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	tags = { "cave", "rock" },
}

def_object{
	name = "cave_wall_2x1_short",
	width = 2,
	height = 1,
	model = "data/models/cave_wall_2x1_short.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	tags = { "cave", "rock" },
}

def_object{
	name = "cave_wall_stone_small",
	model = "data/models/cave_wall_stone_small.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	tags = { "cave", "rock" },
}

def_object{
	name = "cave_wall_stone_middle",
	model = "data/models/cave_wall_stone_middle.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	tags = { "cave", "rock" },
}

def_object{
	name = "cave_wall_stone_tall",
	model = "data/models/cave_wall_stone_tall.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	tags = { "cave", "rock" },
}

def_object{
	name = "cave_roof_low_filler",
	model = "data/models/cave_roof_low_filler.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	tags = { "cave" },
}

def_object{
	name = "cave_point_light",
	light_type = "point",
	light_color = vec(0.39, 0.58, 0.92),
	light_intensity = 15.0,
	light_range = 20.0,
	tags = { "cave", "light" },
}

def_object{
	name = "cave_meditation_circle",
	model = "data/models/cave_meditation_circle.fbx",
	light_type = "point",
	light_position = vec(0.0, 2.5, 0.0),
	light_color = vec(0.33, 0.65, 0.98),
	light_intensity = 12.0,
	light_range = 10.0,
	light_flicker_frequency = 0.5,
	light_flicker_amplitude = 0.9,
	heightmap_sample_radius = 1.0,
	tags = { "cave" },
}

--HACK!!!
def_object{
	name = "cave_sun_blocker",
	model = "data/models/cave_sun_blocker.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	tags = { "cave" },
}

--HACK!!!
def_object{
	name = "cave_reflection_blocker",
	model = "data/models/cave_reflection_blocker.fbx",
	heightmap_sample_radius = 1.0,
	flags = F_BLOCK_ALL,
	tags = { "cave" },
}

def_object{
	name = "cave_cliff_edge_01",
	model = "data/models/forest_cliff_edge_01.fbx",
	model_material = "cave_wall",
	tags = { "cave" },
}

def_object{
	name = "cave_cliff_edge_02",
	model = "data/models/forest_cliff_edge_02.fbx",
	model_material = "cave_wall",
	tags = { "cave" },
}

def_object{
	name = "cave_rock_wall_2x2_margin",
	width = 2,
	height = 2,
	model = "data/models/rock_wall_2x2_margin.fbx",
	heightmap_sample_radius = 1.0,
	model_material = "cave_wall",
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
	tags = { "cave" },
}

def_object{
	name = "cave_stairs",
	model = "data/models/forest_stairs.fbx",
	model_material = "cave_ground",
	platform_model = true,
	footstep_sound = "hard",
	width = 2,
	height = 3,
	flags = F_SEEN_BY_RAYS,
	tags = { "cave" },
}

def_object{
	name = "mine_arch",
	width = 2,
	height = 1,
	model = "data/models/mine_arch.fbx",
	heightmap_sample_radius = 1.0,
	tags = { "cave" },
}

def_object{
	name = "mine_wood_pole",
	model = "data/models/mine_wood_pole.fbx",
	snap_to = "vertex",
	tags = { "cave" },
}

def_object{
	name = "pit_fog",
	particle_system = "pit_fog",
	particle_warm_up = 5.0,
}

def_object{
	name = "chain_hook",
	model = "data/models/chain_hook.fbx",
	tags = { "cave" },
}

def_object{
	name = "nuala_sleeping",
	model = "data/models/nuala_sleeping.fbx",
}

def_object{
	name = "flover_bed",
	model = "data/models/flover_bed.fbx",
}

---------------------------------------------------
-- World Map
---------------------------------------------------

def_object{
	name = "map_ground",
	model = "data/models/forest_ground.fbx",
	model_material = "map_ground",
	model_render_mode = "heightmap",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT,
	tags = { "world_map" },
}

def_object{
	name = "map_swamp",
	model = "data/models/mountain_ground.fbx",
	model_material = "swamp_ground",
	model_render_mode = "heightmap",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT,
	tags = { "world_map" },
}

def_object{
	name = "map_trees_cluster",
	model = "data/models/map_trees_01.fbx",
	anims = { idle = "data/anims/map_trees_03.fbx", },
	anim_random_start_time = true,
	model_scale = 2.0,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_trees_sparce",
	model = "data/models/map_trees_02.fbx",
	anims = { idle = "data/anims/map_trees_03.fbx", },
	anim_random_start_time = true,
	model_scale = 2.0,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_trees_cluster_big",
	model = "data/models/map_trees_03.fbx",
	anims = { idle = "data/anims/map_trees_03.fbx", },
	anim_random_start_time = true,
	model_scale = 2.0,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_trees_frosty_cluster",
	model = "data/models/map_trees_01.fbx",
	model_material = "map_trees_frosty",
	anims = { idle = "data/anims/map_trees_03.fbx", },
	anim_random_start_time = true,
	model_scale = 2.5,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_trees_frosty_sparce",
	model = "data/models/map_trees_02.fbx",
	model_material = "map_trees_frosty",
	anims = { idle = "data/anims/map_trees_03.fbx", },
	anim_random_start_time = true,
	model_scale = 2.5,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_trees_frosty_cluster_big",
	model = "data/models/map_trees_03.fbx",
	model_material = "map_trees_frosty",
	anims = { idle = "data/anims/map_trees_03.fbx", },
	anim_random_start_time = true,
	model_scale = 2.5,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_trees_swamp_cluster",
	model = "data/models/map_trees_01.fbx",
	model_material = "map_trees_swamp",
	anims = { idle = "data/anims/map_trees_03.fbx", },
	anim_random_start_time = true,
	model_scale = 2.0,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_trees_swamp_sparce",
	model = "data/models/map_trees_02.fbx",
	model_material = "map_trees_swamp",
	anims = { idle = "data/anims/map_trees_03.fbx", },
	anim_random_start_time = true,
	model_scale = 2.0,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_trees_swamp_cluster_big",
	model = "data/models/map_trees_03.fbx",
	model_material = "map_trees_swamp",
	anims = { idle = "data/anims/map_trees_03.fbx", },
	anim_random_start_time = true,
	model_scale = 2.0,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_swamp_tree",
	model = "data/models/map_swamp_tree.fbx",
	model_scale = 1.5,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_waterfall",
	model = "data/models/map_waterfall.fbx",
	particle_system = "map_waterfall",
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_menhir",
	model = "data/models/map_menhir.fbx",
	model_scale = 0.6,
	capsule_height = 0.0,
	capsule_radius = 1.4,
	capsule_offset_y = -0.8,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_eagle",
	model = "data/models/map_eagle.fbx",
	anims = { idle = "data/anims/map_eagle.fbx", },
	anim_random_start_time = true,
	model_cast_shadow = false,
	tags = { "world_map" },
}

def_object{
	name = "map_sanctuary",
	model = "data/models/map_sanctuary.fbx",
	capsule_height = 0.0,
	capsule_radius = 1.4,
	capsule_offset_y = -0.8,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_bridge",
	model = "data/models/map_bridge.fbx",
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_water",
	model = "data/models/map_water.fbx",
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_water2",
	model = "data/models/map_water2.fbx",
	editor_draw_footprint = false,
}

def_object{
	name = "map_icebergs",
	model = "data/models/map_icebergs.fbx",
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_ice",
	model = "data/models/mountain_ground.fbx",
	model_material = "mountain_ground_ice",
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_sun",
	model = "data/models/wire_tetra_long.fbx",
	model_rotation = vec(45.0, math.pi, 30.0),
	model_scale = 4.0,
	model_render_mode = "wireframe",
	light_type = "directional",
	light_color = vec(1.0, 0.8, 0.7),
	light_intensity = 6.0,
	light_cast_shadow = true,
	light_shadow_map_size = 2048,
	light_max_shadow_distance = 120.0,
	light_robust_shadow_map = false,
	light_shadow_distance_fade = true,
	light_sun = true,
	editor_draw_footprint = false,
}

def_object{
	name = "map_ambient",
	light_type = "ambient",
	light_color  = shb_color_to_vec(0x80bfffff),
	light_color2 = shb_color_to_vec(0x3e697bff),
	light_color3 = shb_color_to_vec(0x0a2f17ff),
	light_intensity = 0.7,
	editor_draw_footprint = false,
}

def_object{
	name = "map_clouds",
	particle_system = "map_clouds",
	particle_warm_up = 5.0,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_mountain_clouds",
	particle_system = "map_mountain_clouds",
	particle_warm_up = 5.0,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_ground_fog",
	particle_system = "map_ground_fog",
	particle_warm_up = 5.0,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_dense_fog",
	particle_system = "map_dense_fog",
	particle_warm_up = 5.0,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_dark_smoke",
	particle_system = "map_dark_smoke",
	particle_warm_up = 5.0,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_smoketop_crag",
	particle_system = "map_smoketop_crag",
	particle_warm_up = 5.0,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_darkness_fog",
	particle_system = "map_darkness_fog",
	particle_warm_up = 5.0,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_snow_fall",
	particle_system = "map_snow_fall",
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_lava",
	model = "data/models/lava.fbx",
	editor_draw_footprint = false,
}

def_object{
	name = "map_hero",
	has_transform = true,
	editor_draw_footprint = false,
}

def_object{
	name = "map_cave_entrance",
	model = "data/models/map_cave_entrance.fbx",
	model_scale = 0.35,
	light_type = "point",
	light_position = vec(0.0, 0.7, -0.9),
	light_color = vec(1.0, 169/255, 34/255),
	light_intensity = 16.0,
	light_range = 2.5,
	capsule_height = 0.0,
	capsule_radius = 1.4,
	capsule_offset_y = -0.8,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_trial_entrance",
	model = "data/models/map_trial_entrance.fbx",
	model_scale = 0.35,
	light_type = "point",
	light_position = vec(0.0, 1.25, -1.2),
	light_color = vec(0.0, 0.75, 1.0),
	light_intensity = 30.0,
	light_range = 4.5,
	particle_system = "map_trial_blue_flame",
	particle_position = vec(0.0, 1.5, -0.5),
	capsule_height = 0.0,
	capsule_radius = 1.4,
	capsule_offset_y = -0.8,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_druidstone_barrier",
	model = "data/models/map_druidstone_barrier.fbx",
	model_scale = 0.35,
	capsule_height = 0.0,
	capsule_radius = 3.4,
	capsule_offset_y = -1.5,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_icy_death",
	model = "data/models/map_icy_death.fbx",
	model_scale = 0.35,
	capsule_height = 0.0,
	capsule_radius = 1.4,
	capsule_offset_y = -0.8,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_cave",
	model = "data/models/map_cave.fbx",
	model_scale = 0.35,
	capsule_height = 0.0,
	capsule_radius = 1.4,
	capsule_offset_y = -0.8,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_beacon_fire",
	model = "data/models/map_beacon_fire.fbx",
	capsule_height = 0.0,
	capsule_radius = 1.4,
	capsule_offset_y = -0.8,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_grove",
	model = "data/models/map_grove.fbx",
	model_scale = 2,
	light_type = "point",
	light_position = vec(0.0, 0.5, 0.0),
	light_color = vec(0.3, 1.0, 0.15),
	light_intensity = 10.0,
	light_range = 3.0,
	capsule_height = 0.0,
	capsule_radius = 1.4,
	capsule_offset_y = -0.8,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_graves",
	model = "data/models/map_graves.fbx",
	light_type = "point",
	light_position = vec(0.0, 0.5, 0.0),
	light_color = vec(0.60, 0.85, 0.93),
	light_intensity = 25.0,
	light_range = 1.25,
	capsule_height = 0.0,
	capsule_radius = 1.6,
	capsule_offset_y = -0.2,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_tombstone",
	model = "data/models/map_tombstone.fbx",
	capsule_height = 0.0,
	capsule_radius = 1.6,
	capsule_offset_y = -0.2,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_druidstone",
	model = "data/models/map_druidstone.fbx",
	capsule_height = 0.0,
	capsule_radius = 1.6,
	capsule_offset_y = -0.2,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_tents",
	model = "data/models/map_tents.fbx",
	model_scale = 3.0,
	particle_system = "map_campfire",
	light_type = "point",
	light_position = vec(0.0, 0.5, 0.0),
	light_color = vec(0.98, 0.78, 0.11),
	light_intensity = 25.0,
	light_range = 1.25,
	light_flicker_frequency = 3.0,
	light_flicker_amplitude = 0.3,
	capsule_height = 0.0,
	capsule_radius = 1.4,
	capsule_offset_y = -0.8,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_small_fire",
	particle_system = "map_small_fire",
	tags = { "world_map" },
}

def_object{
	name = "map_castle",
	model = "data/models/map_castle.fbx",
	capsule_height = 0.0,
	capsule_radius = 3.0,
	capsule_offset_y = -3.0,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_mansion",
	model = "data/models/map_mansion.fbx",
	capsule_height = 0.0,
	capsule_radius = 1.6,
	capsule_offset_y = -0.2,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_monastery",
	model = "data/models/map_monastery.fbx",
	capsule_height = 0.0,
	capsule_radius = 1.6,
	capsule_offset_y = -0.2,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_village",
	model = "data/models/map_village.fbx",
	particle_system = "map_campfire",
	light_type = "point",
	light_position = vec(0.0, 0.5, 0.0),
	light_color = vec(0.98, 0.78, 0.11),
	light_intensity = 25.0,
	light_range = 1.25,
	light_flicker_frequency = 3.0,
	light_flicker_amplitude = 0.3,
	capsule_height = 0.0,
	capsule_radius = 1.4,
	capsule_offset_y = -0.2,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_stonehenge",
	model = "data/models/map_stonehenge.fbx",
	capsule_height = 0.0,
	capsule_radius = 1.4,
	capsule_offset_y = -0.8,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_oakfield",
	model = "data/models/map_oakfield.fbx",
	capsule_height = 0.0,
	capsule_radius = 1.4,
	capsule_offset_y = -0.8,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_shido",
	model = "data/models/map_shido.fbx",
	capsule_height = 0.0,
	capsule_radius = 1.4,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_herb_plant",
	model = "data/models/sanctuary_flover_plant_01_lods.fbx",
	model_material = "herb_plant",
	capsule_height = 0.0,
	capsule_radius = 1.4,
	light_type = "point",
	light_position = vec(0.0, 3.0, 0.0),
	light_color = vec(0.0, 0.75, 1.0),
	light_intensity = 5.0,
	light_range = 4.0,
	particle_system = "map_herb_plant",
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_egg",
	model = "data/models/forest_dragon_egg.fbx",
	capsule_height = 0.0,
	capsule_radius = 1.4,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_monolith",
	model = "data/models/monolith.fbx",
	model_material = "monolith",
	particle_system = "monolith_runes",
	light_type = "point",
	light_position = vec(-2.3, 5.0, 0.0),
	light_color = vec(0.0, 0.75, 0.75),
	light_intensity = 10.0,
	light_range = 8.0,
	capsule_height = 0.0,
	capsule_radius = 1.4,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_ice_crystal",
	model = "data/models/ice_crystal.fbx",
	model_scale = vec(1.2, 2.5, 1.2),			-- TODO: remove scaling once we have a proper model for ice crystals!
	particle_system = "map_ice_crystal",
	capsule_height = 0.0,
	capsule_radius = 1.4,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_crystallite",
	model = "data/models/ice_crystal.fbx",
	model_scale = vec(1.2, 2.5, 1.2),			-- TODO: remove scaling once we have a proper model for ice crystals!
	particle_system = "monastery_ice_fire",
	particle_position = vec(0.0, 0.4, 0.0),
	capsule_height = 0.0,
	capsule_radius = 1.4,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_water_foam_01",
	model = "data/models/map_water_foam_01.fbx",
	tags = { "world_map" },
}

def_object{
	name = "map_water_foam_02",
	model = "data/models/map_water_foam_02.fbx",
	tags = { "world_map" },
}

def_object{
	name = "map_water_foam_03",
	model = "data/models/map_water_foam_03.fbx",
	tags = { "world_map" },
}

def_object{
	name = "map_campfire",
	model = "data/models/campfire.fbx",
	--model_scale = 0.15,
	particle_system = "map_campfire",
	light_type = "point",
	light_position = vec(0.0, 0.5, 0.0),
	light_color = vec(0.98, 0.78, 0.11),
	light_intensity = 25.0,
	light_range = 1.25,
	light_flicker_frequency = 3.0,
	light_flicker_amplitude = 0.3,
	capsule_height = 0.0,
	capsule_radius = 1.4,
	capsule_offset_y = -0.8,
	flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_old_tree",
	model = "data/models/map_old_tree.fbx",
	anims = { idle = "data/anims/forest_old_tree_idle.fbx", },
	anim_random_start_time = true,
	capsule_height = 2.0, 
	capsule_radius = 1.4,
	capsule_offset_y = -0.8,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	tags = { "world_map" },
}

def_object{
	name = "map_mountain_01",
	model = "data/models/world_map_mountain_01.fbx",
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_mountain_02",
	model = "data/models/world_map_mountain_02.fbx",
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_mountain_snowy_01",
	model = "data/models/world_map_mountain_01.fbx",
	model_material = "world_map_snowy_rock",
	editor_draw_footprint = false,
	tags = { "world_map" },
}

def_object{
	name = "map_mountain_snowy_02",
	model = "data/models/world_map_mountain_02.fbx",
	model_material = "world_map_snowy_rock",
	editor_draw_footprint = false,
	tags = { "world_map" },
}

---------------------------------------------------
-- Main Menu
---------------------------------------------------

def_object{
	name = "main_menu_sun",
	model = "data/models/wire_tetra_long.fbx",
	model_rotation = vec(0.0, math.pi, 0.0),
	model_scale = 4.0,
	model_render_mode = "wireframe",
	light_type = "directional",
	light_color = vec(1.0, 0.9, 0.7),
	light_intensity = 7.0,
	light_cast_shadow = true,
	light_shadow_map_size = 2048,
	light_max_shadow_distance = 45.0,
	light_robust_shadow_map = false,
	light_shadow_distance_fade = false,
	light_cascade_count = 1,
	light_sun = true,
	tags = { "forest", "env" },
	flags = F_THUMBNAIL_ALWAYS,
}

def_object{
	name = "main_menu_ambient",
	light_type = "ambient",
	light_color  = shb_color_to_vec(0x67A6F6ff),
	light_color2 = shb_color_to_vec(0x368EE7ff),
	light_color3 = shb_color_to_vec(0x3078C3ff),
	light_intensity = 0.45,
	flags = F_THUMBNAIL_ALWAYS,
}

def_object{
	name = "menu_sun_bounce",
	light_type = "point",
	light_position = vec(0.0, 2.0, 0.0),
	light_color = vec(0.99, 0.98, 0.77),
	light_intensity = 30.0,
	light_range = 15.0,
	light_cast_shadow = false,
}

def_object{
	name = "menu_fog",
	particle_system = "menu_fog",
	particle_warm_up = 2.0,
	flags = F_THUMBNAIL_NEVER,
}

def_object{
	name = "menu_fog_foreground",
	particle_system = "menu_fog_foreground",
	particle_warm_up = 2.0,
	flags = F_THUMBNAIL_NEVER,
}

def_object{
	name = "menu_god_rays",
	particle_system = "menu_god_rays",
	particle_warm_up = 2.0,
	flags = F_THUMBNAIL_NEVER,
}

def_object{
	name = "menu_fireflies",
	particle_system = "menu_fireflies",
	particle_warm_up = 2.0,
	flags = F_THUMBNAIL_NEVER,
}

def_object{
	name = "menu_waterfall",
	particle_system = "menu_waterfall",
	particle_warm_up = 2.0,
	flags = F_THUMBNAIL_NEVER,
}

def_object{
	name = "menu_big_tree",
	model = "data/models/menu_big_tree.fbx",
}

def_object{
	name = "menu_tree_trunk",
	model = "data/models/menu_tree_trunk.fbx",
}

def_object{
	name = "menu_leaf_cluster",
	model = "data/models/menu_leaf_cluster.fbx",
	anims = { idle = "data/anims/forest_oak_idle.fbx", },
	anim_random_start_time = true,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
}

def_object{
	name = "menu_leaf_cluster2",
	model = "data/models/menu_leaf_cluster2.fbx",
	anims = { idle = "data/anims/forest_oak_idle.fbx", },
	anim_random_start_time = true,
	flags = F_BLOCK_ALL + F_HIDE_CLOSEUP,
	fog_tile = FOG_SOFT,
}

def_object{
	name = "menu_shido_prop",
	model = "data/models/shido.fbx",
	anims = { idle = "data/anims/shido_idle_main_menu.fbx", },
	anim_random_start_time = true,
}

def_object{
	name = "worm_hole",
	model = "data/models/worm_hole.fbx",
}

---------------------------------------------------
-- The End
---------------------------------------------------

def_object{
	name = "druidstone_seed",
	model = "data/models/druidstone_seed.fbx",
	model_scale = 0.2,
}

---------------------------------------------------
-- Pickups & items
---------------------------------------------------

def_object{
	name = "action_point",
	particle_system = "action_point",
	model = "data/models/heart.fbx",
	anims = {
		spawn = "data/anims/heart_spawn.fbx",
	},
	anim_play_on_init = "spawn",
	model_material = "keystone",
	model_position = vec(0.0, 0.3, 0.0),
	particle_position = vec(0.0, 1.1, 0.0),
	particle_parent = "heart",
	light_position = vec(0.0, 2.5, 0.0),
	light_type = "point",
	light_color = 0x0000ffff,
	light_intensity = 15.0,
	light_range = 8.0,
	item_outline_color = 0x0044ffff,
	trigger_flags = TRIGGER_WALKING + TRIGGER_FLYING,
	trigger_priority = 1,
	on_enter_trigger = collect_action_point,
	interaction_type = "move_to",
	loot_item_type = "orb",
	flags = F_INTERACTIVE + F_HIDE_CLOSEUP,
	tooltip = "Collect to gain 1 Action Point.",
	destroy_after_battle = true,
	on_game_loaded = function(action_point)
		sample_anim(action_point, "spawn", 100.0)
	end,
}

def_object{
	name = "gold",
	model = "data/models/gold_collapse.fbx",
	anims = { fall = "data/anims/gold_collapse.fbx" },
	light_type = "point",
	light_color = 0xffb200ff,
	light_intensity = 5.0,
	light_position = vec(0.0, 1.0, 0.0),
	light_range = 15.0,
	item_outline_color = 0x884000ff,
	trigger_flags = TRIGGER_WALKING,
	trigger_priority = 1,
	on_enter_trigger = found_item,
	interaction_type = "move_to",
	loot_item_type = "floor",
	heightmap_sample_radius = 1.0,
	item_count = {7, 20},
	on_spawn = function(gold)
		play_anim(gold, "fall")
		-- hack: lift up gold so that they are not hidden by pressure plates in the same square
		for _,obj in map_objs_at(gold.map, gold.x, gold.y) do
			if obj.arch.name == "dungeon_pressure_plate" or obj.arch.name == "pressure_plate_generic" then
				move_obj(gold, 0.0, 0.15, 0.0)
			end
		end
	end,
	on_game_loaded = function(gold)
		sample_anim(gold, "fall", 100.0)
	end,
	flags = F_INTERACTIVE,
	destroy_after_battle = true,
}

def_object{
	name = "heart",
	model = "data/models/heart.fbx",
	anims = {
		spawn = "data/anims/heart_spawn.fbx",
	},
	anim_play_on_init = "spawn",
	model_position = vec(0.0, 0.3, 0.0),
	light_position = vec(0.0, 2.5, 0.0),
	particle_position = vec(0.0, 1.1, 0.0),
	particle_parent = "heart",
	light_type = "point",
	light_color = 0xff0000ff,
	light_intensity = 5.0,
	light_range = 15.0,
	particle_system = "heart",
	item_outline_color = 0xff1000ff,
	trigger_flags = TRIGGER_WALKING + TRIGGER_FLYING,
	trigger_priority = 1,
	on_enter_trigger = collect_heart,
	tooltip = "Collect to recover 1 health.",
	interaction_type = "move_to",
	loot_item_type = "orb",
	flags = F_INTERACTIVE + F_HIDE_CLOSEUP,
	destroy_after_battle = true,
	on_game_loaded = function(heart)
		sample_anim(heart, "spawn", 100.0)
	end,
}

def_object{
	name = "druidstone_shard",
	ui_name = "Druidstone Shard",
	model = "data/models/defence_crystal.fbx",
	model_scale = 0.5,
	anims = {
		idle = "data/anims/defence_crystal.fbx",
	},
	model_cast_shadow = false,
	light_type = "point",
	light_position = vec(0.0, 2.5, 0.0),
	light_color = vec(0.12, 1.00, 0.00),
	light_flicker_frequency = 1.0,
	light_flicker_amplitude = 0.25,
	light_intensity = 15.0,
	light_range = 11.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	particle_system = "druidstone_shard",
	item_outline_color = 0x00ff10ff,
	trigger_flags = TRIGGER_WALKING + TRIGGER_FLYING,
	trigger_priority = 1,
	on_enter_trigger = collect_druidstone_shard,
	on_tooltip = tooltip_druidstone_shard,
	interaction_type = "move_to",
	loot_item_type = "orb",
	flags = F_BLOCK_AI + F_INTERACTIVE + F_HIDE_CLOSEUP,
	destroy_after_battle = true,
}

def_object{
	name = "spear",
	model = "data/models/spear.fbx",
	model_rotation = vec(math.rad(90), math.rad(45), 0.0),
	trigger_flags = TRIGGER_WALKING,
	trigger_priority = 1,
	on_enter_trigger = collect_spear,
	tooltip = "Collect to re-equip spear. The spear can only be picked up by its owner.",
	tooltip_priority = 2,
	item_outline_color = 0x888844ff,
	item_outline_occlusion = false,
	interaction_type = "move_to",
	loot_item_type = "floor",
	flags = F_INTERACTIVE,
}

def_object{
	name = "tetra_red",
	ui_name = "Red Tetra",
	model = "data/models/tetra.fbx",
	model_material = "tetra_red",
	anims = { idle = "data/anims/tetra.fbx" },
	anim_random_start_time = true,
	light_type = "point",
	light_color = 0xde0000ff,
	light_intensity = 30.0,
	light_position = vec(0.0, 1.0, 0.0),
	light_range = 13.0,
	trigger_flags = TRIGGER_WALKING + TRIGGER_FLYING,
	trigger_priority = 1,
	on_enter_trigger = found_item,
	interaction_type = "adjacent",		-- make it usable from adjacent cell
	flags = F_INTERACTIVE + F_HIDE_CLOSEUP,
}

def_object{
	name = "tetra_green",
	ui_name = "Green Tetra",
	model = "data/models/tetra.fbx",
	model_material = "tetra_green",
	anims = { idle = "data/anims/tetra.fbx" },
	anim_random_start_time = true,
	light_type = "point",
	light_intensity = 30.0,
	light_color = 0x008200ff,
	light_position = vec(0.0, 0.0, 0.0),
	light_range = 13.0,
	trigger_flags = TRIGGER_WALKING + TRIGGER_FLYING,
	trigger_priority = 1,
	on_enter_trigger = found_item,
	interaction_type = "adjacent",		-- make it usable from adjacent cell
	flags = F_INTERACTIVE + F_HIDE_CLOSEUP,
}

def_object{
	name = "tetra_blue",
	ui_name = "Blue Tetra",
	model = "data/models/tetra.fbx",
	model_material = "tetra_blue",
	anims = { idle = "data/anims/tetra.fbx" },
	anim_random_start_time = true,
	light_type = "point",
	light_color = 0x0047ffff,
	light_intensity = 75.0,
	light_position = vec(0.0, 0.0, 0.0),
	light_range = 9.0,
	trigger_flags = TRIGGER_WALKING + TRIGGER_FLYING,
	trigger_priority = 1,
	on_enter_trigger = found_item,
	interaction_type = "adjacent",		-- make it usable from adjacent cell
	flags = F_INTERACTIVE + F_HIDE_CLOSEUP,
}

def_object{
	name = "tetra_white",
	ui_name = "White Tetra",
	model = "data/models/tetra.fbx",
	model_material = "tetra_white",
	anims = { idle = "data/anims/tetra.fbx" },
	anim_random_start_time = true,
	light_type = "point",
	light_color = 0xffffffff,
	light_intensity = 10.0,
	light_position = vec(0.0, 0.0, 0.0),
	light_range = 15.0,
	trigger_flags = TRIGGER_WALKING + TRIGGER_FLYING,
	trigger_priority = 1,
	on_enter_trigger = found_item,
	item_outline_color = 0xffffffff,
	interaction_type = "adjacent",		-- make it usable from adjacent cell
	projectile_speed = 10.0,			-- druidstone1 calls shoot_projectile() on the white tetra
	projectile_trajectory_height = 1.0,
	flags = F_INTERACTIVE + F_HIDE_CLOSEUP,
}

def_object{
	name = "dynamite_ignited",
	model = "data/models/dynamite.fbx",
	particle_system = "fireball",
	light_type = "point",
	light_position = vec(0.0, 2.0, 0.0),
	light_color = vec(1.0, 0.5, 0.0),
	light_intensity = 5.0,
	light_range = 15.0,
	on_spawn = function(obj)
		obj.ignited_sound = play_sound("ignited")
		soloud_loop(obj.ignited_sound, true)
	end,
	on_destroy = function(obj)
		if obj.ignited_sound then stop_sound(obj.ignited_sound); obj.ignited_sound = nil end
	end,
}

def_object{
	name = "flute_attachment",
	model = "data/models/flute.fbx",
	model_rotation = vec(-math.pi * 0.5, 0, 0),
	editor_ignore_asset = true,
}

def_object{
	name = "harmonica_attachment",
	model = "data/models/harmonica.fbx",
	model_rotation = vec(-math.pi * 0.5, 0, 0),
	editor_ignore_asset = true,
}

def_object{
	name = "potion_attachment",
	model = "data/models/potion.fbx",
	model_scale = 0.3,
	model_position = vec(0.0, -0.4, 0.0),
	editor_ignore_asset = true,
}

def_object{
	name = "antidote_attachment",
	model = "data/models/antidote.fbx",
	model_scale = 0.3,
	model_position = vec(0.0, -0.4, 0.0),
	editor_ignore_asset = true,
}

def_object{
	name = "shovel_attachment",
	model = "data/models/shovel.fbx",
	editor_ignore_asset = true,
}

def_object{
	name = "dig_hole",
	model = "data/models/dig_hole.fbx",
}

def_object{
	name = "power_gem",
	model = "data/models/power_gem.fbx",
	model_scale = 2.0,
	model_position = vec(0.0, -2.4, 0.0),
	particle_system = "power_gem",
	light_type = "point",
	light_position = vec(0.0, 0.0, 0.0),
	light_color = vec(0.25, 1.0, 0.25),
	light_intensity = 20.0,
	light_range = 10.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 256,
	light_flicker_frequency = 3.0,
	light_flicker_amplitude = 0.5,
	loot_item_type = "orb",
}

def_object{
	name = "ice_demon_collapse",
	model = "data/models/ice_demon_collapse.fbx",
	model_can_emit_particles = true,
	particle_system = "ice_demon_collapse",
	anims = { collapse = "data/anims/ice_demon_collapse.fbx", },
	anim_play_on_init = "collapse",
	-- NOTE: on_game_loaded not implemented - animation will replay after loading a savegame!
	-- It was left out because at the moment the level ends when the ice demon is killed;
	-- if the ice demon and effect is used elsewhere, it is really problematic. The ice boulders
	-- are the size of Oiko and therefore the asset should be dissolved probably somehow.
}

---------------------------------------------------
-- Special effects
---------------------------------------------------

def_object{
	name = "hit",
	particle_system = "hit",
	particle_auto_destroy = true,
	light_type = "point",
	light_color = vec(1.0, 1.0, 1.0),
	light_intensity = 2.0,
	light_range = 5.0,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "bolt",
	particle_system = "bolt",
	particle_auto_destroy = true,
	light_type = "point",
	light_color = vec(0.25, 0.5, 1.0),
	light_intensity = 15.0,
	light_range = 10.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,	
	trail_type = "swipe",
	trail_max_segments = 20,
	trail_offset1 = vec( 0.5, 0.0, 0.0),
	trail_offset2 = vec(-0.5, 0.0, 0.0),
	trail_texture = load_texture("data/textures/spell_trail.png", "rgba8_srgb"),
	trail_color = 0x0050ffff,
	projectile_speed = 25.0,
	projectile_trajectory_height = 0.0,
	projectile_noise = 0.02,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "bolt_hit",
	particle_system = "bolt_hit",
	particle_auto_destroy = true,
	light_type = "point",
	light_color = vec(0.5, 0.75, 1.0),
	light_intensity = 20.0,
	light_range = 15.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,	
	light_fade_out = 0.5,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "acid_bolt",
	particle_system = "acid_bolt",
	particle_auto_destroy = true,
	light_type = "point",
	light_color = vec(0.25, 1.0, 0.5),
	light_intensity = 25.0,
	light_range = 30.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	trail_type = "swipe",
	trail_max_segments = 20,
	trail_offset1 = vec( 0.5, 0.0, 0.0),
	trail_offset2 = vec(-0.5, 0.0, 0.0),
	trail_texture = load_texture("data/textures/spell_trail.png", "rgba8_srgb"),
	trail_color = 0x00ff00ff,
	trail_intensity = 5.0,
	projectile_speed = 25.0,
	projectile_trajectory_height = 0.0,
	projectile_noise = 0.05,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "toxic_bolt",	-- venom edge's special attack
	particle_system = "acid_bolt",
	particle_auto_destroy = true,
	light_type = "point",
	light_color = vec(0.25, 1.0, 0.5),
	light_intensity = 15.0,
	light_range = 15.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,	
	trail_type = "swipe",
	trail_max_segments = 20,
	trail_offset1 = vec( 0.5, 0.0, 0.0),
	trail_offset2 = vec(-0.5, 0.0, 0.0),
	trail_texture = load_texture("data/textures/spell_trail.png", "rgba8_srgb"),
	trail_color = 0x00ff00ff,
	trail_intensity = 5.0,
	projectile_speed = 25.0,
	projectile_trajectory_height = 0.0,
	projectile_noise = 0.05,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "acid_bolt_hit",
	particle_system = "acid_bolt_hit",
	particle_auto_destroy = true,
	light_type = "point",
	light_color = vec(0.5, 1.0, 0.5),
	light_intensity = 30.0,
	light_range = 35.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,	
	light_fade_out = 0.5,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "fireball",
	particle_system = "fireball",
	particle_auto_destroy = true,
	light_type = "point",
	light_color = vec(1.0, 0.5, 0.25),
	light_intensity = 15.0,
	light_range = 10.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,	
	trail_type = "swipe",
	trail_max_segments = 20,
	trail_offset1 = vec( 0.5, 0.0, 0.0),
	trail_offset2 = vec(-0.5, 0.0, 0.0),
	trail_texture = load_texture("data/textures/spell_trail.png", "rgba8_srgb"),
	trail_color = 0xff4000ff,
	projectile_speed = 30.0,
	projectile_trajectory_height = 0.0,
	projectile_noise = 0.0,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "fireball_hit",
	particle_system = "fireball_hit",
	particle_auto_destroy = true,
	light_type = "point",
	light_color = vec(1.0, 0.75, 0.5),
	light_intensity = 20.0,
	light_range = 15.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	light_fade_out = 0.5,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "fire_arrow",
	particle_system = "fireball",
	particle_auto_destroy = true,
	light_type = "point",
	light_color = vec(1.0, 0.5, 0.25),
	light_intensity = 15.0,
	light_range = 10.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,	
	trail_type = "swipe",
	trail_max_segments = 20,
	trail_offset1 = vec( 0.5, 0.0, 0.0),
	trail_offset2 = vec(-0.5, 0.0, 0.0),
	trail_texture = load_texture("data/textures/spell_trail.png", "rgba8_srgb"),
	trail_color = 0xff4000ff,
	projectile_speed = 30.0,
	projectile_trajectory_height = 0.3,
	projectile_noise = 0.0,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "explosion",
	particle_system = "explosion2",
	particle_auto_destroy = true,
	light_type = "point",
	light_color = vec(1.0, 1.0, 1.0),
	light_intensity = 10.0,
	light_range = 15.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	light_fade_out = 1.0,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "ice_spell_bottom",
	model = "data/models/monastery_icicles.fbx",
	light_type = "point",
	light_position = vec(0.0, 2.0, 0.0),		
	light_color = vec(0.08, 0.6, 0.9),
	light_intensity = 8.0,	
	light_range = 12.0,
	light_flicker_frequency = 1,	
	light_flicker_amplitude = 0.3,
}

def_object{
	name = "ice_spell_top",
	model = "data/models/mountain_icicles.fbx",
	model_rotation = vec(math.pi, 0.0, 0.0),
}

def_object{
	name = "smokepuff",
	particle_system = "smokepuff",
	particle_auto_destroy = true,
	light_type = "point",
	light_color = vec(1.0, 1.0, 1.0),
	light_intensity = 40.0,
	light_range = 10.0,
	light_fade_out = 0.5,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "shock_hit",
	particle_system = "shock",
	particle_auto_destroy = true,
	light_type = "point",
	light_color = vec(0.25, 0.5, 1.0),
	light_intensity = 50.0,
	light_range = 15.0,
	light_cast_shadow = false,
	light_fade_out = 0.5,
	spawn_sound = "shock_hit",
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "darkbolt_projectile",
	particle_system = "darkbolt",
	particle_auto_destroy = true,
	light_type = "point",
	light_color = vec(1.0, 0.2, 1.0),
	light_intensity = 15.0,
	light_range = 10.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,	
	trail_type = "swipe",
	trail_max_segments = 20,
	trail_offset1 = vec( 0.5, 0.0, 0.0),
	trail_offset2 = vec(-0.5, 0.0, 0.0),
	trail_texture = load_texture("data/textures/spell_trail.png", "rgba8_srgb"),
	trail_color = 0xff50ffff,
	projectile_speed = 25.0,
	projectile_trajectory_height = 0.2,
	projectile_noise = 0.01,
	projectile_hit_effect = "darkbolt_hit",
	projectile_hit_sound = "darkbolt_hit",
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "darkbolt_hit",
	particle_system = "darkbolt_hit",
	particle_auto_destroy = true,
	light_type = "point",
	light_color = vec(1.0, 0.2, 1.0),
	light_intensity = 20.0,
	light_range = 15.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,	
	light_fade_out = 0.5,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "draw_spell",
	particle_system = "bolt",
	particle_auto_destroy = true,
	light_type = "point",
	light_color = vec(1.0, 1.0, 1.0),
	light_intensity = 10.0,
	light_range = 10.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,	
	trail_type = "swipe",
	trail_max_segments = 20,
	trail_offset1 = vec( 0.3, 0.0, 0.0),
	trail_offset2 = vec(-0.3, 0.0, 0.0),
	trail_texture = load_texture("data/textures/spell_trail.png", "rgba8_srgb"),
	--trail_color = 0x408080ff,
	trail_color = 0x66aaaaff,
	projectile_speed = 20.0,
	projectile_trajectory_height = 0.6,
	projectile_noise = 0.0,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "gold_trail",
	particle_system = "gold_trail",
	particle_auto_destroy = true,
	light_type = "point",
	light_color = vec(1.0, 0.8, 0.8),
	light_fade_out = 1.0,
	light_intensity = 15.0,
	light_range = 10.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,	
	trail_type = "swipe",
	trail_max_segments = 20,
	trail_offset1 = vec( 0.3, 0.0, 0.0),
	trail_offset2 = vec(-0.3, 0.0, 0.0),
	trail_texture = load_texture("data/textures/spell_trail.png", "rgba8_srgb"),
	trail_color = 0x3399ccff,
	projectile_speed = 5.0,
	projectile_trajectory_height = 0.8,
	projectile_noise = 0.0,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "heart_trail",
	particle_system = "heart_trail",
	particle_auto_destroy = true,
	light_type = "point",
	light_color = vec(1.0, 0.0, 0.0),
	light_intensity = 15.0,
	light_range = 10.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,	
	trail_type = "swipe",
	trail_max_segments = 20,
	trail_offset1 = vec( 0.3, 0.0, 0.0),
	trail_offset2 = vec(-0.3, 0.0, 0.0),
	trail_texture = load_texture("data/textures/spell_trail.png", "rgba8_srgb"),
	trail_color = 0xff0000ff,
	projectile_speed = 20.0,
	projectile_trajectory_height = 0.6,
	projectile_noise = 0.0,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "arrow_projectile",
	trail_type = "swipe",
	trail_max_segments = 20,
	trail_texture = load_texture("data/textures/spell_trail.png", "rgba8_srgb"),
	trail_color = 0xffffffff,
	trail_align_to_camera = true,
	trail_width = 0.2,
	projectile_speed = 50.0,
	projectile_trajectory_height = 0.2,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "dispel_bomb_projectile",
	particle_system = "bolt",	
	light_type = "point",
	light_position = vec(0.0, 2.0, 0.0),
	light_color = vec(0.0, 0.5, 1.0),
	light_intensity = 5.0,
	light_range = 15.0,
	trail_type = "swipe",
	trail_max_segments = 20,
	trail_offset1 = vec( 0.5, 0.0, 0.0),
	trail_offset2 = vec(-0.5, 0.0, 0.0),
	trail_texture = load_texture("data/textures/spell_trail.png", "rgba8_srgb"),
	trail_color = 0x0050ffff,
}

def_object{
	name = "dispel_bomb_hit",
	particle_system = "dispel_bomb_hit",
	particle_auto_destroy = true,
	light_type = "point",
	light_position = vec(0.0, 1.0, 0.0),
	light_color = vec(0.25, 0.5, 1.0),
	light_intensity = 100.0,
	light_range = 15.0,
	light_cast_shadow = false,
	light_fade_out = 0.5,
	spawn_sound = "bolt_hit",
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "shuriken_projectile",
	trail_type = "swipe",
	trail_max_segments = 20,
	trail_offset1 = vec( 0.3, 0.0, 0.0),
	trail_offset2 = vec(-0.3, 0.0, 0.0),
	trail_texture = load_texture("data/textures/spell_trail.png", "rgba8_srgb"),
	trail_color = 0xaaaaaaff,
	projectile_speed = 70.0,
	projectile_trajectory_height = 0.05,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "caltrops",
	tooltip = "Any non-flying creature entering the square suffers 2 damage.",
	tooltip_priority = 2,
	trigger_flags = TRIGGER_WALKING,
	flags = F_BLOCK_HAZARD + F_INTERACTIVE,
	on_enter_trigger = enter_caltrops,
	interaction_type = "move_to",
	interaction_draw_outline = false,
	interaction_tick_color = 0xff0000ff,
	destroy_after_battle = true,
}

def_object{
	name = "caltrop_projectile",
	model = "data/models/caltrop.fbx",
	model_material = "caltrop",
	model_clone_material = true,
	trail_type = "swipe",
	trail_max_segments = 20,
	trail_texture = load_texture("data/textures/spell_trail.png", "rgba8_srgb"),
	trail_align_to_camera = true,
	trail_width = 0.3,
	trail_color = 0x333333ff,
	projectile_speed = 40.0,
	projectile_trajectory_height = 0.05,
	timer = function(obj, _)
		local p = get_world_pos(obj)
		local t = (g.time * 1.5 - p.x * 0.1 + p.z * 0.03) % 2.3
		local intensity = math.smoothstep(t, 0.0, 0.08) * math.smoothstep(t, 0.5, 0.08) * 1.25 + 1.0
		update_texcoord_anim_material(obj.model_material_instance, 1.0, 1.0, 0.0, 0.0, intensity, intensity, intensity)
	end,
	tags = { "effect" },
	destroy_after_battle = true,
}

def_object{
	name = "bomb_projectile",
	model = "data/models/bomb.fbx",
	anims = {
		idle = "data/anims/bomb_idle.fbx",
	},
	trail_type = "swipe",
	trail_max_segments = 20,
	trail_offset1 = vec( 1.0, 1.5, 0.0),
	trail_offset2 = vec(-1.0, 1.5, 0.0),
	trail_texture = load_texture("data/textures/spell_trail.png", "rgba8_srgb"),
	trail_color = 0xaa5500ff,
	projectile_speed = 20.0,
	projectile_trajectory_height = 0.5,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "caustic_bomb_projectile",
	particle_system = "caustic_bomb_projectile",
	light_type = "point",
	light_position = vec(0.0, 2.0, 0.0),
	light_color = vec(1.0, 0.5, 0.0),
	light_intensity = 5.0,
	light_range = 10.0,
	timer = function(obj, t)
		-- animate emitter & light color
		local color = wavelength_color(math.sin(t * 1.5) * 0.5 + 0.5) * 2.0
		for i=1,shb_particle_system_emitter_count(obj.particles) do
			local emitter = shb_particle_system_emitter(obj.particles, i)
			shb_particle_emitter_color(emitter, 0, color)
		end
		if is_light(obj) then
			set_light_color(obj, color)
		end
	end,
}

def_object{
	name = "teleport_flash",
	model = "data/models/missing_model.fbx",	-- this will be overwritten dynamically
	particle_system = "teleport",
	particle_auto_destroy = true,
	light_type = "point",
	light_position = vec(0.0, 1.5, 0.0),
	light_color = vec(0.25, 0.5, 1.0),
	light_intensity = 15.0,
	light_range = 15.0,
	light_fade_out = 1.0,
	dynamic_geometry_func = function(obj, time)
		local tex = load_texture("data/textures/teleport_effect.png", "rgba8_srgb")
		local pos = get_world_pos(obj)

		local intensity = math.smoothstep(time, 0.0, 0.1) * math.smoothstep(time, 0.9, 0.1)

		shb_vertex_color(intensity, intensity, intensity, 1.0)

		local function ring(num_segments, r1, r2, h1, h2, base_u, scale_u)
			shb_blend_state("additive")
			shb_begin_vertices("quad_strip", tex)

			for i=0,num_segments do
				local t = i / num_segments
				local x = math.sin(t * math.pi * 2.0)
				local z = math.cos(t * math.pi * 2.0)

				shb_vertex_texcoord(base_u + t * scale_u, 1.0)
				shb_vertex_position(pos.x + x * r1, pos.y + h1, pos.z + z * r1)

				shb_vertex_texcoord(base_u + t * scale_u, 0.0)
				shb_vertex_position(pos.x + x * r2, pos.y + h2, pos.z + z * r2)
			end

			shb_end_vertices()
		end

		local scale = 1.0 + math.sin(time) * 0.1

		ring(10, 0.2 * scale, 0.4 * scale, 0.2 * scale, 8.0 * scale, time * 0.1, 1.0)

		local scale = 1.0 + math.cos(time) * 0.05

		ring(20, 0.4 * scale, 1.7 * scale, 0.2 * scale, 0.45 * scale, time * -0.2 + 0.5, 3.0)
		ring(20, 0.3 * scale, 1.3 * scale, 0.2 * scale, 0.45 * scale, time * 0.1 + 0.2, 2.0)
	end,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "reveal_site_effect",
	particle_system = "reveal_site",
	light_type = "point",
	light_position = vec(0.0, 1.5, 0.0),
	light_color = vec(0.25, 0.5, 1.0),
	light_intensity = 30.0,
	light_range = 15.0,
	light_fade_out = 2.0,
	dynamic_geometry_func = function(obj, time)
		local tex = load_texture("data/textures/teleport_effect.png", "rgba8_srgb")
		local pos = get_world_pos(obj)

		local intensity = math.smoothstep(time, 0.0, 0.1) * math.smoothstep(time, 0.9, 0.1)

		shb_depth_stencil_state("disabled")
		shb_vertex_color(intensity, intensity, intensity * 0.7, 1.0)

		local function ring(num_segments, r1, r2, h1, h2, base_u, scale_u)
			shb_blend_state("additive")
			shb_begin_vertices("quad_strip", tex)

			for i=0,num_segments do
				local t = i / num_segments
				local x = math.sin(t * math.pi * 2.0)
				local z = math.cos(t * math.pi * 2.0)

				shb_vertex_texcoord(base_u + t * scale_u, 1.0)
				shb_vertex_position(pos.x + x * r1, pos.y + h1, pos.z + z * r1)

				shb_vertex_texcoord(base_u + t * scale_u, 0.0)
				shb_vertex_position(pos.x + x * r2, pos.y + h2, pos.z + z * r2)
			end

			shb_end_vertices()
		end

		local scale = 1.0 + math.sin(time) * 0.1
		scale = scale * 1.3

		ring(10, 0.2 * scale, 0.4 * scale, 0.2 * scale, 15.0 * scale, time * 0.1, 1.0)

		shb_vertex_color(intensity * 2.0, intensity * 2.0, intensity * 1.0, 1.0)

		local scale = 1.0 + math.cos(time) * 0.05
		local k = 1.0 + time * 4.0

		ring(20, 0.4 * scale * k, 1.7 * scale * k, 0.2 * scale, 0.45 * scale, time * -0.2 + 0.5, 3.0)
		ring(20, 0.3 * scale * k, 1.3 * scale * k, 0.2 * scale, 0.45 * scale, time * 0.1 + 0.2, 2.0)

		if time > 2.0 then
			destroy(obj)
		end
	end,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "sacrificial_flames",
	particle_system = "sacrificial_flames",
	particle_auto_destroy = true,
	--[[
	timer = function(obj, time)
		-- animate pentagram light
		local pentagram_def = get_arch_obj("dungeon_pentagram")
		local pentagram = find_obj_at(obj.map, "dungeon_pentagram", obj.x, obj.y)
		if pentagram then
			local light = pentagram.light
			local color1 = pentagram_def.light_color
			local color2 = vec(1.0, 0.75, 0.0)
			local intensity1 = pentagram_def.light_intensity
			local intensity2 = 25.0
			if time < 0.1 then
				local t = math.smoothstep(time, 0.0, 0.1)
				shb_light_color(light, math.lerp(color1, color2, t))
				shb_light_intensity(light, math.lerp(intensity1, intensity2, t))
			else
				local t = math.smoothstep(time, 0.1, 2.0)
				shb_light_color(light, math.lerp(color2, color1, t))
				shb_light_intensity(light, math.lerp(intensity2, intensity1, t))
			end

			local noise = math.max(shb_noise(time * 5.0) * 1.5 + 1.0, 0.0)
			noise = math.lerp(noise, 1.0, math.smoothstep(time, 0.0, 1.5))
			shb_light_intensity(light, shb_light_intensity(light) * noise)
		end
	end,
	--]]
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "fall_effect",
	particle_system = "fall_effect",
	particle_auto_destroy = true,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "shield_flash",
	model = "data/models/sphere.fbx",
	model_position = vec(0.0, 1.0, 0.0),
	model_scale = 1.2,
	model_material = "shield_flash",
	model_clone_material = true,
	light_type = "point",
	light_position = vec(0.0, 1.0, 0.0),
	light_color = vec(0.0, 0.2, 1.0),
	light_intensity = 20.0,
	light_range = 10.0,
	timer = function(obj, t)
		local intensity = math.max(1.0 - t * 2.0, 0.0)
		update_envmap_material(obj.model_material_instance, intensity, 0.0)
		if intensity == 0.0 then destroy(obj) end
	end,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "burning_effect",
	particle_system = "burning",
	light_type = "point",
	light_position = vec(0.0, 1.2, 0.0),
	light_color = vec(1.0, 0.5, 0.25),
	light_intensity = 10.0,
	light_range = 10.0,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.7,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "burning_ground_effect",
	particle_system = "burning_ground",
	particle_auto_destroy = true,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "charged_effect",
	particle_system = "charged_condition",
	light_type = "point",
	light_position = vec(0.0, 1.2, 0.0),
	light_color = vec(0.0, 0.5, 1.0),
	light_intensity = 10.0,
	light_range = 10.0,
	light_flicker_frequency = 3.0,
	light_flicker_amplitude = 0.7,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "defending_effect",
	particle_system = "defending_condition",
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "sleep_effect",
	particle_system = "sleep_effect",
	flags = F_TEMPORARY,
	timer = function(obj, t)
		local x = math.sin(t * 3.0) * 0.25
		shb_node_position(obj.root_node, x, 0, 0)
	end,
	tags = { "effect" },
}

def_object{
	name = "dazed_effect",
	particle_system = "dazed_effect",
	light_type = "point",
	light_position = vec(0.0, 0.0, 0.0),
	light_color = vec(1.0, 1.0, 0.0),
	light_intensity = 10.0,
	light_range = 3.0,
	light_flicker_frequency = 3.0,
	light_flicker_amplitude = 0.7,
	trail_type = "swipe",
	trail_max_segments = 20,
	trail_offset1 = vec(0.0, -0.05, 0.0),
	trail_offset2 = vec(0.0, 0.05, 0.0),
	trail_texture = load_texture("data/textures/swipe.png", "rgba8_srgb"),
	trail_color = 0xffff00ff,
	flags = F_TEMPORARY,
	timer = function(obj, t)
		t = t * 1.5
		local x = math.sin(t * 7.0) * 0.5
		local y = shb_noise(t * 2.5) * 0.3
		local z = math.cos(t * 7.0) * 0.5
		shb_node_position(obj.root_node, x, y, z)
	end,
	tags = { "effect" },
}

def_object{
	name = "confused_effect",
	particle_system = "confused_effect",
	flags = F_TEMPORARY,
	timer = function(obj, t)
		local count = shb_particle_system_emitter_count(obj.particles)
		for i=1,count do
			local emitter = shb_particle_system_emitter(obj.particles, i)
			local t = math.sin(t) * 0.5 + 0.5 + (i-1) / count
			local color = wavelength_color(t)
			shb_particle_emitter_color(emitter, 0, color)
		end
	end,
	tags = { "effect" },
}

def_object{
	name = "rallied_effect",
	particle_system = "heart",
	particle_position = vec(0.0, 0.2, 0.1),
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "possessed_effect",
	particle_system = "possessed_condition",
	particle_auto_destroy = true,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "spawn_effect",
	particle_system = "spawn_effect",
	light_type = "point",
	light_position = vec(0.0, 1.5, 0.0),
	light_color = vec(0.0, 0.75, 1.0),
	light_intensity = 10.0,
	light_range = 5.0,
	light_flicker_frequency = 3.0,
	light_flicker_amplitude = 0.7,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "spawn_debris",
	particle_system = "spawn_debris",
	particle_auto_destroy = true,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "darkness_spawn",
	particle_system = "darkness_spawn",
	particle_auto_destroy = true,
	light_type = "point",
	light_position = vec(0.0, 1.5, 0.0),
	light_color = vec(0.0, 0.75, 1.0),
	light_intensity = 10.0,
	light_range = 5.0,
	light_flicker_frequency = 3.0,
	light_flicker_amplitude = 0.7,
	light_fade_out = 2.0,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

do
	local spawn_marker_timer_func = function(obj, time)
		-- update fader
		obj.reinforcement_marker_fader = obj.reinforcement_marker_fader or 0.0
		local delta = iff(get_flag(obj, F_DISABLED), -1.0, 1.0) * g.delta_time * 2.0
		obj.reinforcement_marker_fader = math.clamp(obj.reinforcement_marker_fader + delta, 0.0, 1.0)

		-- fade light & particles
		local t = obj.reinforcement_marker_fader
		set_light_intensity(obj, t * obj.arch.light_intensity)
		set_particle_system_opacity(obj, t)

		-- create material instances
		if obj.spinner_material_instance == nil then
			obj.spinner_material_instance = make_unique_material(obj, "spinner")
			obj.red_rays_scroll_instance = make_unique_material(obj, "red_rays_scroll")
		end

		-- HACK: tweak blending mode in snowy map to make the spawn markers easier to see
		if game_state.current_mission and get_mission(game_state.current_mission).environment == "snow" then
			shb_material_blend_state(obj.red_rays_scroll_instance, "translucent")
		end

		-- fade materials
		update_texcoord_anim_material(obj.spinner_material_instance, -1.0, 1.0, time * 1.5, 0.0, t, t, t, 1.0)
		update_texcoord_anim_material(obj.red_rays_scroll_instance, -1.0, 1.0, time * 0.15, 0.0, t, t, t, t)

		-- destroy marker automatically
		if get_flag(obj, F_DISABLED) and t == 0.0 then
			destroy(obj)
		end
	end

	def_object{
		name = "spawn_marker",
		ui_name = "Reinforcements",
		model = "data/models/reinforcement_marker.fbx",
		model_position = vec(0.0, 0.1, 0.0),
		model_clone_material = true,
		particle_system = "reinforcement_marker",
		light_type = "point",
		light_position = vec(0.0, 0.75, -0.5),
		light_color = vec(1.00, 0.00, 0.00),
		light_intensity = 20.0,
		light_range = 5.0,
		light_hide_snow = true,
		tooltip = "Reinforcements spawn in this square or nearest empty square at the start of next round.",
		tooltip_priority = 1,
		interaction_type = "move_to",
		capsule_height = 0.1,
		capsule_radius = 0.5,
		flags = F_INTERACTIVE,
		timer = spawn_marker_timer_func,
		destroy_after_battle = true,
	}

	def_object{
		name = "spawn_marker_undead_monk",
		ui_name = "Reinforcements",
		model = "data/models/reinforcement_marker.fbx",
		model_position = vec(0.0, 0.1, 0.0),
		model_clone_material = true,
		particle_system = "reinforcement_marker",
		light_type = "point",
		light_position = vec(0.0, 0.75, -0.5),
		light_color = vec(1.00, 0.00, 0.00),
		light_intensity = 20.0,
		light_range = 5.0,
		light_hide_snow = true,
		tooltip = "Reinforcements spawn in this square or nearest empty square at the start of next round.",
		tooltip_priority = 1,
		interaction_type = "move_to",
		capsule_height = 0.1,
		capsule_radius = 0.5,
		flags = F_INTERACTIVE,
		timer = spawn_marker_timer_func,
		ticker_func = function(obj, value)
			local map = obj.map
			local block_flags = F_BLOCK_MOVE + F_BLOCK_AI
			local x,y = random_location_near(map, obj.x, obj.y, 1, 1, block_flags)
			if x then
				local mob = spawn("undead_monk", map, x, y, -1)
				set_model_dissolve(mob, 1.0)
				fade_model(mob, 0.0, 0.5)
				update_triggers(map)
			end
			destroy(obj)
		end, 
		destroy_after_battle = true,
	}

	local spell_marker_timer_func = function(obj, time)
		-- update fader
		obj.spell_marker_fader = obj.spell_marker_fader or 0.0
		local delta = iff(get_flag(obj, F_DISABLED), -1.0, 1.0) * g.delta_time * 2.0
		obj.spell_marker_fader = math.clamp(obj.spell_marker_fader + delta, 0.0, 1.0)

		-- fade light & particles
		local t = obj.spell_marker_fader
		set_light_intensity(obj, t * obj.arch.light_intensity)
		set_particle_system_opacity(obj, t)

		-- create material instances
		if obj.spinner_material_instance == nil then
			obj.spinner_material_instance = make_unique_material(obj, "spinner_blue")
			obj.red_rays_scroll_instance = make_unique_material(obj, "blue_rays_scroll")
		end

		-- fade materials
		update_texcoord_anim_material(obj.spinner_material_instance, -1.0, 1.0, time * 1.5, 0.0, t, t, t, 1.0)
		update_texcoord_anim_material(obj.red_rays_scroll_instance, -1.0, 1.0, time * 0.15, 0.0, t, t, t, t)

		-- destroy marker automatically
		if get_flag(obj, F_DISABLED) and t == 0.0 then
			destroy(obj)
		end
	end

	def_object{
		name = "spell_marker",
		model = "data/models/spell_marker.fbx",
		model_clone_material = true,
		particle_system = "spell_marker",
		light_type = "point",
		light_position = vec(0.0, 0.4, 0.0),
		light_color = vec(0.05, 0.50, 1.00),
		light_intensity = 20.0,
		light_range = 8.0,
		light_flicker_frequency = 8.0,
		light_flicker_amplitude = 1.0,
		flags = F_SEEN_BY_RAYS + F_INTERACTIVE,
		interaction_type = "move_to",
		tooltip_priority = 2,
		timer = spell_marker_timer_func,
	}
end

def_object{
	name = "lightning_damage",
	particle_system = "lightning_damage",
	particle_auto_destroy = true,
	light_type = "point",
	light_position = vec(0.0, 1.2, 0.0),
	light_color = vec(0.0, 0.5, 1.0),
	light_intensity = 10.0,
	light_range = 10.0,
	light_fade_out = 1.0,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "lightning_bolt_flash",
	light_type = "point",
	light_color = vec(0.25, 0.5, 1.0),
	light_position = vec(0.0, 1.0, 0.0),
	light_intensity = 30.0,
	light_range = 15.0,
	light_cast_shadow = false,
	light_fade_out = 0.5,
	light_auto_destroy = true,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "fire_damage",
	particle_system = "fire_damage",
	particle_auto_destroy = true,
	light_type = "point",
	light_position = vec(0.0, 1.2, 0.0),
	light_color = vec(1.0, 0.75, 0.0),
	light_intensity = 10.0,
	light_range = 10.0,
	timer = function(obj, time)
		local light = obj.light

		local noise = math.max(shb_noise(time * 5.0) * 1.5 + 1.0, 0.0)
		noise = math.lerp(noise, 1.0, math.smoothstep(time, 0.0, 1.5))

		local intensity = math.smoothstep(time, 0.0, 0.1) * math.smoothstep(time, 2.0, 0.1) * noise
		set_light_intensity(obj, intensity)
	end,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "cold_damage",
	particle_system = "cold_damage",
	particle_auto_destroy = true,
	light_type = "point",
	light_position = vec(0.0, 1.2, 0.0),
	light_color = vec(0.0, 0.5, 1.0),
	light_intensity = 10.0,
	light_range = 10.0,
	light_flicker_frequency = 0.6,
	light_flicker_amplitude = 0.6,
	light_fade_out = 2.5,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "water_damage",
	particle_system = "water_damage",
	particle_auto_destroy = true,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "sorceress_beam_damage",
	particle_system = "sorceress_beam_damage",
	particle_auto_destroy = true,
	light_type = "point",
	light_position = vec(0.0, 1.2, 0.0),
	light_color = vec(0.0, 1.0, 0.5),
	light_intensity = 10.0,
	light_range = 10.0,
	light_fade_out = 1.0,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "sorceress_death",
	particle_system = "sorceress_death",
	particle_auto_destroy = true,
	light_type = "point",
	light_position = vec(0.0, 8.0, 0.0),
	light_color = vec(0.2, 1.0, 0.2),
	light_intensity = 100.0,
	light_range = 50.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 512,
	light_fade_in = 5.0,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "cure_effect",
	particle_system = "cure",
	particle_auto_destroy = true,
	light_type = "point",
	light_position = vec(0.0, 1.2, 0.0),
	light_color = vec(0.0, 0.6, 1.0),
	light_intensity = 10.0,
	light_range = 10.0,
	light_fade_out = 0.5,	
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "lure_effect",
	particle_system = "lure",
	particle_auto_destroy = true,
	light_type = "point",
	light_position = vec(0.0, 1.2, 0.0),
	light_color = vec(0.0, 0.6, 1.0),
	light_intensity = 10.0,
	light_range = 10.0,
	light_fade_out = 0.5,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "lava_splash",
	-- TODO play splash sound
	particle_system = "lava_splash",
	particle_auto_destroy = true,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "lava_splash_big",
	-- TODO play splash sound
	particle_system = "lava_splash_big",
	--particle_auto_destroy = true,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "water_splash",
	spawn_sound = "move_water_enter",
	particle_system = "water_splash",
	particle_auto_destroy = true,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "forcefield_effect",
	ui_name = "Forcefield",
	model = "data/models/forcefield.fbx",
	model_position = vec(0.0, 0.05, 0.0),
	particle_system = "forcefield",
	light_type = "point",
	light_position = vec(0.0, 1.75, 0.0),
	light_color = vec(0.2, 0.5, 1.0),
	light_intensity = 20.0,
	light_range = 10.0,
	light_flicker_frequency = 1.6,
	light_flicker_amplitude = 0.4,
	flags = F_BLOCK_ALL + F_INTERACTIVE,
	on_spawn = enforce_forcefield,
	on_init = enforce_forcefield,
	on_destroy = remove_forcefield,
	on_tooltip = tooltip_forcefield,
	ticker_func = function(obj, value)
		if value == 0 then
			add_damage_text("Expired", obj)
			shatter_forcefield(obj)
		end
	end,
}

def_object{
	name = "druidstone_barrier",
	model = "data/models/druidstone_barrier.fbx",
	particle_system = "druidstone_barrier",
	light_type = "spot",
		light_position = vec(1.8, 3.0, -4.0),
		light_rotation = vec(math.pi * -0.5, 0.0, 1.5),
		light_color = vec(0.00, 0.63, 1.00),
		light_intensity = 50.0,
		light_range = 35.0,
		light_spot_angle = 179.0,
	tags = { "effect" },
}

def_object{
	name = "forcefield_shatter_effect",
	model = "data/models/forcefield_shatter.fbx",
	anims = {
		shatter = "data/anims/forcefield_shatter.fbx",
	},
	anim_play_on_init = "shatter",
	on_spawn = function(obj)
		obj.forcefield_material_instance = make_unique_material(obj, "forcefield")
		obj.blue_beam_material_instance = make_unique_material(obj, "blue_beam")
	end,
	spawn_sound = "forcefield_shatter",
	timer = function(obj, t)
		-- update materials
		if obj.forcefield_material_instance then
			update_texcoord_anim_material(obj.forcefield_material_instance, 0.0, 0.0, t * 0.04 + 0.56, 0.5)
			local scale = math.linearstep(t, 1.5, 0.0)
			update_texcoord_anim_material(obj.blue_beam_material_instance, 0.6 * scale, 1.0 * scale, t * 0.05, t * 0.33)
		end
	end,
	flags = F_TEMPORARY,
}

def_object{
	name = "forcefield_platform",
	ui_name = "Forcefield Platform",
	model = "data/models/forcefield.fbx",
	model_position = vec(0.0, 0.05, 0.0),
	--model_position = vec(0.0, -3.5, 0.0),
	particle_system = "forcefield",
	light_type = "point",
	light_position = vec(0.0, -2.75, 0.0),
	light_color = vec(0.2, 0.5, 1.0),
	light_intensity = 20.0,
	light_range = 10.0,
	light_flicker_frequency = 1.6,
	light_flicker_amplitude = 0.4,
	--flags = F_BLOCK_ALL + F_INTERACTIVE,
}

def_object{
	name = "tetra_burst",
	particle_system = "tetra_burst",
	particle_auto_destroy = true,
	--light_type = "point",
	--light_color = vec(1.0, 0.2, 1.0),
	--light_intensity = 20.0,
	--light_range = 15.0,
	--light_cast_shadow = true,
	--light_blur_shadow = true,
	--light_shadow_map_size = 128,	
	--light_fade_out = 0.5,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "puzzle_block_move",
	particle_system = "puzzle_block_move",
	particle_auto_destroy = true,
	flags = F_TEMPORARY,
	tags = { "effect" },
}

def_object{
	name = "defence_crystal_beam_effect",
	light_type = "point",
	light_position = vec(0.0, 3.5, 0.0),
	light_color = vec(0.0, 1.0, 0.5),
	light_intensity = 100.0,
	light_range = 25.0,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.5,
	light_cast_shadow = true,
	light_blur_shadow_map = true,
	light_shadow_map_size = 512,
	dynamic_geometry_func = function(obj, time)
		local tex = load_texture("data/textures/defence_crystal_beam_effect.png", "rgba8_srgb")
		local pos = get_world_pos(obj)

		local infinite_duration = obj._infinite_duration

		local master_intensity = math.max(5.0 - time * 5.0, 1.0)
		local intensity = master_intensity * 50.0 * (math.sin(g.time * 5.0) * 0.5 + 1.0)

		local light_intensity = master_intensity * obj.arch.light_intensity
		if not infinite_duration then
			light_intensity = light_intensity * math.smoothstep(time, 3.0, 1.5)
		end
		set_light_intensity(obj, light_intensity)

		local handle = shb_sampler_state_handle("linear_mip_linear", "wrap", "clamp", "clamp")
		shb_samplers(0, handle)

		shb_vertex_color(intensity, intensity, intensity, 1.0)

		local function ring(num_segments, r1, r2, h1, h2, base_u, scale_u)
			shb_blend_state("additive")
			shb_begin_vertices("quad_strip", tex)

			for i=0,num_segments do
				local t = i / num_segments
				local x = math.sin(t * math.pi * 2.0)
				local z = math.cos(t * math.pi * 2.0)

				shb_vertex_texcoord(base_u + t * scale_u, 1.0)
				shb_vertex_position(pos.x + x * r1, pos.y + h1, pos.z + z * r1)

				shb_vertex_texcoord(base_u + t * scale_u, 0.0)
				shb_vertex_position(pos.x + x * r2, pos.y + h2, pos.z + z * r2)
			end

			shb_end_vertices()
		end

		local scale = 0.5 + math.sin(time) * 0.1
		if not infinite_duration then
			scale = scale * math.smoothstep(time, 3.0, 1.5)
		end
		local height_factor = 10.0

		ring(10, 0.2 * scale, 0.4 * scale, 0.2 * scale, 20.0, time * 0.3, 1.0)

		local scale = 1.5 + math.cos(time) * 0.05

		local intensity = master_intensity * 1.5
		if not infinite_duration then
			intensity = intensity * math.smoothstep(time, 3.0, 1.5)
		end
		shb_vertex_color(intensity, intensity, intensity, 1.0)

		ring(20, 0.4 * scale, 1.7 * scale, 0.2 * scale, 0.45 * scale, time * -0.5 + 0.5, 3.0)
		ring(20, 0.3 * scale, 1.3 * scale, 0.2 * scale, 0.45 * scale, time * 0.5 + 0.2, 2.0)
	end,
	flags = F_TEMPORARY,
}

def_object{
	name = "defence_crystal_beam_effect_build_up",
	model = "data/models/magic_circle.fbx",
	model_position = vec(0.0, 0.05, 0.0),
	model_material = "magic_circle",
	model_clone_material = true,
	light_type = "point",
	light_position = vec(0.0, 1.0, 0.0),
	light_color = 0x00ff55ff,
	light_intensity = 25.0,
	light_range = 8.0,
	light_fade_in = 1.5,
	particle_system = "defence_crystal_beam_effect",
	flags = F_TEMPORARY,
	timer = function(obj, t)
		-- fade mesh color multiplier
		local color_active = tvec(0, 255, 100, 0)
		local color_inactive = tvec(0, 0, 0, 0)
		local t = math.clamp((shb_light_intensity(obj.light) - 0) / 20.0, 0.0, 1.0)
		local color = math.lerp(color_inactive, color_active, t) / 255.0
		local cbuf = shb_material_cbuffer(obj.model_material_instance)
		shb_map_cbuffer(cbuf)
		shb_cbuffer_float4(cbuf, "color_multiplier", color)
		shb_unmap_cbuffer(cbuf)
	end,
}

def_object{
	name = "defence_crystal",
	ui_name = "Aether Cache",
	model = "data/models/defence_crystal.fbx",
	anims = {
		idle = "data/anims/defence_crystal.fbx",
	},
	model_cast_shadow = false,
	light_type = "point",
	light_position = vec(0.0, 2.5, 0.0),
	light_color = vec(0.12, 1.00, 0.00),
	light_flicker_frequency = 1.0,
	light_flicker_amplitude = 0.25,
	light_intensity = 15.0,
	light_range = 11.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	particle_system = "defence_crystal_beam_effect",
	mob_hp = 7,
	mob_damage = 0,
	mob_armor = 1,
	mob_thing = true,
	mob_xp = 0,
	mob_size = 1,
	on_tooltip = tooltip_mob,
	immunities = IMMUNE_ALL,
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS + F_INTERACTIVE + F_HIDE_CLOSEUP,
	mob_flags = MF_IMMOVABLE,
	mob_bullet_text = "Destroy to lower Black-hooded Man's armor by 1.",
	mob_description = "An artifact left behind by the builders of the temple that holds the Druidstone, this mysterious device holds an intense concentration of life energy.",
	hit_sound = "none",
	mob_spawn_on_death = "defence_crystal_shatter",
	draw_spells = { "protect", "shield" }
}

def_object{
	name = "defence_crystal_shatter",
	model = "data/models/defence_crystal_shatter.fbx",
	particle_system = "defence_crystal_shatter",
	anim_play_on_init = "shatter",
	anims = {
		shatter = "data/anims/defence_crystal_shatter.fbx",
	},
	light_type = "point",
	light_position = vec(0.0, 2.5, 0.0),
	light_color = vec(0.2, 1.00, 0.2),
	light_flicker_frequency = 1.0,
	light_flicker_amplitude = 0.25,
	light_intensity = 50.0,
	light_range = 11.0,
	light_fade_out = 1.0,
	on_game_loaded = function(obj)
		sample_anim(obj, "shatter", 100.0)
		kill_particles(obj)
	end,
}

def_object{
	name = "librarians_book_effect_build_up",
	model = "data/models/magic_circle.fbx",
	model_position = vec(0.0, 0.05, 0.0),
	model_material = "magic_circle",
	model_clone_material = true,
	light_type = "point",
	light_position = vec(0.0, 1.0, 0.0),
	light_color = 0x00ff55ff,
	light_intensity = 25.0,
	light_range = 8.0,
	light_fade_in = 1.5,
	particle_system = "defence_crystal_beam_effect",
	flags = F_TEMPORARY,
	timer = function(obj, t)
		-- fade mesh color multiplier
		local color_active = tvec(0, 255, 100, 0)
		local color_inactive = tvec(0, 0, 0, 0)
		local t = math.clamp(shb_light_intensity(obj.light) / 20.0, 0.0, 1.0)
		local color = shb_lerp_color(0, 0x00ff77ff, t)

		local cbuf = shb_material_cbuffer(obj.model_material_instance)
		shb_map_cbuffer(cbuf)
		shb_cbuffer_float4(cbuf, "color_multiplier", color)
		shb_unmap_cbuffer(cbuf)
	end,
}

def_object{
	name = "librarians_book_effect",
	light_type = "point",
	light_position = vec(0.0, 1.0, 0.0),
	light_color = vec(0.0, 0.1, 0.0),
	light_intensity = 500.0,
	light_range = 15.0,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.25,
	dynamic_geometry_func = function(obj, time)
		local tex = load_texture("data/textures/librarians_book_effect.png", "dxt1_srgb")
		local pos = get_world_pos(obj)
		local intensity = math.smoothstep(time, 0.0, 0.2) * (math.smoothstep(time, 1.4, 0.5)^2.0) * 0.7

		set_light_intensity(obj, math.smoothstep(time, 1.0, 0.5) * obj.arch.light_intensity)

		shb_vertex_color(intensity, intensity, intensity, 1.0)

		local function ring(num_segments, r1, r2, h1, h2, base_u, scale_u)
			shb_blend_state("additive")
			shb_begin_vertices("quad_strip", tex)

			for i=0,num_segments do
				local t = i / num_segments
				local x = math.sin(t * math.pi * 2.0)
				local z = math.cos(t * math.pi * 2.0)

				shb_vertex_texcoord(base_u + t * scale_u, 1.0)
				shb_vertex_position(pos.x + x * r1, pos.y + h1, pos.z + z * r1)

				shb_vertex_texcoord(base_u + t * scale_u, 0.0)
				shb_vertex_position(pos.x + x * r2, pos.y + h2, pos.z + z * r2)
			end

			shb_end_vertices()
		end

		local scale = 1.0 + time * 7.0
		local h = 1.5

		ring(20, 0.2*2 * scale, 1.3 * scale, h + 0.2 * scale, h + 0.45 * scale, time * 0.25*2 + 0.2, 2.0*2)
		ring(20, 0.3*2 * scale, 1.7 * scale, h + 0.2 * scale, h + 0.45 * scale, time * 0.5*2 + 0.2, 2.5*2)
		ring(20, 0.4*2 * scale, 2.0 * scale, h + 0.2 * scale, h + 0.45 * scale, time * -0.2*2 + 0.5, 3.0*2)

		if time > 1.4 then destroy(obj) end
	end
}

def_object{
	name = "nuke_projectile",
	particle_system = "nuke_projectile",	
	light_type = "point",
	light_position = vec(0.0, 2.0, 0.0),
	light_color = vec(0.0, 1.0, 0.5),
	light_intensity = 5.0,
	light_range = 15.0,
	trail_type = "swipe",
	trail_max_segments = 20,
	trail_offset1 = vec( 0.5, 0.0, 0.0),
	trail_offset2 = vec(-0.5, 0.0, 0.0),
	trail_texture = load_texture("data/textures/spell_trail.png", "rgba8_srgb"),
	trail_color = 0x00ff88ff,
}

def_object{
	name = "nuke_explosion",
	light_type = "point",
	light_position = vec(0.0, 3.5, 0.0),
	light_color = vec(0.01, 1.0, 0.5),
	light_intensity = 50.0,
	light_range = 25.0,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.5,
	light_cast_shadow = true,
	light_blur_shadow_map = true,
	light_shadow_map_size = 512,
	particle_system = "nuke_explosion",
	dynamic_geometry_func = function(obj, time)
		local tex = load_texture("data/textures/green_rays.png", "dxt1_srgb")
		local pos = get_world_pos(obj)

		local master_intensity = math.max(3.0 - time * 3.0, 1.0)
		local intensity = master_intensity * 2000.0 * (math.sin(g.time * 5.0) * 0.5 + 1.0)

		set_light_intensity(obj, master_intensity * obj.arch.light_intensity * math.smoothstep(time, 1.3, 0.8))

		local handle = shb_sampler_state_handle("linear_mip_linear", "wrap", "clamp", "clamp")
		shb_samplers(0, handle)

		shb_vertex_color(intensity, intensity, intensity, 1.0)

		local function ring(num_segments, r1, r2, h1, h2, base_u, scale_u)
			shb_blend_state("additive")
			shb_begin_vertices("quad_strip", tex)

			for i=0,num_segments do
				local t = i / num_segments
				local x = math.sin(t * math.pi * 2.0)
				local z = math.cos(t * math.pi * 2.0)

				shb_vertex_texcoord(base_u + t * scale_u, 0.0)
				shb_vertex_position(pos.x + x * r1, pos.y + h1, pos.z + z * r1)

				shb_vertex_texcoord(base_u + t * scale_u, 1.0)
				shb_vertex_position(pos.x + x * r2, pos.y + h2, pos.z + z * r2)
			end

			shb_end_vertices()
		end

		local scale = 0.5 + math.sin(time) * 0.1
		scale = scale * math.smoothstep(time, 1.3, 0.8)
		local height_factor = 10.0

		ring(10, 0.2 * scale, 0.4 * scale, 0.2 * scale, 20.0, time * 0.3, 1.0)

		local scale = (1.5 + math.cos(time) * 0.05) * 3.0

		local intensity = master_intensity * 1.0
		intensity = intensity * math.smoothstep(time, 1.3, 0.7)
		shb_vertex_color(intensity, intensity, intensity, 1.0)

		local radius = time * 10.0
		ring(20, radius * 0.5, radius * 0.5, 0.0, 6.0, time * 0.5 * 0.5 + 0.2, 2.0)
		ring(20, radius, radius, 0.0, 2.0, time * 0.5 * 0.5 + 0.2, 2.0)

		if time > 2.0 then destroy(obj) end
	end,
}

def_object{
	name = "pull_chain",
	model = "data/models/pull_chain.fbx",
	flags = F_TEMPORARY,
}

def_object{
	name = "pull_chain_spearhead",
	model = "data/models/pull_chain_spearhead.fbx",
	flags = F_TEMPORARY,
}

def_object{
	name = "pendant_flash",
	particle_system = "pendant_flash",
	particle_auto_destroy = true,	
	particle_position = vec(0.0, 0.2, 0.15),
	light_type = "point",
	light_position = vec(0.0, 0.2, 0.15),
	light_color = vec(0.0, 1.0, 0.5),
	light_intensity = 10.0,
	light_range = 10.0,
	light_fade_in = 0.5,
	flags = F_TEMPORARY,
}

---------------------------------------------------
-- Swipes
---------------------------------------------------

function def_swipe(name, material, speed)
	def_object{
		name = name,
		model = str("data/models/%s.fbx", name),
		model_material = material,
		model_clone_material = true,
		timer = function(obj, t)
			t = t * speed

			-- create constant buffer
			if obj.swipe_cbuffer == nil then
				local material = obj.model_material_instance
				local shader = shb_material_shader(material, "static_mesh_transparent")
				obj.swipe_cbuffer = shb_create_cbuffer_from_reflection(shader, "swipe")
				shb_material_cbuffer(material, obj.swipe_cbuffer)
			end

			local cbuf = obj.swipe_cbuffer
			shb_map_cbuffer(cbuf)
			shb_cbuffer_float2(cbuf, "texcoord_offset", t * 2.0, 0.0)
			shb_unmap_cbuffer(cbuf)

			if t > 1.0 then destroy(obj) end
		end,
		flags = F_TEMPORARY,
		tags = { "effect" },
		editor_ignore_asset = true,
	}
end

--         name						material		speed
def_swipe("weapon_swipe1",			"swipe1",		4.0)
def_swipe("weapon_swipe2",			"swipe1",		4.0)
def_swipe("weapon_swipe_whirlwind",	"swipe2",		2.1)

---------------------------------------------------
-- Heroes
---------------------------------------------------

def_object{
	name = "hero",
	model = "data/models/hero.fbx",
	model_can_emit_particles = true,
	anims = {
		-- default anim set
		idle = "data/anims/hero_idle.fbx",
		attack = "data/anims/hero_attack1.fbx",
		attack_crossbow_left = "data/anims/hero_attack_crossbow_left.fbx",
		attack_crossbow_right = "data/anims/hero_attack_crossbow_right.fbx",
		--attack2 = "data/anims/hero_attack2.fbx",
		attack_build_up = "data/anims/hero_attack_build_up.fbx",
		power_attack = "data/anims/hero_power_attack.fbx",
		cast_spell = "data/anims/hero_cast_spell.fbx",
		call_shido = "data/anims/hero_call_shido.fbx",
		call_stirling = "data/anims/hero_call_stirling.fbx",
		throw = "data/anims/hero_throw.fbx",
		throw_left = "data/anims/hero_throw_left.fbx",
		throw_right = "data/anims/hero_throw_right.fbx",
		hit_front1 = "data/anims/hero_hit_front1.fbx",
		hit_front2 = "data/anims/hero_hit_front2.fbx",
		hit_back = "data/anims/hero_hit_back.fbx",
		hit_left = "data/anims/hero_hit_left.fbx",
		hit_right = "data/anims/hero_hit_right.fbx",
		move1 = "data/anims/hero_move1.fbx",
		move2 = "data/anims/hero_move2.fbx",
		move_turn_left = "data/anims/hero_move_turn_left.fbx",
		move_turn_right = "data/anims/hero_move_turn_right.fbx",
		turn_left_180 = "data/anims/hero_turn_left_180.fbx",
		turn_left_90 = "data/anims/hero_turn_left_90.fbx",
		turn_left_45 = "data/anims/hero_turn_left_45.fbx",
		turn_right_90 = "data/anims/hero_turn_right_90.fbx",
		turn_right_45 = "data/anims/hero_turn_right_45.fbx",	
		tornado = "data/anims/hero_tornado.fbx",	
		open_door = "data/anims/hero_open_door.fbx",
		die = "data/anims/hero_die.fbx",
		walk = "data/anims/hero_walk.fbx",
		walk_start = "data/anims/hero_walk_start.fbx",
		whirlwind = "data/anims/hero_whirlwind.fbx",
		flurry = "data/anims/hero_flurry.fbx",
		flame_mihr = "data/anims/hero_flame_mihr.fbx",
		--block = "data/anims/hero_block.fbx",
		charge = "data/anims/hero_charge.fbx",
		centipede_poison_attack = "data/anims/hero_centipede_poison_attack.fbx",
		use_potion = "data/anims/hero_use_potion.fbx",
		victory = "data/anims/hero_victory1.fbx",
		victory2 = "data/anims/hero_victory1.fbx",
		victory3 = "data/anims/hero_victory1.fbx",
		stand_up = "data/anims/hero_stand_up.fbx",
		sleep = "data/anims/hero_sleep.fbx",
		sleep_campfire = "data/anims/hero_sleep_campfire.fbx",
		rescue = "data/anims/hero_rescue_shido.fbx",
		crouch_begin = "data/anims/hero_crouch_begin.fbx",
		crouch = "data/anims/hero_crouch.fbx",
		crouch_end = "data/anims/hero_crouch_end.fbx",
		danger_sense = "data/anims/hero_danger_sense.fbx",
		guard = "data/anims/hero_guard.fbx",
		stop_her = "data/anims/hero_attack1.fbx",

		-- talking
		talk_generic = "data/anims/hero_talk_generic.fbx",
		talk_question = "data/anims/hero_talk_question.fbx",
		talk_look_around = "data/anims/hero_talk_look_around.fbx",
		talk_look_up = "data/anims/hero_talk_look_up.fbx",
		talk_shake_head = "data/anims/hero_talk_shake_head.fbx",
		talk_curse = "data/anims/hero_talk_curse.fbx",
		talk_campfire = "data/anims/hero_talk_campfire.fbx",
		idle_campfire = "data/anims/hero_idle_campfire.fbx",

		-- custom anims for druidstone temple
		mental_struggle = "data/anims/hero_mental_struggle.fbx",
		separation = "data/anims/hero_separation.fbx",
		fall_to_knees = "data/anims/hero_falls_to_knees.fbx",

		-- the end
		ending = "data/anims/hero_ending.fbx",
		ending_loop = "data/anims/hero_ending_loop.fbx",
		ending_final = "data/anims/hero_ending_final.fbx",

		-- anim set 1: one-handed melee (swords)
		["anim_set1.idle"] = "data/anims/hero_anim_set_1/hero_idle.fbx",
		["anim_set1.attack"] = "data/anims/hero_anim_set_1/hero_attack1.fbx",
		["anim_set1.attack2"] = "data/anims/hero_anim_set_1/hero_attack2.fbx",
		["anim_set1.attack_build_up"] = "data/anims/hero_anim_set_1/hero_attack_build_up.fbx",
		["anim_set1.hit_front1"] = "data/anims/hero_anim_set_1/hero_hit_front1.fbx",
		["anim_set1.hit_front2"] = "data/anims/hero_anim_set_1/hero_hit_front2.fbx",
		["anim_set1.hit_back"] = "data/anims/hero_anim_set_1/hero_hit_back.fbx",
		["anim_set1.hit_left"] = "data/anims/hero_anim_set_1/hero_hit_left.fbx",
		["anim_set1.hit_right"] = "data/anims/hero_anim_set_1/hero_hit_right.fbx",
		["anim_set1.move_start"] = "data/anims/hero_anim_set_1/hero_move_start.fbx",
		["anim_set1.move1"] = "data/anims/hero_anim_set_1/hero_move1.fbx",
		["anim_set1.move2"] = "data/anims/hero_anim_set_1/hero_move2.fbx",
		["anim_set1.move_turn_left"] = "data/anims/hero_anim_set_1/hero_move_turn_left.fbx",
		["anim_set1.move_turn_right"] = "data/anims/hero_anim_set_1/hero_move_turn_right.fbx",
		["anim_set1.turn_left_180"] = "data/anims/hero_anim_set_1/hero_turn_left_180.fbx",
		["anim_set1.turn_left_90"] = "data/anims/hero_anim_set_1/hero_turn_left_90.fbx",
		["anim_set1.turn_left_45"] = "data/anims/hero_anim_set_1/hero_turn_left_45.fbx",
		["anim_set1.turn_right_90"] = "data/anims/hero_anim_set_1/hero_turn_right_90.fbx",
		["anim_set1.turn_right_45"] = "data/anims/hero_anim_set_1/hero_turn_right_45.fbx",	
		["anim_set1.open_door"] = "data/anims/hero_anim_set_1/hero_open_door.fbx",	
		["anim_set1.whirlwind"] = "data/anims/hero_anim_set_1/hero_whirlwind.fbx",
		["anim_set1.flurry"] = "data/anims/hero_anim_set_1/hero_flurry.fbx",
		--["anim_set1.block"] = "data/anims/hero_anim_set_1/hero_block.fbx",
		--["anim_set1.charge"] = "data/anims/hero_anim_set_1/hero_charge.fbx",
		["anim_set1.victory"] = "data/anims/hero_anim_set_1/hero_victory1.fbx",
		["anim_set1.victory2"] = "data/anims/hero_anim_set_1/hero_victory2.fbx",
		["anim_set1.victory3"] = "data/anims/hero_anim_set_1/hero_victory3.fbx",
		["anim_set1.sleep"] = "data/anims/hero_anim_set_1/hero_sleep.fbx",
		["anim_set1.stop_her"] = "data/anims/hero_anim_set_1/hero_stop_her.fbx",
		["anim_set1.power_attack"] = "data/anims/hero_anim_set_1/hero_power_attack.fbx",
		["anim_set1.guard"] = "data/anims/hero_anim_set_1/hero_guard.fbx",
		["anim_set1.remove_weapon"] = "data/anims/hero_anim_set_1/hero_remove_weapon.fbx",
		["anim_set1.take_weapon"] = "data/anims/hero_anim_set_1/hero_take_weapon.fbx",
		
		-- anim set 2: two-handed melee (staff)
		-- ["anim_set2.idle"] = "data/anims/hero_anim_set_2/hero_idle.fbx",
		-- ["anim_set2.attack"] = "data/anims/hero_anim_set_2/hero_attack1.fbx",
		-- ["anim_set2.attack2"] = "data/anims/hero_anim_set_2/hero_attack2.fbx",
		-- ["anim_set2.attack_build_up"] = "data/anims/hero_anim_set_2/hero_attack_build_up.fbx",
		-- ["anim_set2.cast_spell"] = "data/anims/hero_anim_set_2/hero_cast_spell.fbx",
		-- ["anim_set2.move1"] = "data/anims/hero_anim_set_2/hero_move1.fbx",
		-- ["anim_set2.move2"] = "data/anims/hero_anim_set_2/hero_move2.fbx",
		-- ["anim_set2.move_turn_left"] = "data/anims/hero_anim_set_2/hero_move_turn_left.fbx",
		-- ["anim_set2.move_turn_right"] = "data/anims/hero_anim_set_2/hero_move_turn_right.fbx",
		-- ["anim_set2.whirlwind"] = "data/anims/hero_anim_set_2/hero_whirlwind.fbx",
		-- ["anim_set2.flurry"] = "data/anims/hero_anim_set_2/hero_flurry.fbx",
		-- ["anim_set2.block"] = "data/anims/hero_anim_set_2/hero_block.fbx",
		-- ["anim_set2.charge"] = "data/anims/hero_anim_set_2/hero_charge.fbx",
		-- ["anim_set2.sleep"] = "data/anims/hero_anim_set_2/hero_sleep.fbx",

		-- anim set 3: two-handed ranged (bow)
		["anim_set3.idle"] = "data/anims/hero_anim_set_1/hero_idle.fbx",
	    ["anim_set3.attack"] = "data/anims/hero_anim_set_3/hero_attack1.fbx",
		["anim_set3.attack_build_up"] = "data/anims/hero_anim_set_3/hero_attack_build_up.fbx",	
		["anim_set3.hit_front1"] = "data/anims/hero_anim_set_1/hero_hit_front1.fbx",
		["anim_set3.hit_front2"] = "data/anims/hero_anim_set_1/hero_hit_front2.fbx",
		["anim_set3.hit_back"] = "data/anims/hero_anim_set_1/hero_hit_back.fbx",
		["anim_set3.hit_left"] = "data/anims/hero_anim_set_1/hero_hit_left.fbx",
		["anim_set3.hit_right"] = "data/anims/hero_anim_set_1/hero_hit_right.fbx",	
		["anim_set3.move_start"] = "data/anims/hero_anim_set_1/hero_move_start.fbx",
		["anim_set3.move1"] = "data/anims/hero_anim_set_1/hero_move1.fbx",
		["anim_set3.move2"] = "data/anims/hero_anim_set_1/hero_move2.fbx",
		["anim_set3.move_turn_left"] = "data/anims/hero_anim_set_1/hero_move_turn_left.fbx",
		["anim_set3.move_turn_right"] = "data/anims/hero_anim_set_1/hero_move_turn_right.fbx",
		["anim_set3.turn_left_180"] = "data/anims/hero_anim_set_1/hero_turn_left_180.fbx",
		["anim_set3.turn_left_90"] = "data/anims/hero_anim_set_1/hero_turn_left_90.fbx",
		["anim_set3.turn_left_45"] = "data/anims/hero_anim_set_1/hero_turn_left_45.fbx",
		["anim_set3.turn_right_90"] = "data/anims/hero_anim_set_1/hero_turn_right_90.fbx",
		["anim_set3.turn_right_45"] = "data/anims/hero_anim_set_1/hero_turn_right_45.fbx",	
		["anim_set3.whirlwind"] = "data/anims/hero_anim_set_1/hero_whirlwind.fbx",
		["anim_set3.open_door"] = "data/anims/hero_anim_set_1/hero_open_door.fbx",			
		["anim_set3.victory"] = "data/anims/hero_anim_set_3/hero_victory1.fbx",
		["anim_set3.victory2"] = "data/anims/hero_anim_set_3/hero_victory1.fbx",
		["anim_set3.victory3"] = "data/anims/hero_anim_set_3/hero_victory3.fbx",
		["anim_set3.power_attack"] = "data/anims/hero_anim_set_7/hero_power_attack.fbx",
		["anim_set3.guard"] = "data/anims/hero_anim_set_3/hero_guard.fbx",
		["anim_set3.flurry"] = "data/anims/hero_anim_set_1/hero_flurry.fbx",
		["anim_set3.sleep"] = "data/anims/hero_anim_set_1/hero_sleep.fbx",
		["anim_set3.remove_weapon"] = "data/anims/hero_anim_set_1/hero_remove_weapon.fbx",
		["anim_set3.take_weapon"] = "data/anims/hero_anim_set_1/hero_take_weapon.fbx",
		["anim_set3.stop_her"] = "data/anims/hero_anim_set_3/hero_stop_her.fbx",
		
		-- anim set 4: two-handed melee (2h)
		["anim_set4.idle"] = "data/anims/hero_anim_set_4/hero_idle.fbx",
		["anim_set4.attack"] = "data/anims/hero_anim_set_4/hero_attack1.fbx",
		["anim_set4.attack2"] = "data/anims/hero_anim_set_4/hero_attack2.fbx",
		["anim_set4.attack_build_up"] = "data/anims/hero_anim_set_4/hero_attack_build_up.fbx",
		["anim_set4.hit_front1"] = "data/anims/hero_anim_set_1/hero_hit_front1.fbx",
		["anim_set4.hit_front2"] = "data/anims/hero_anim_set_1/hero_hit_front2.fbx",
		["anim_set4.hit_back"] = "data/anims/hero_anim_set_1/hero_hit_back.fbx",
		["anim_set4.hit_left"] = "data/anims/hero_anim_set_1/hero_hit_left.fbx",
		["anim_set4.hit_right"] = "data/anims/hero_anim_set_1/hero_hit_right.fbx",	
		["anim_set4.move_start"] = "data/anims/hero_anim_set_4/hero_move_start.fbx",
		["anim_set4.move1"] = "data/anims/hero_anim_set_4/hero_move1.fbx",
		["anim_set4.move2"] = "data/anims/hero_anim_set_4/hero_move2.fbx",
		["anim_set4.move_turn_left"] = "data/anims/hero_anim_set_4/hero_move_turn_left.fbx",
		["anim_set4.move_turn_right"] = "data/anims/hero_anim_set_4/hero_move_turn_right.fbx",
		["anim_set4.turn_left_180"] = "data/anims/hero_anim_set_4/hero_turn_left_180.fbx",
		["anim_set4.turn_left_90"] = "data/anims/hero_anim_set_4/hero_turn_left_90.fbx",
		["anim_set4.turn_left_45"] = "data/anims/hero_anim_set_4/hero_turn_left_45.fbx",
		["anim_set4.turn_right_90"] = "data/anims/hero_anim_set_4/hero_turn_right_90.fbx",
		["anim_set4.turn_right_45"] = "data/anims/hero_anim_set_4/hero_turn_right_45.fbx",		
		["anim_set4.whirlwind"] = "data/anims/hero_anim_set_4/hero_whirlwind.fbx",
		["anim_set4.flurry"] = "data/anims/hero_anim_set_4/hero_flurry.fbx",
		["anim_set4.victory"] = "data/anims/hero_anim_set_1/hero_victory1.fbx",
		["anim_set4.victory2"] = "data/anims/hero_anim_set_1/hero_victory2.fbx",
		["anim_set4.victory3"] = "data/anims/hero_anim_set_1/hero_victory3.fbx",
		["anim_set4.charge"] = "data/anims/hero_anim_set_4/hero_charge.fbx",
		["anim_set4.sleep"] = "data/anims/hero_anim_set_4/hero_sleep.fbx",
		["anim_set4.stop_her"] = "data/anims/hero_anim_set_4/hero_stop_her.fbx",
		["anim_set4.power_attack"] = "data/anims/hero_anim_set_4/hero_power_attack.fbx",
		["anim_set4.guard"] = "data/anims/hero_anim_set_4/hero_guard.fbx",
		["anim_set4.remove_weapon"] = "data/anims/hero_anim_set_4/hero_remove_weapon.fbx",
		["anim_set4.take_weapon"] = "data/anims/hero_anim_set_4/hero_take_weapon.fbx",
		["anim_set4.stop_her"] = "data/anims/hero_anim_set_4/hero_stop_her.fbx",

		-- anim set 6: spear
		["anim_set6.idle"] = "data/anims/hero_anim_set_6/hero_idle.fbx",
	    ["anim_set6.attack"] = "data/anims/hero_anim_set_6/hero_attack1.fbx",
		["anim_set6.attack_build_up"] = "data/anims/hero_anim_set_6/hero_attack_build_up.fbx",	
		["anim_set6.reach"] = "data/anims/hero_anim_set_6/hero_reach.fbx",
		["anim_set6.throw"] = "data/anims/hero_anim_set_6/hero_throw.fbx",
		["anim_set6.throw_spear"] = "data/anims/hero_anim_set_6/hero_throw_spear.fbx",
		["anim_set6.hit_front1"] = "data/anims/hero_anim_set_1/hero_hit_front1.fbx",
		["anim_set6.hit_front2"] = "data/anims/hero_anim_set_1/hero_hit_front2.fbx",
		["anim_set6.hit_back"] = "data/anims/hero_anim_set_1/hero_hit_back.fbx",
		["anim_set6.hit_left"] = "data/anims/hero_anim_set_1/hero_hit_left.fbx",
		["anim_set6.hit_right"] = "data/anims/hero_anim_set_1/hero_hit_right.fbx",	
		["anim_set6.move1"] = "data/anims/hero_anim_set_6/hero_move1.fbx",
		["anim_set6.move2"] = "data/anims/hero_anim_set_6/hero_move2.fbx",
		["anim_set6.move_turn_left"] = "data/anims/hero_anim_set_6/hero_move_turn_left.fbx",
		["anim_set6.move_turn_right"] = "data/anims/hero_anim_set_6/hero_move_turn_right.fbx",
		["anim_set6.turn_left_180"] = "data/anims/hero_anim_set_6/hero_turn_left_180.fbx",
		["anim_set6.turn_left_90"] = "data/anims/hero_anim_set_6/hero_turn_left_90.fbx",
		["anim_set6.turn_left_45"] = "data/anims/hero_anim_set_6/hero_turn_left_45.fbx",
		["anim_set6.turn_right_90"] = "data/anims/hero_anim_set_6/hero_turn_right_90.fbx",
		["anim_set6.turn_right_45"] = "data/anims/hero_anim_set_6/hero_turn_right_45.fbx",	
		["anim_set6.whirlwind"] = "data/anims/hero_anim_set_6/hero_whirlwind.fbx",
		["anim_set6.open_door"] = "data/anims/hero_anim_set_1/hero_open_door.fbx",			
		["anim_set6.victory"] = "data/anims/hero_anim_set_6/hero_victory1.fbx",
		["anim_set6.victory2"] = "data/anims/hero_anim_set_6/hero_victory2.fbx",
		["anim_set6.victory3"] = "data/anims/hero_anim_set_6/hero_victory3.fbx",
		["anim_set6.power_attack"] = "data/anims/hero_anim_set_6/hero_power_attack.fbx",
		["anim_set6.guard"] = "data/anims/hero_anim_set_6/hero_guard.fbx",
		["anim_set6.flurry"] = "data/anims/hero_anim_set_6/hero_flurry.fbx",
		["anim_set6.sleep"] = "data/anims/hero_anim_set_1/hero_sleep.fbx",
		["anim_set6.remove_weapon"] = "data/anims/hero_anim_set_1/hero_remove_weapon.fbx",
		["anim_set6.take_weapon"] = "data/anims/hero_anim_set_1/hero_take_weapon.fbx",
		["anim_set6.stop_her"] = "data/anims/hero_anim_set_6/hero_stop_her.fbx",

		-- anim set 7: dual wielding
		["anim_set7.idle"] = "data/anims/hero_anim_set_1/hero_idle.fbx",
	    ["anim_set7.attack"] = "data/anims/hero_anim_set_1/hero_attack1.fbx",
		["anim_set7.attack2"] = "data/anims/hero_anim_set_7/hero_attack2.fbx",
		["anim_set7.attack_build_up"] = "data/anims/hero_anim_set_1/hero_attack_build_up.fbx",	
		["anim_set7.hit_front1"] = "data/anims/hero_anim_set_1/hero_hit_front1.fbx",
		["anim_set7.hit_front2"] = "data/anims/hero_anim_set_1/hero_hit_front2.fbx",
		["anim_set7.hit_back"] = "data/anims/hero_anim_set_1/hero_hit_back.fbx",
		["anim_set7.hit_left"] = "data/anims/hero_anim_set_1/hero_hit_left.fbx",
		["anim_set7.hit_right"] = "data/anims/hero_anim_set_1/hero_hit_right.fbx",	
		["anim_set7.move_start"] = "data/anims/hero_anim_set_1/hero_move_start.fbx",
		["anim_set7.move1"] = "data/anims/hero_anim_set_1/hero_move1.fbx",
		["anim_set7.move2"] = "data/anims/hero_anim_set_1/hero_move2.fbx",
		["anim_set7.move_turn_left"] = "data/anims/hero_anim_set_1/hero_move_turn_left.fbx",
		["anim_set7.move_turn_right"] = "data/anims/hero_anim_set_1/hero_move_turn_right.fbx",
		["anim_set7.turn_left_180"] = "data/anims/hero_anim_set_1/hero_turn_left_180.fbx",
		["anim_set7.turn_left_90"] = "data/anims/hero_anim_set_1/hero_turn_left_90.fbx",
		["anim_set7.turn_left_45"] = "data/anims/hero_anim_set_1/hero_turn_left_45.fbx",
		["anim_set7.turn_right_90"] = "data/anims/hero_anim_set_1/hero_turn_right_90.fbx",
		["anim_set7.turn_right_45"] = "data/anims/hero_anim_set_1/hero_turn_right_45.fbx",	
		["anim_set7.whirlwind"] = "data/anims/hero_anim_set_1/hero_whirlwind.fbx",
		["anim_set7.open_door"] = "data/anims/hero_anim_set_1/hero_open_door.fbx",			
		["anim_set7.victory"] = "data/anims/hero_anim_set_1/hero_victory1.fbx",
		["anim_set7.victory2"] = "data/anims/hero_anim_set_1/hero_victory2.fbx",
		["anim_set7.victory3"] = "data/anims/hero_anim_set_1/hero_victory3.fbx",
		["anim_set7.power_attack"] = "data/anims/hero_anim_set_7/hero_power_attack.fbx",
		["anim_set7.guard"] = "data/anims/hero_anim_set_7/hero_guard.fbx",
		["anim_set7.flurry"] = "data/anims/hero_anim_set_1/hero_flurry.fbx",
		["anim_set7.sleep"] = "data/anims/hero_anim_set_1/hero_sleep.fbx",
		["anim_set7.remove_weapon"] = "data/anims/hero_anim_set_1/hero_remove_weapon.fbx",
		["anim_set7.take_weapon"] = "data/anims/hero_anim_set_1/hero_take_weapon.fbx",
		["anim_set7.stop_her"] = "data/anims/hero_anim_set_1/hero_attack1.fbx",
	},
	mob_hp = 8,
	mob_armor = 0,
	mob_speed = 4,
	mob_move_anim_speed = 4.0,
	mob_walk_anim_speed = 1.3333,
	mob_size = 1,
	mob_description = "He's the Warden, or so they tell him. He's not sure what that means. But he knows the woods, and the woods... they seem to know him.",
	hero_name = "Leonhard",
	hero_portrait = "portraits/leonhard",
	hero_flags = PHF_ENABLED,
	hero_equip_caps = IF_LIGHT_WEAPON + IF_HEAVY_WEAPON + IF_TWO_HANDED_WEAPON + IF_BOW,
	hero_sounds = true,
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS + F_INTERACTIVE + F_HIDE_CLOSEUP,
	mob_flags = MF_ALLY + MF_LEAVE_CORPSE + MF_IMMUNE_STEAL + MF_STEALTHY,
	capsule_height = 1.3,
	capsule_radius = 0.6,
	collider_size = 0.5,
	light_type = "point",
	light_parent = "spine1",
	light_position = vec(0.0, 1.9, 0.15),
	light_color = vec(0.5, 0.75, 1.0),
	light_intensity = 5.0,
	light_range = 8.0,
	light_hide_snow = true,
	heightmap_sample_radius = 0.5,
	equipment = { "sword" },
	abilities = { "guard", "bandage", "charge", "shift", "whirlwind" },
	upgrades = {
		{ "tough", "power_attack" },		-- level 2
		{ "first_aid", "cleave" },			-- level 3
		{ "defender", "flurry" },			-- level 4
		{ "combat_training", "lone_wolf" },	-- level 5
		{ "mobility", "dodge" },			-- level 6
		{ "action_surge" },					-- level 7
		{ "protected" },					-- level 8
		{},									-- level 9
	},
	on_tooltip = tooltip_mob,
	ai_routine = {
		ai_ranged_attack,
		ai_melee,
		ai_guard,
	},
}

def_object{
	name = "dryad",
	model = "data/models/dryad.fbx",
	model_can_emit_particles = true,
	anims = {
		idle = "data/anims/dryad_idle.fbx",
		attack = "data/anims/dryad_attack1.fbx",
		attack_crossbow_left = "data/anims/dryad_attack_crossbow_left.fbx",
		attack_crossbow_right = "data/anims/dryad_attack_crossbow_right.fbx",
		cast_spell = "data/anims/dryad_cast_spell.fbx",
		call_shido = "data/anims/dryad_call_shido.fbx",
		call_stirling = "data/anims/dryad_call_stirling.fbx",
		throw = "data/anims/dryad_throw.fbx",
		throw_left = "data/anims/dryad_throw_left.fbx",
		throw_right = "data/anims/dryad_throw_right.fbx",
		focus = "data/anims/dryad_focus.fbx",
		flame_mihr = "data/anims/dryad_flame_mihr.fbx",
		hit_front1 = "data/anims/dryad_hit_front1.fbx",
		hit_front2 = "data/anims/dryad_hit_front2.fbx",
		hit_back = "data/anims/dryad_hit_back.fbx",
		hit_left = "data/anims/dryad_hit_left.fbx",
		hit_right = "data/anims/dryad_hit_right.fbx",
		move_start = "data/anims/dryad_move_start.fbx",
		move1 = "data/anims/dryad_move1.fbx",
		move2 = "data/anims/dryad_move2.fbx",
		--move_turn_left = "data/anims/dryad_move_turn_left.fbx",
		--move_turn_right = "data/anims/dryad_move_turn_right.fbx",
		turn_right_180 = "data/anims/dryad_turn_right_180.fbx",
		turn_right_90 = "data/anims/dryad_turn_right_90.fbx",
		turn_right_45 = "data/anims/dryad_turn_right_45.fbx",
		turn_left_90 = "data/anims/dryad_turn_left_90.fbx",
		turn_left_45 = "data/anims/dryad_turn_left_45.fbx",
		tornado = "data/anims/dryad_tornado.fbx",
		walk = "data/anims/dryad_walk.fbx",
		walk_start = "data/anims/dryad_walk_start.fbx",
		open_door = "data/anims/dryad_open_door.fbx",
		die = "data/anims/dryad_die.fbx",
		use_potion = "data/anims/dryad_use_potion.fbx",
		victory = "data/anims/dryad_victory1.fbx",
		victory2 = "data/anims/dryad_victory2.fbx",
		victory3 = "data/anims/dryad_victory1.fbx",
		stand_up = "data/anims/dryad_stand_up.fbx",
		sleep = "data/anims/dryad_sleep.fbx",
		sleep_sorceress = "data/anims/dryad_sleep_sorceress.fbx",
		rescue = "data/anims/dryad_rescue_shido.fbx",
		hug_archdruid = "data/anims/dryad_hug_archdruid.fbx",
		crouch = "data/anims/dryad_crouch.fbx",
		
		talk_generic = "data/anims/dryad_talk_generic.fbx",
		talk_angry = "data/anims/dryad_talk_angry.fbx",
		talk_wave_hands = "data/anims/dryad_talk_wave_hands.fbx",
		talk_giggle = "data/anims/dryad_talk_giggle.fbx",
		talk_nod = "data/anims/dryad_talk_nod.fbx",
		talk_nod_once = "data/anims/dryad_talk_nod_once.fbx",
		talk_disappointed = "data/anims/dryad_talk_disappointed.fbx",
		talk_shake_head = "data/anims/dryad_talk_shake_head.fbx",
		talk_shake_head2 = "data/anims/dryad_talk_shake_head2.fbx",
		talk_heal_nuala = "data/anims/dryad_talk_heal_nuala.fbx",
		slap_stirling = "data/anims/dryad_slap_stirling.fbx",
		touch_pendant = "data/anims/dryad_touch_pendant.fbx",
		talk_campfire = "data/anims/dryad_talk_campfire.fbx",
		idle_campfire = "data/anims/dryad_idle_campfire.fbx",

		-- custom anims for druidstone temple
		comfort_leonhard = "data/anims/dryad_comfort_leonhard.fbx",
		hug_oiko = "data/anims/dryad_hug_oiko.fbx",

		-- custom anim for outer space outro
		enter_portal = "data/anims/dryad_enter_portal.fbx",

		-- the end
		ending = "data/anims/dryad_ending.fbx",
		ending_loop = "data/anims/dryad_ending_loop.fbx",
		ending_final = "data/anims/dryad_ending_final.fbx",

		-- anim set 1: one-handed melee (swords)
		["anim_set1.idle"] = "data/anims/dryad_anim_set_1/dryad_idle.fbx",
		["anim_set1.attack"] = "data/anims/dryad_anim_set_1/dryad_attack1.fbx",
		["anim_set1.attack2"] = "data/anims/dryad_anim_set_1/dryad_attack2.fbx",
		["anim_set1.move_start"] = "data/anims/dryad_anim_set_1/dryad_move_start.fbx",
		["anim_set1.move1"] = "data/anims/dryad_anim_set_1/dryad_move1.fbx",
		["anim_set1.move2"] = "data/anims/dryad_anim_set_1/dryad_move2.fbx",
		["anim_set1.hit_front1"] = "data/anims/dryad_anim_set_1/dryad_hit_front1.fbx",
		["anim_set1.hit_front2"] = "data/anims/dryad_anim_set_1/dryad_hit_front2.fbx",
		["anim_set1.hit_back"] = "data/anims/dryad_anim_set_1/dryad_hit_back.fbx",
		["anim_set1.hit_left"] = "data/anims/dryad_anim_set_1/dryad_hit_left.fbx",
		["anim_set1.hit_right"] = "data/anims/dryad_anim_set_1/dryad_hit_right.fbx",
		--["anim_set1.move_turn_left"] = "data/anims/dryad_anim_set_1/dryad_move_turn_left.fbx",
		--["anim_set1.move_turn_right"] = "data/anims/dryad_anim_set_1/dryad_move_turn_right.fbx",
		["anim_set1.victory"] = "data/anims/dryad_anim_set_1/dryad_victory1.fbx",
		["anim_set1.victory2"] = "data/anims/dryad_anim_set_1/dryad_victory2.fbx",
		["anim_set1.victory3"] = "data/anims/dryad_anim_set_1/dryad_victory2.fbx",
		["anim_set1.sleep"] = "data/anims/dryad_anim_set_1/dryad_sleep.fbx",
		["anim_set1.remove_weapon"] = "data/anims/dryad_anim_set_1/dryad_remove_weapon.fbx",
		["anim_set1.take_weapon"] = "data/anims/dryad_anim_set_1/dryad_take_weapon.fbx",

		-- anim set 2: two-handed melee (staff)
		--["anim_set2.idle"] = "data/anims/dryad_anim_set_2/dryad_idle.fbx",
		--["anim_set2.attack"] = "data/anims/dryad_anim_set_2/dryad_attack1.fbx",
		--["anim_set2.attack2"] = "data/anims/dryad_anim_set_2/dryad_attack2.fbx",
		--["anim_set2.move1"] = "data/anims/dryad_anim_set_2/dryad_move1.fbx",
		--["anim_set2.move2"] = "data/anims/dryad_anim_set_2/dryad_move2.fbx",
		--["anim_set2.move_turn_left"] = "data/anims/dryad_anim_set_2/dryad_move_turn_left.fbx",
		--["anim_set2.move_turn_right"] = "data/anims/dryad_anim_set_2/dryad_move_turn_right.fbx",
		--["anim_set2.sleep"] = "data/anims/dryad_anim_set_2/dryad_sleep.fbx",
		
		-- anim set 3: two-handed ranged (bow)
		["anim_set3.idle"] = "data/anims/dryad_anim_set_3/dryad_idle.fbx",
		["anim_set3.attack"] = "data/anims/dryad_anim_set_3/dryad_attack1.fbx",
		["anim_set3.attack_build_up"] = "data/anims/dryad_anim_set_3/dryad_attack_build_up.fbx",
		["anim_set3.move_start"] = "data/anims/dryad_anim_set_3/dryad_move_start.fbx",
		["anim_set3.move1"] = "data/anims/dryad_anim_set_3/dryad_move1.fbx",
		["anim_set3.move2"] = "data/anims/dryad_anim_set_3/dryad_move2.fbx",
		--["anim_set3.move_turn_left"] = "data/anims/dryad_anim_set_3/dryad_move_turn_left.fbx",
		--["anim_set3.move_turn_right"] = "data/anims/dryad_anim_set_3/dryad_move_turn_right.fbx",
		["anim_set3.sleep"] = "data/anims/dryad_anim_set_3/dryad_sleep.fbx",
		["anim_set3.remove_weapon"] = "data/anims/dryad_anim_set_3/dryad_remove_weapon.fbx",
		["anim_set3.take_weapon"] = "data/anims/dryad_anim_set_3/dryad_take_weapon.fbx",
		["anim_set3.victory"] = "data/anims/dryad_anim_set_3/dryad_victory1.fbx",
		["anim_set3.victory2"] = "data/anims/dryad_anim_set_3/dryad_victory2.fbx",
		["anim_set3.victory3"] = "data/anims/dryad_anim_set_3/dryad_victory3.fbx",

		-- anim set 5: (two-handed crossbow)
		-- ["anim_set5.idle"] = "data/anims/dryad_anim_set_5/dryad_idle.fbx",
		-- ["anim_set5.attack"] = "data/anims/dryad_anim_set_5/dryad_attack1.fbx",
		-- ["anim_set5.move1"] = "data/anims/dryad_anim_set_5/dryad_move1.fbx",
		-- ["anim_set5.move2"] = "data/anims/dryad_anim_set_5/dryad_move2.fbx",
		-- ["anim_set7.sleep"] = "data/anims/dryad_anim_set_5/dryad_sleep.fbx",

		-- anim set 7: dual wielding
		["anim_set7.idle"] = "data/anims/dryad_anim_set_1/dryad_idle.fbx",
		["anim_set7.attack"] = "data/anims/dryad_anim_set_1/dryad_attack1.fbx",
		["anim_set7.attack2"] = "data/anims/dryad_anim_set_7/dryad_attack2.fbx",
		["anim_set7.move_start"] = "data/anims/dryad_anim_set_1/dryad_move_start.fbx",
		["anim_set7.move1"] = "data/anims/dryad_anim_set_1/dryad_move1.fbx",
		["anim_set7.move2"] = "data/anims/dryad_anim_set_1/dryad_move2.fbx",
		["anim_set7.hit_front1"] = "data/anims/dryad_anim_set_1/dryad_hit_front1.fbx",
		["anim_set7.hit_front2"] = "data/anims/dryad_anim_set_1/dryad_hit_front2.fbx",
		["anim_set7.hit_back"] = "data/anims/dryad_anim_set_1/dryad_hit_back.fbx",
		["anim_set7.hit_left"] = "data/anims/dryad_anim_set_1/dryad_hit_left.fbx",
		["anim_set7.hit_right"] = "data/anims/dryad_anim_set_1/dryad_hit_right.fbx",
		["anim_set7.victory"] = "data/anims/dryad_anim_set_1/dryad_victory1.fbx",
		["anim_set7.victory2"] = "data/anims/dryad_anim_set_1/dryad_victory2.fbx",
		["anim_set7.victory3"] = "data/anims/dryad_anim_set_1/dryad_victory2.fbx",
		["anim_set7.sleep"] = "data/anims/dryad_anim_set_1/dryad_sleep.fbx",
		["anim_set7.remove_weapon"] = "data/anims/dryad_anim_set_1/dryad_remove_weapon.fbx",
		["anim_set7.take_weapon"] = "data/anims/dryad_anim_set_1/dryad_take_weapon.fbx",
	},
	mob_hp = 6,
	mob_armor = 0,
	mob_speed = 4,
	mob_move_anim_speed = 4.0,
	mob_walk_anim_speed = 1.33333,
	mob_size = 1,
	mob_flags = MF_ALLY + MF_LEAVE_CORPSE + MF_IMMUNE_STEAL + MF_STEALTHY,
	mob_death_effect = "default",
	mob_description = "An adventurer. The daughter of the Archdruid. The one you can count on to do the right thing... No matter the cost.",
	hero_name = "Aava",
	hero_portrait = "portraits/dryad",
	hero_initial_xp = 21,
	hero_flags = PHF_ENABLED,
	hero_equip_caps = IF_LIGHT_WEAPON + IF_BOW,
	hero_sounds = true,
	light_type = "point",
	light_parent = "neck",
	light_position = vec(0.0, 1.2, 0.7),
	light_color = vec(0.7, 0.8, 1.0),
	light_intensity = 5.0,
	light_range = 9.0,
	light_hide_snow = true,
	capsule_height = 1.2,
	capsule_radius = 0.5,
	heightmap_sample_radius = 0.4,
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS + F_INTERACTIVE + F_HIDE_CLOSEUP,
	equipment = { "bow" },
	abilities = { "pendant_bearer", "bandage", "dash", "cure", "revive" },
	upgrades = {
		{ "focus", "protect" },				-- level 2
		{ "power_attack", "shift", },		-- level 3
		{ "volley", "dispel" },				-- level 4
		{ "mobility", "regenerate" },		-- level 5
		{ "potion_master", "advance" },		-- level 6
		{ "tough", "freeze" },				-- level 7
		{},									-- level 8
		{},									-- level 9
	},
	on_tooltip = tooltip_mob,
	ai_routine = {
		{ ai_cure, "cure", 0.7 },
		{ ai_protect, "protect", 0.5 },
		ai_ranged_attack,
		ai_melee,
		ai_guard,
	},
}

def_object{
	name = "mage",
	model = "data/models/mage.fbx",
	model_can_emit_particles = true,
	anims = {
		idle = "data/anims/mage_idle.fbx",
		attack = "data/anims/mage_attack1.fbx",
		attack2 = "data/anims/mage_attack2.fbx",
		cast_spell = "data/anims/mage_cast_spell.fbx",
		--cast_spell_fire = "data/anims/mage_cast_spell_fire.fbx",
		--cast_spell_sleep = "data/anims/mage_cast_spell_sleep.fbx",
		--cast_spell_teleport = "data/anims/mage_cast_spell_teleport.fbx",
		call_stirling = "data/anims/mage_call_stirling.fbx",
		call_shido = "data/anims/mage_call_shido.fbx",
		throw = "data/anims/mage_throw.fbx",
		throw_left = "data/anims/mage_attack2.fbx",
		throw_right = "data/anims/mage_throw.fbx",
		hit_front1 = "data/anims/mage_hit_front1.fbx",
		hit_front2 = "data/anims/mage_hit_front2.fbx",
		hit_back = "data/anims/mage_hit_back.fbx",
		hit_left = "data/anims/mage_hit_left.fbx",
		hit_right = "data/anims/mage_hit_right.fbx",
		move1 = "data/anims/mage_move1.fbx",
		move2 = "data/anims/mage_move2.fbx",
		turn_left_180 = "data/anims/mage_turn_left_180.fbx",
		turn_right_90 = "data/anims/mage_turn_right_90.fbx",
		turn_left_90 = "data/anims/mage_turn_left_90.fbx",
		turn_right_45 = "data/anims/mage_turn_right_45.fbx",
		turn_left_45 = "data/anims/mage_turn_left_45.fbx",
		tornado = "data/anims/mage_tornado.fbx",
		walk = "data/anims/mage_walk.fbx",
		walk_start = "data/anims/mage_walk_start.fbx",
		open_door = "data/anims/mage_open_door.fbx",
		die = "data/anims/mage_die.fbx",
		use_potion = "data/anims/mage_use_potion.fbx",
		victory = "data/anims/mage_victory1.fbx",
		victory2 = "data/anims/mage_victory2.fbx",
		victory3 = "data/anims/mage_victory3.fbx",
		stand_up = "data/anims/mage_stand_up.fbx",
		focus = "data/anims/mage_focus.fbx",
		flame_mihr = "data/anims/mage_flame_mihr.fbx",
		sleep = "data/anims/mage_sleep.fbx",
		rescue = "data/anims/mage_rescue_shido.fbx",
		idle_sad = "data/anims/mage_idle_sad.fbx",
		inspect = "data/anims/mage_inspect_magnifying_glass.fbx",
		stop_her = "data/anims/mage_cast_spell.fbx",
		touch_forcefield = "data/anims/mage_touch_forcefield.fbx",
		remove_weapon = "data/anims/mage_remove_weapon.fbx",
		take_weapon = "data/anims/mage_take_weapon.fbx",

		-- talk
		talk_sad = "data/anims/mage_talk_sad.fbx",
		talk_frustrated = "data/anims/mage_talk_frustrated.fbx",
		idle_campfire = "data/anims/mage_idle.fbx",

		-- the end
		ending = "data/anims/mage_ending.fbx",
		ending_loop = "data/anims/mage_ending_loop.fbx",
		ending_final = "data/anims/mage_ending_final.fbx",

		-- anim set 1: one-handed melee (swords)
		["anim_set1.idle"] = "data/anims/mage_anim_set_2/mage_idle.fbx",
		["anim_set1.move1"] = "data/anims/mage_anim_set_7/mage_move1.fbx",
		["anim_set1.move2"] = "data/anims/mage_anim_set_7/mage_move2.fbx",
		["anim_set1.victory"] = "data/anims/mage_anim_set_2/mage_victory1.fbx",
		["anim_set1.victory2"] = "data/anims/mage_anim_set_2/mage_victory2.fbx",
		["anim_set1.victory3"] = "data/anims/mage_anim_set_2/mage_victory2.fbx",

		-- anim set 2: two-handed melee (staff)
		["anim_set2.idle"] = "data/anims/mage_anim_set_2/mage_idle.fbx",
		--["anim_set2.attack"] = "data/anims/mage_anim_set_2/mage_attack.fbx",
		--["anim_set2.attack2"] = "data/anims/mage_anim_set_2/mage_attack2.fbx",
		["anim_set2.move1"] = "data/anims/mage_anim_set_7/mage_move1.fbx",
		["anim_set2.move2"] = "data/anims/mage_anim_set_7/mage_move2.fbx",
		--["anim_set2.sleep"] = "data/anims/mage_anim_set_2/mage_sleep.fbx",
		--["anim_set2.remove_weapon"] = "data/anims/mage_anim_set_2/mage_remove_weapon.fbx",
		--["anim_set2.take_weapon"] = "data/anims/mage_anim_set_2/mage_take_weapon.fbx",
		["anim_set2.victory"] = "data/anims/mage_anim_set_2/mage_victory1.fbx",
		["anim_set2.victory2"] = "data/anims/mage_anim_set_2/mage_victory2.fbx",
		["anim_set2.victory3"] = "data/anims/mage_anim_set_2/mage_victory3.fbx",

		-- anim set 7: dual wielding	
		["anim_set7.idle"] = "data/anims/mage_anim_set_2/mage_idle.fbx",
		["anim_set7.attack2"] = "data/anims/mage_anim_set_7/mage_attack2.fbx",
		["anim_set7.move1"] = "data/anims/mage_anim_set_7/mage_move1.fbx",
		["anim_set7.move2"] = "data/anims/mage_anim_set_7/mage_move2.fbx",
		["anim_set7.victory"] = "data/anims/mage_anim_set_2/mage_victory1.fbx",
		["anim_set7.victory2"] = "data/anims/mage_anim_set_2/mage_victory1.fbx",
		["anim_set7.victory3"] = "data/anims/mage_anim_set_2/mage_victory1.fbx",
	},
	mob_hp = 5,
	mob_armor = 0,
	mob_speed = 3,
	mob_move_anim_speed = 4.0,
	mob_walk_anim_speed = 1.3333,
	mob_size = 1,
	mob_death_effect = "default",
	mob_description = "Small, magical, curious, and harmless. One of these things doesn't apply to this little mage. Still, at least he knows a lot of stuff about things most sane people steer away from.",
	hero_name = "Oiko",
	hero_portrait = "portraits/mage",
	hero_flags = PHF_ENABLED,
	hero_equip_caps = IF_LIGHT_WEAPON + IF_STAFF + IF_MAGE_ARMOR,
	hero_initial_level = 2,
	hero_initial_xp = 8,
	hero_sounds = true,
	light_type = "point",
	light_parent = "Upperbody",
	light_position = vec(0.0, 0.7, -2.0),
	light_color = vec(0.5, 0.75, 1.0),
	light_intensity = 6.0,
	light_range = 9.0,
	light_hide_snow = true,
	capsule_height = 0.45,
	capsule_radius = 0.6,
	heightmap_sample_radius = 0.5,
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS + F_INTERACTIVE + F_HIDE_CLOSEUP,
	mob_flags = MF_ALLY + MF_LEAVE_CORPSE + MF_IMMUNE_STEAL + MF_STEALTHY,
	equipment = { "dagger" },
	abilities = { "red_mage", "bandage", "teleport", "focus", "forcebolt", "fire" },
	upgrades = {
		{},									-- level 2
		{ "ice", "shield" },				-- level 3
		{ "lightning", "draw" },			-- level 4
		{ "forcefield", "mobility" },		-- level 5
		{ "tough", "cure" },				-- level 6
		{ "sleep" },						-- level 7
		{ "dispel", "mind_control" },		-- level 8
		{},									-- level 9
	},	
	on_tooltip = tooltip_mob,
	ai_routine = {
		{ ai_fire, "fire", 0.5 },
		{ ai_ice, "ice", 0.5 },
		{ ai_forcebolt, "forcebolt", 0.5 },
		{ ai_sleep, "sleep", 0.5 },
		ai_ranged_attack,
		ai_melee,
		ai_guard,
	},
}

def_object{
	name = "ninja",
	model = "data/models/ninja.fbx",
	model_can_emit_particles = true,
	anims = {
		-- default anim set
		idle = "data/anims/ninja_idle.fbx",
		attack = "data/anims/ninja_attack.fbx",
		attack2 = "data/anims/ninja_attack2.fbx",
		attack_crossbow_left = "data/anims/ninja_attack_crossbow_left.fbx",
		attack_crossbow_right = "data/anims/ninja_attack_crossbow_right.fbx",
		attack_build_up = "data/anims/ninja_attack_build_up.fbx",
		throw = "data/anims/ninja_throw.fbx",
		throw_left = "data/anims/ninja_throw_left.fbx",
		throw_right = "data/anims/ninja_throw_right.fbx",
		finishing_blow = "data/anims/ninja_finishing_blow.fbx",
		flame_mihr = "data/anims/ninja_flame_mihr.fbx",
		vanish = "data/anims/ninja_vanish.fbx",
		cast_spell = "data/anims/ninja_cast_spell.fbx",
		call_stirling = "data/anims/ninja_call_stirling.fbx",
		call_shido = "data/anims/ninja_call_shido.fbx",
		hit_front1 = "data/anims/ninja_hit_front1.fbx",
		hit_front2 = "data/anims/ninja_hit_front2.fbx",
		hit_back = "data/anims/ninja_hit_back.fbx",
		hit_left = "data/anims/ninja_hit_left.fbx",
		hit_right = "data/anims/ninja_hit_right.fbx",
		eight_winds = "data/anims/ninja_eight_winds.fbx",
		move_start = "data/anims/ninja_move_start.fbx",
		move1 = "data/anims/ninja_move1.fbx",
		move2 = "data/anims/ninja_move2.fbx",
		turn_left_180 = "data/anims/ninja_turn_left_180.fbx",
		turn_right_90 = "data/anims/ninja_turn_right_90.fbx",
		turn_left_90 = "data/anims/ninja_turn_left_90.fbx",
		turn_right_45 = "data/anims/ninja_turn_right_45.fbx",
		turn_left_45 = "data/anims/ninja_turn_left_45.fbx",
		tornado = "data/anims/ninja_tornado.fbx",
		--move_turn_left = "data/anims/ninja_move_turn_left.fbx",
		--move_turn_right = "data/anims/ninja_move_turn_right.fbx",
		walk = "data/anims/ninja_walk.fbx",
		walk_start = "data/anims/ninja_walk_start.fbx",
		somersault = "data/anims/ninja_somersault.fbx",
		open_door = "data/anims/ninja_open_door.fbx",
		die = "data/anims/ninja_die.fbx",
		use_potion = "data/anims/ninja_use_potion.fbx",
		victory = "data/anims/ninja_victory1.fbx",
		victory2 = "data/anims/ninja_victory2.fbx",
		victory3 = "data/anims/ninja_victory3.fbx",
		stand_up = "data/anims/ninja_stand_up.fbx",
		sleep = "data/anims/ninja_sleep.fbx",
		rescue = "data/anims/ninja_rescue_shido.fbx",
		power_attack = "data/anims/ninja_power_attack.fbx",
		pull_begin = "data/anims/ninja_pull_begin.fbx",
		pull_end = "data/anims/ninja_pull_end.fbx",

		on_altar = "data/anims/ninja_on_altar.fbx",
		guard = "data/anims/ninja_guard.fbx",
		stop_her = "data/anims/ninja_open_door.fbx",
		bow = "data/anims/ninja_bow.fbx",
		touch_forcefield = "data/anims/ninja_touch_forcefield.fbx",
		crouch_draw_begin = "data/anims/ninja_crouch_draw_begin.fbx",
		crouch_draw_end = "data/anims/ninja_crouch_draw_end.fbx",
		crouch_draw = "data/anims/ninja_crouch_draw.fbx",
		idle_campfire = "data/anims/ninja_idle_campfire.fbx",

		-- our animator does not support blending between same animation states; this little trick here
		-- makes it possible to crossfade between different instances of the same underlying animation.
		-- the shuriken_strike ability uses this to start the next throw before the animation for the previous throw
		-- has finished.
		shuriken1 = "data/anims/ninja_throw.fbx",
		shuriken2 = "data/anims/ninja_throw.fbx",
		shuriken3 = "data/anims/ninja_throw.fbx",

		-- druidstone3
		narrow_stance_idle = "data/anims/ninja_anim_set_9/ninja_idle.fbx",

		-- the end
		ending = "data/anims/ninja_ending.fbx",
		ending_loop = "data/anims/ninja_ending_loop.fbx",

		-- anim set 1: one-handed melee (swords)
		["anim_set1.idle"] = "data/anims/ninja_anim_set_1/ninja_idle.fbx",
		["anim_set1.attack"] = "data/anims/ninja_anim_set_1/ninja_attack.fbx",
		["anim_set1.attack2"] = "data/anims/ninja_anim_set_1/ninja_attack2.fbx",
		["anim_set1.guard"] = "data/anims/ninja_anim_set_1/ninja_guard.fbx",
		["anim_set1.attack_build_up"] = "data/anims/ninja_anim_set_1/ninja_attack_build_up.fbx",
		["anim_set1.power_attack"] = "data/anims/ninja_anim_set_1/ninja_power_attack.fbx",
		["anim_set1.cast_spell"] = "data/anims/ninja_anim_set_1/ninja_cast_spell.fbx",
		["anim_set1.open_door"] = "data/anims/ninja_anim_set_1/ninja_open_door.fbx",
		["anim_set1.move_start"] = "data/anims/ninja_anim_set_1/ninja_move_start.fbx",
		["anim_set1.move1"] = "data/anims/ninja_anim_set_1/ninja_move1.fbx",
		["anim_set1.move2"] = "data/anims/ninja_anim_set_1/ninja_move2.fbx",
		["anim_set1.finishing_blow"] = "data/anims/ninja_anim_set_1/ninja_finishing_blow.fbx",
		["anim_set1.victory"] = "data/anims/ninja_anim_set_1/ninja_victory1.fbx",
		["anim_set1.victory2"] = "data/anims/ninja_anim_set_1/ninja_victory2.fbx",
		["anim_set1.victory3"] = "data/anims/ninja_anim_set_1/ninja_victory3.fbx",
		["anim_set1.remove_weapon"] = "data/anims/ninja_anim_set_1/ninja_remove_weapon.fbx",
		["anim_set1.take_weapon"] = "data/anims/ninja_anim_set_1/ninja_take_weapon.fbx",
		["anim_set1.stop_her"] = "data/anims/ninja_anim_set_1/ninja_stop_her.fbx",
		["anim_set1.use_potion"] = "data/anims/ninja_anim_set_1/ninja_use_potion.fbx",

		-- anim set 3: two-handed ranged (bow)
		["anim_set3.idle"] = "data/anims/ninja_anim_set_3/ninja_idle.fbx",
		["anim_set3.attack"] = "data/anims/ninja_anim_set_3/ninja_attack.fbx",
		["anim_set3.guard"] = "data/anims/ninja_anim_set_3/ninja_guard.fbx",
		["anim_set3.attack_build_up"] = "data/anims/ninja_anim_set_1/ninja_attack_build_up.fbx",
		["anim_set3.power_attack"] = "data/anims/ninja_anim_set_3/ninja_power_attack.fbx",
		["anim_set3.cast_spell"] = "data/anims/ninja_anim_set_1/ninja_cast_spell.fbx",
		["anim_set3.open_door"] = "data/anims/ninja_anim_set_1/ninja_open_door.fbx",
		["anim_set3.move_start"] = "data/anims/ninja_anim_set_3/ninja_move_start.fbx",
		["anim_set3.move1"] = "data/anims/ninja_anim_set_3/ninja_move1.fbx",
		["anim_set3.move2"] = "data/anims/ninja_anim_set_3/ninja_move2.fbx",
		["anim_set3.finishing_blow"] = "data/anims/ninja_anim_set_1/ninja_finishing_blow.fbx",
		["anim_set3.victory"] = "data/anims/ninja_anim_set_1/ninja_victory1.fbx",
		["anim_set3.victory2"] = "data/anims/ninja_anim_set_7/ninja_victory2.fbx",
		["anim_set3.victory3"] = "data/anims/ninja_anim_set_1/ninja_victory1.fbx",
		["anim_set3.remove_weapon"] = "data/anims/ninja_anim_set_1/ninja_remove_weapon.fbx",
		["anim_set3.take_weapon"] = "data/anims/ninja_anim_set_1/ninja_take_weapon.fbx",
		["anim_set3.stop_her"] = "data/anims/ninja_anim_set_3/ninja_stop_her.fbx",
		["anim_set3.throw"] = "data/anims/ninja_anim_set_3/ninja_throw.fbx",
		["anim_set3.use_potion"] = "data/anims/ninja_anim_set_1/ninja_use_potion.fbx",
		["anim_set3.shuriken1"] = "data/anims/ninja_anim_set_3/ninja_throw.fbx",
		["anim_set3.shuriken2"] = "data/anims/ninja_anim_set_3/ninja_throw.fbx",
		["anim_set3.shuriken3"] = "data/anims/ninja_anim_set_3/ninja_throw.fbx",

		
		-- anim set 7: dual wielding	
		["anim_set7.idle"] = "data/anims/ninja_anim_set_1/ninja_idle.fbx",
		["anim_set7.attack"] = "data/anims/ninja_anim_set_1/ninja_attack.fbx",
		["anim_set7.attack2"] = "data/anims/ninja_anim_set_7/ninja_attack2.fbx",
		["anim_set7.guard"] = "data/anims/ninja_anim_set_1/ninja_guard.fbx",
		["anim_set7.attack_build_up"] = "data/anims/ninja_anim_set_1/ninja_attack_build_up.fbx",
		["anim_set7.power_attack"] = "data/anims/ninja_anim_set_1/ninja_power_attack.fbx",
		["anim_set7.cast_spell"] = "data/anims/ninja_anim_set_1/ninja_cast_spell.fbx",
		["anim_set7.open_door"] = "data/anims/ninja_anim_set_1/ninja_open_door.fbx",
		["anim_set7.move_start"] = "data/anims/ninja_anim_set_7/ninja_move_start.fbx",
		["anim_set7.move1"] = "data/anims/ninja_anim_set_7/ninja_move1.fbx",
		["anim_set7.move2"] = "data/anims/ninja_anim_set_7/ninja_move2.fbx",
		["anim_set7.finishing_blow"] = "data/anims/ninja_anim_set_1/ninja_finishing_blow.fbx",
		["anim_set7.victory"] = "data/anims/ninja_anim_set_7/ninja_victory1.fbx",
		["anim_set7.victory2"] = "data/anims/ninja_anim_set_7/ninja_victory2.fbx",
		["anim_set7.victory3"] = "data/anims/ninja_anim_set_7/ninja_victory3.fbx",
		["anim_set7.remove_weapon"] = "data/anims/ninja_anim_set_1/ninja_remove_weapon.fbx",
		["anim_set7.take_weapon"] = "data/anims/ninja_anim_set_1/ninja_take_weapon.fbx",
		["anim_set7.stop_her"] = "data/anims/ninja_anim_set_1/ninja_stop_her.fbx",
		["anim_set7.use_potion"] = "data/anims/ninja_anim_set_1/ninja_use_potion.fbx",

		-- part of nuala's anim set - shared here for cinematic use, e.g. druidstone2f
		["anim_set9.idle"] = "data/anims/ninja_anim_set_9/ninja_idle.fbx",
		["anim_set9.move_start"] = "data/anims/ninja_anim_set_9/ninja_move_start.fbx",
		["anim_set9.move1"] = "data/anims/ninja_anim_set_9/ninja_move1.fbx",
		["anim_set9.move2"] = "data/anims/ninja_anim_set_9/ninja_move2.fbx",
	},
	mob_hp = 8,
	mob_armor = 0,
	mob_speed = 3,
	mob_move_anim_speed = 4.0,
	mob_walk_anim_speed = 1.3333,
	mob_size = 1,
	mob_close_up_camera_height = 1.3,
	mob_death_effect = "default",
	mob_description = "She used to be Nuala. Now she's somebody else, from some time and place nobody knows. She doesn't speak much. She just acts.",
	hero_name = "Mochizuki",
	hero_portrait = "portraits/ninja",
	hero_equip_caps = IF_LIGHT_WEAPON + IF_NINJA_ARMOR + IF_BOW,
	hero_sounds = true,
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS + F_INTERACTIVE + F_HIDE_CLOSEUP,
	mob_flags = MF_ALLY + MF_LEAVE_CORPSE + MF_IMMUNE_STEAL + MF_STEALTHY,
	capsule_height = 0.8,
	capsule_radius = 0.6,
	collider_size = 0.5,
	heightmap_sample_radius = 0.7,
	equipment = { "brass_knuckles" },
	abilities = { "shinobi", "guard", "bandage", "somersault" },
	upgrades = {
		{ "shuriken_strike", "pull" },		-- level 1
		{ "power_attack", "vanish" },		-- level 2
		{ "loot", "caltrops" },				-- level 3
		{ "8_winds", "finishing_blow" },	-- level 4
		{ "slice", "action_surge" },		-- level 5
		{ "double_attack", "dodge" },		-- level 6
		{},									-- level 7
		{},									-- level 8
		{},									-- level 9
	},
	on_tooltip = tooltip_mob,
	ai_routine = {
		ai_ranged_attack,
		ai_melee,
		ai_guard,
	},
}

def_object{
	name = "nuala",
	model = "data/models/ninja.fbx",
	model_can_emit_particles = true,
	anims = {
		-- default anim set - uses ninja_anim_set_9 for easier process
		idle = "data/anims/ninja_anim_set_9/ninja_idle.fbx",
		attack = "data/anims/ninja_anim_set_9/ninja_attack.fbx",
		attack2 = "data/anims/ninja_anim_set_9/ninja_attack.fbx",
		move_start = "data/anims/ninja_anim_set_9/ninja_move_start.fbx",
		move1 = "data/anims/ninja_anim_set_9/ninja_move1.fbx",
		move2 = "data/anims/ninja_anim_set_9/ninja_move2.fbx",
		cast_spell = "data/anims/ninja_anim_set_9/ninja_cast_spell.fbx",
		hit_front1 = "data/anims/ninja_anim_set_9/ninja_hit_front1.fbx",
		hit_front2 = "data/anims/ninja_anim_set_9/ninja_hit_front2.fbx",
		hit_back = "data/anims/ninja_anim_set_9/ninja_hit_back.fbx",
		hit_left = "data/anims/ninja_anim_set_9/ninja_hit_left.fbx",
		hit_right = "data/anims/ninja_anim_set_9/ninja_hit_right.fbx",
		channel = "data/anims/ninja_anim_set_9/ninja_channel.fbx",

		-- anims shared with ninja:
		die = "data/anims/ninja_die.fbx",
		use_potion = "data/anims/ninja_use_potion.fbx",
		stand_up = "data/anims/ninja_stand_up.fbx",
		sleep = "data/anims/ninja_sleep.fbx",
		throw = "data/anims/ninja_throw.fbx",
		on_altar = "data/anims/ninja_on_altar.fbx",
		on_altar_rise = "data/anims/ninja_on_altar_rise.fbx",
		on_altar_idle = "data/anims/ninja_on_altar_idle.fbx",
	},
	mob_hp = 5,
	mob_armor = 0,
	mob_speed = 3,
	mob_move_anim_speed = 4.0,
	mob_walk_anim_speed = 1.3333,
	mob_size = 1,
	mob_close_up_camera_height = 1.3,
	mob_death_effect = "default",
	mob_description = "As the assistant to the Archdruid, and a victim of a kidnapping and almost a human sacrifice, %dryad's cousin has already seen a lot of strange things in her young life... But it's about to get a whole lot stranger.",
	hero_name = "Nuala",
	hero_portrait = "portraits/ninja",
	hero_equip_caps = IF_LIGHT_WEAPON,
	hero_sounds = true,
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS + F_INTERACTIVE + F_HIDE_CLOSEUP,
	mob_flags = MF_GUEST_STAR + MF_ALLY + MF_LEAVE_CORPSE + MF_IMMUNE_STEAL + MF_STEALTHY,
	capsule_height = 0.8,
	capsule_radius = 0.6,
	collider_size = 0.5,
	heightmap_sample_radius = 0.4,
	abilities = { "basic_attack", "bandage", "shift", "cure" },
	on_tooltip = tooltip_mob,
	ai_routine = {
		ai_ranged_attack,
		ai_melee,
	},
}

---------------------------------------------------
-- Mobs
---------------------------------------------------

function def_mob(def)
	def.name = def[1]
	def.mob_hp_easy = def[2]
	def.mob_hp = def[3]
	def.mob_hp_hard = def[4]
	def.mob_armor_easy = def[5]
	def.mob_armor = def[6]
	def.mob_armor_hard = def[7]
	def.mob_damage_easy = def[8]
	def.mob_damage = def[9]
	def.mob_damage_hard = def[10]
	def.mob_speed = def[11]
	def.mob_move_anim_speed = def[12]
	def.width = def[13]
	def.height = def.width
	def.mob_xp = def[14]
	def.loot_class = def[15]
	def.capsule_height = def[16]
	def.capsule_radius = def[17]
	def.heightmap_sample_radius = def[18]
	def.mob_flags = def[19]
	def.immunities = def[20]

	for i=1,#def do
		def[i] = nil
	end

	local skin = def.skin or def.name

	def.flags = bit.bor(def.flags or 0, F_BLOCK_MOVE + F_INTERACTIVE + F_HIDE_CLOSEUP)

	if def.width < 2 then
		-- no seen by rays for large mobs to make pointing something behind them easier
		def.flags = bit.bor(def.flags, F_SEEN_BY_RAYS)
	end

	def.model = str("data/models/%s.fbx", skin)
	def.model_can_emit_particles = true
	def.collider_size = 0.5
	def.heightmap_sample_radius = def.heightmap_sample_radius or 1.5
	def.on_ripple = def.on_ripple or ripple_idle
	def.on_tooltip = def.on_tooltip or tooltip_mob
	def.tags = def.tags or { "mob" }
	def.mob_death_effect = "default"

	def.anims = def.anims or {
		idle = str("data/anims/%s_idle.fbx", skin),
	}
	def.anim_random_start_time = true

	if def.light_type == nil then
		def.light_type = "point"
		def.light_position = vec(0.0, 1.5, 0.0)
		def.light_color = vec(0.6, 0.8, 1.0)
		def.light_intensity = 3.0
		def.light_range = 5.5
	end
	
	-- optional anims

	local opt_anims = {
		"hit_front1",
		"hit_front2",
		"hit_back",
		"hit_left",
		"hit_right",
		"move1",
		"move2",
		"move_turn_left",
		"move_turn_left1",
		"move_turn_left2",
		"move_turn_right",
		"move_turn_right1",
		"move_turn_right2",
		"move_start",
		"move_start_left_45",
		"move_start_right_45",
		"attack",
		"attack2",
		"cast_spell",
		"spawn",
		"sleep",
		"turn_left_45",
		"turn_right_45",
		"turn_left_90",
		"turn_right_90",
		"turn_left_180",
		"turn_right_180",
	}

	for _,anim in ipairs(opt_anims) do
		local filename = str("data/anims/%s_%s.fbx", skin, anim)
		local native_file = shb_strip_extension(filename)..".animation"
		if shb_file_exists(filename) or shb_file_exists(native_file) then def.anims[anim] = filename end

		-- diagonal anims
		anim = anim .. "_diagonal"
		local filename = str("data/anims/%s_%s_diagonal.fbx", skin, anim)
		local native_file = shb_strip_extension(filename)..".animation"
		if shb_file_exists(filename) or shb_file_exists(native_file) then def.anims[anim] = filename end
	end

	-- diagonal anims
	local diagonal_anims = {
		"attack_diagonal",
		"attack2_diagonal",
	}

	for _,anim in ipairs(diagonal_anims) do
		local filename = str("data/anims/%s_%s.fbx", skin, anim)
		local native_file = shb_strip_extension(filename)..".animation"
		if shb_file_exists(filename) or shb_file_exists(native_file) then def.anims[anim] = filename end
	end

	-- special case: use "move" anim instead of "move1" and "move2"
	do
		local filename = str("data/anims/%s_move.fbx", skin)
		local native_file = shb_strip_extension(filename)..".animation"
		if shb_file_exists(filename) or shb_file_exists(native_file) then
			def.anims.move1 = def.anims.move1 or filename
			def.anims.move2 = def.anims.move2 or filename
		end
	end

	--if def.anims.spawn then def.anim_play_on_init = "spawn" end

	-- local has_anims = false
	-- for name,anim in pairs(def.anims) do
	-- 	if shb_file_exists(anim) then
	-- 		has_anims = true
	-- 	else
	-- 		warn("%s not found", anim)
	-- 		def.anims[name] = nil
	-- 	end
	-- end

	-- if not has_anims then def.anims = nil end

	remember_def_source(def)
	def_object(def, nil, false)
end

do
	-- the druid anims have non-standard naming convention -> they need to
	-- be declared already with def_mob.
	local druid_anims = {
		idle = "data/anims/druid_idle.fbx",
		walk = "data/anims/druid_walk.fbx",
		move1 = "data/anims/druid_walk.fbx",
		move2 = "data/anims/druid_walk.fbx",
		attack = "data/anims/druid_attack.fbx",
		cast_spell = "data/anims/druid_cast_spell.fbx",
		hit_front1 = "data/anims/druid_hit_front1.fbx",
		hit_front2 = "data/anims/druid_hit_front2.fbx",
		hit_back = "data/anims/druid_hit_back.fbx",
		hit_left = "data/anims/druid_hit_left.fbx",
		hit_right = "data/anims/druid_hit_right.fbx",
		wounded1 = "data/anims/druid_wounded1.fbx",
		wounded2 = "data/anims/druid_wounded2.fbx",
		wounded3 = "data/anims/druid_wounded3.fbx",
		wounded4 = "data/anims/druid_wounded4.fbx",
		wounded5 = "data/anims/druid_wounded5.fbx",
		wounded6 = "data/anims/druid_wounded6.fbx",
		turn_left_45 = "data/anims/druid_turn_left_45.fbx",
		turn_right_45 = "data/anims/druid_turn_right_45.fbx",
		turn_left_90 = "data/anims/druid_turn_left_90.fbx",
		turn_right_90 = "data/anims/druid_turn_right_90.fbx",
		turn_left_180 = "data/anims/druid_turn_left_180.fbx",
		knock_egg = "data/anims/druid_knock_egg.fbx",
		talk1 = "data/anims/druid_talk1.fbx",
		talk2 = "data/anims/druid_talk2.fbx",
		talk3 = "data/anims/druid_talk3.fbx",
		nod = "data/anims/druid_nod.fbx",
		shake_head = "data/anims/druid_shake_head.fbx",
		bow = "data/anims/druid_bow.fbx",
		ritual = "data/anims/druid_ritual.fbx",
		back_off = "data/anims/druid_back_off.fbx",
	}
	local _ = nil

	-- NOTE: mob anim speeds are in squares/second!

	--                              HEALTH     ARMOR   DAMAGE                    capsule   smpl
	--       name                   e  m  h    e m h   e m h   spd anim size xp  loot hgt  rad  rad  flags                                                                        immunities
    def_mob{ "archdruid",           10,10,10,  0,0,0,  1,1,1,  3,  4.5,  1,  0,  0,   1.4, 0.5, 0.5, MF_NEUTRAL,                                                                  IMMUNE_ALL }
	def_mob{ "barrell",             10,8, 7,   0,0,0,  1,1,1,  4,  4.5,  1,  0,  0,   1.7, 0.6, 0.5, MF_NEUTRAL,                                                                  0, skin = "ranger_leader" }
    def_mob{ "basilisk",            15,20,20,  0,1,1,  3,3,4,  3,  3.33, 2,  10, 1,   0.0, 2.0, 2.0, MF_IMMOVABLE+MF_AMPHIBIOUS,                                                  0 }
    def_mob{ "blackroot_spitter",   3, 4, 5,   0,0,0,  0,0,0,  0,  4.5,  1,  5,  1,   1.5, 0.8, _,   MF_NO_MELEE+MF_IMMUNE_BACKSTAB+MF_IMMOVABLE,                                 0 }
    def_mob{ "boar",                9, 12,18,  0,0,0,  3,3,4,  3,  4.5,  1,  15, 1,   0.0, 1.3, 1.1, MF_IMMOVABLE,                                                                0 }
    def_mob{ "boar_small",          3, 3, 3,   0,0,0,  1,1,2,  3,  4.5,  1,  3,  1,   0.0, 1.0, 0.8, 0,                                                                           0 }
    def_mob{ "bomb",                4, 5, 6,   0,0,0,  2,3,3,  3,  4.5,  1,  8,  1,   0.8, 0.9, 0.8, MF_NO_MELEE+MF_FLYING+MF_IMMUNE_BACKSTAB,                                    0, ai_flags = AI_AGGRESSIVE }
    def_mob{ "bomb_large",          15,15,20,  1,2,2,  0,0,0,  0,  4.5,  2,  25, 1,   2.5, 2.2, 2.0, MF_NO_MELEE+MF_FLYING+MF_IMMUNE_BACKSTAB+MF_IMMUNE_MIND_CONTROL+MF_IMMOVABLE,IMMUNE_SLEEP+IMMUNE_FREEZE+IMMUNE_STOPPED, ai_flags = AI_AGGRESSIVE }
    def_mob{ "book_mimic",          7, 8, 9,   0,0,0,  3,3,3,  4,  3.53, 1,  10, 1,   1.4, 0.7, 0.5, MF_FLYING+MF_ABSORB_MAGIC,                                                   IMMUNE_BLEEDING }
    def_mob{ "centipede",           5, 6, 8,   0,1,1,  1,2,2,  3,  4.62, 1,  5,  1,   1.0, 0.5, 0.8, MF_AMPHIBIOUS,                                                               0 }
    def_mob{ "centipede_large",     7, 8, 10,  1,1,2,  3,5,5,  3,  4.62, 2,  20, 1,   0.0, 2.3, 2.0, MF_IMMOVABLE+MF_AMPHIBIOUS,                                                  0, skin = "centipede" }
    def_mob{ "coppe",               6, 7, 8,   0,0,0,  2,2,2,  4,  4.5,  1,  8,  1,   1.0, 0.7, 1.1, 0,                                                                           0, ai_flags = AI_TARGET_MAGES }
    def_mob{ "dark_knight",         8, 10,10,  1,2,2,  3,4,5,  3,  2.86, 1,  12, 1,   1.3, 0.7, 0.7, MF_IMMOVABLE,                                                                IMMUNE_BLEEDING }
    def_mob{ "dark_leonhard",       5, 5, 5,   0,0,0,  3,5,6,  4,  4.5,  1,  0,  1,   1.5, 0.5, 0.6, 0,                                                                           IMMUNE_SLEEP+IMMUNE_CONFUSED }
    def_mob{ "dark_leonhard_boss",  25,30,35,  1,1,1,  3,5,6,  3,  4.5,  1,  0,  1,   1.5, 0.5, 0.6, MF_LEAVE_CORPSE+MF_IMMOVABLE,                                                IMMUNE_SLEEP+IMMUNE_CONFUSED, skin = "dark_leonhard" }
	def_mob{ "darkness_orb",	    10,13,15,  0,0,0,  0,0,0,  0,  4.5,  1,  15, 0,   0.0, 1.5, 1.5, MF_NO_MELEE+MF_IMMUNE_BACKSTAB+MF_IMMUNE_MIND_CONTROL+MF_IMMOVABLE,          IMMUNE_DISEASED }
    def_mob{ "dire_wolf",           6, 7, 8,   0,0,0,  2,2,3,  4,  4.62, 1,  9,  1,   0.0, 1.4, 0.5, 0,                                                                           0 }
    def_mob{ "druid_crow",          10,8, 7,   0,0,0,  1,1,1,  3,  1.4,  1,  0,  1,   1.4, 0.5, 0.6, MF_ALLY,                                                                     0, anims = druid_anims }
    def_mob{ "druid_ram",           10,8, 7,   0,0,0,  1,1,1,  3,  1.4,  1,  0,  1,   1.4, 0.5, 0.6, MF_ALLY,                                                                     0, anims = druid_anims }
    def_mob{ "druid_leader",        10,8, 7,   0,0,0,  1,1,1,  3,  1.4,  1,  0,  1,   1.4, 0.5, 0.6, MF_ALLY,                                                                     0, anims = druid_anims }
    def_mob{ "efreet",              5, 5, 5,   0,0,0,  2,2,2,  3,  4.5,  1,  0,  1,   1.4, 0.7, 1.0, MF_ALLY+MF_FLYING,                                                           0, affinities = { [DT_FIRE] = "immune", [DT_COLD] = "weak" }, skin = "imp", ai_flags = AI_FORCE_ENABLE }
    def_mob{ "eoten",               8, 10,12,  0,0,0,  2,3,4,  3,  3.0,  1,  8,  1,   1.7, 0.6, 1.0, 0,                                                                           0 }
    def_mob{ "eoten_champion",		10,12,15,  0,0,0,  2,3,5,  3,  3.0,  1,  8,  1,   1.7, 0.6, 1.0, 0,                                                                           0, skin = "eoten" }
    def_mob{ "eoten_shaman",        5, 6, 7,   0,0,0,  2,3,3,  3,  3.75, 1,  7,  1,   1.5, 0.6, 0.7, 0,                                                                           0 }
    def_mob{ "gelatinus",           5, 7, 8,   0,0,0,  2,2,3,  3,  2.86, 1,  8,  1,   1.8, 0.7, 0.7, MF_NO_MELEE+MF_FLYING+MF_IMMUNE_BACKSTAB,                                    0, affinities = { [DT_LIGHTNING] = "immune" } }
    def_mob{ "human_guard",         5, 5, 5,   0,0,0,  3,3,5,  3,  1.7,  1,  6,  1,   1.3, 0.5, 0.6, MF_REACH,                                                                    0 }
    def_mob{ "ice_demon",           15,20,25,  0,2,2,  3,4,5,  4,  1.58, 2,  30, 1,   6.0, 1.7, 2.7, MF_IMMOVABLE,                                                                IMMUNE_SLEEP+IMMUNE_CONFUSED+IMMUNE_STUNNED+IMMUNE_FREEZE, affinities = { [DT_COLD] = "absorb" } }
    def_mob{ "imp",                 5, 6, 7,   0,0,0,  2,3,3,  5,  3.16, 1,  8,  1,   1.4, 0.7, 1.0, MF_FLYING,                                                                   0, affinities = { [DT_FIRE] = "immune", [DT_COLD] = "weak" } }
    def_mob{ "infector",            3, 6, 6,   0,0,0,  2,2,3,  3,  4.5,  1,  5,  1,   0.0, 1.0, 1.0, MF_IMMUNE_CORRUPTION,                                                        0, ai_flags = AI_BULLY }
    def_mob{ "larva",               5, 5, 5,   0,0,0,  2,3,3,  3,  2.5,  1,  5,  1,   1.0, 0.5, 0.8, 0,                                                                           0 }
    def_mob{ "leonhard_clone",      3, 3, 3,   0,0,0,  2,2,2,  3,  4.5,  1,  3,  1,   1.5, 0.5, 0.5, MF_NEUTRAL,                                                                  skin = "hero" }
    def_mob{ "mad_eye",             12,12,12,  0,0,0,  3,3,3,  3,  4.5,  1,  15, 0,   1.3, 0.6, 0.7, 0,                                                                           0 }
    def_mob{ "merchant",            99,99,99,  0,0,0,  1,1,1,  3,  4.5,  1,  0,  0,   1.0, 0.7, 0.5, MF_NEUTRAL+MF_TALK,                                                          IMMUNE_FREEZE+0 }
    def_mob{ "necromancer",         10,15,17,  0,0,0,  3,3,3,  3,  4.5,  1,  15, 1,   1.2, 0.6, 0.6, MF_UNDEAD,                                                                   IMMUNE_FREEZE+IMMUNE_SLEEP, skin = "red_priest" }
    def_mob{ "ranger",              8, 8, 8,   0,0,0,  1,1,1,  4,  4.5,  1,  0,  0,   1.7, 0.6, 0.5, MF_NEUTRAL,                                                                  0 }
	def_mob{ "ranger_trooper",      8, 8, 8,   0,0,0,  1,1,1,  4,  4.5,  1,  0,  0,   1.7, 0.6, 0.5, MF_NEUTRAL,                                                                  0 }
    def_mob{ "rat",                 5, 5, 6,   0,0,0,  2,2,3,  3,  4.5,  1,  5,  1,   0.0, 1.0, 0.6, 0,                                                                           IMMUNE_DISEASED }
    def_mob{ "red_priest",          5, 6, 7,   0,0,0,  2,3,3,  3,  3.53, 1,  7,  1,   1.2, 0.6, 0.6, 0,                                                                           0 }
    def_mob{ "scorpion",            8, 10,15,  1,2,2,  3,4,5,  3,  3.33, 2,  10, 1,   0.0, 2.0, 2.0, MF_IMMOVABLE,                                                                0 }
	def_mob{ "shido",               1, 1, 1,   0,0,0,  1,1,1,  3,  3.53, 1,  0,  0,   0.0, 0.7, 0.4, MF_NEUTRAL,                                                                  0 }
	def_mob{ "shido_adventurer",    1, 1, 1,   0,0,0,  1,1,1,  3,  4.5,  1,  0,  0,   0.0, 0.7, 0.4, MF_NEUTRAL,                                                                  0 }
	def_mob{ "shido_summon",        1, 1, 1,   0,0,0,  1,1,1,  3,  4.5,  1,  0,  0,   0.0, 0.7, 0.4, MF_ALLY+MF_GUEST_STAR+MF_STEALTHY+MF_CANT_INTERACT,                          0, skin = "shido" }
 	def_mob{ "siren",               6, 9,12,   0,0,0,  0,0,0,  4,  3.33, 1,  10, 1,   1.5, 0.7, 0.7, MF_NO_MELEE+MF_FLYING,                                                       0 }
    def_mob{ "skeleton",            3, 3, 3,   0,0,0,  2,2,3,  3,  3.75, 1,  3,  1,   1.4, 0.6, 0.8, MF_UNDEAD,                                                                   IMMUNE_BLEEDING+IMMUNE_DISEASED }
    def_mob{ "skeleton_archer",     3, 4, 4,   0,0,0,  1,1,2,  3,  3.53, 1,  6,  1,   1.5, 0.7, 0.8, MF_NO_MELEE+MF_UNDEAD,                                                       IMMUNE_BLEEDING+IMMUNE_DISEASED }
    def_mob{ "skeleton_boss",       5, 6, 8,   0,0,0,  3,3,4,  3,  4.0,  1,  8,  1,   1.5, 0.7, 1.0, MF_UNDEAD,                                                                   IMMUNE_BLEEDING+IMMUNE_DISEASED }
    def_mob{ "slug",                3, 3, 3,   0,0,0,  1,1,1,  3,  4.0,  1,  3,  1,   0.0, 0.7, 0.5, MF_AMPHIBIOUS,                                                               0 }
    def_mob{ "sorceress",           20,25,30,  1,3,3,  0,0,0,  0,  4.5,  1,  0,  1,   1.5, 0.5, 0.4, MF_NO_MELEE+MF_FLYING,                                                       IMMUNE_FREEZE+IMMUNE_SLEEP+IMMUNE_CONFUSED+IMMUNE_STOPPED }
    def_mob{ "sorceress_true_form", 20,30,40,  1,1,1,  3,5,6,  5,  3.16, 3,  0,  0,   0.0, 3.7, 6.0, MF_IMMOVABLE+MF_IMMUNE_CORRUPTION,                                           IMMUNE_FREEZE+IMMUNE_SLEEP+IMMUNE_CONFUSED+IMMUNE_STOPPED+IMMUNE_STUNNED }
    def_mob{ "spawnling",           4, 5, 6,   0,0,0,  2,2,2,  3,  5.0,  1,  5,  1,   0.8, 0.6, 0.6, 0,                                                                           0 }
    def_mob{ "spawnling_spear",     4, 5, 6,   0,0,0,  1,1,2,  3,  5.0,  1,  5,  1,   0.8, 0.6, 0.6, 0,                                                                           0 }
    def_mob{ "stalker",             3, 4, 4,   1,1,1,  2,2,3,  4,  5.0,  1,  5,  1,   1.3, 0.6, 0.7, MF_FLYING+MF_IMMUNE_OPPORTUNITY_ATTACK,                                      IMMUNE_STOPPED+IMMUNE_PETRIFY, ai_flags = AI_BULLY }
    def_mob{ "test_npc",            2, 2, 2,   0,0,0,  1,1,1,  4,  4.5,  1,  0,  0,   1.4, 0.5, 0.4, MF_NEUTRAL+MF_TALK,                                                          0 }
	def_mob{ "thief",               5, 5, 5,   0,0,0,  2,2,2,  4,  4.0,  1,  0,  0,   1.2, 0.6, 0.6, MF_ALLY+MF_GUEST_STAR+MF_IMMUNE_STEAL+MF_STEALTHY+MF_LEAVE_CORPSE,           0 }
    def_mob{ "undead_monk",         5, 6, 7,   0,0,0,  2,3,4,  2,  1.58, 1,  7,  1,   1.4, 0.5, 0.7, MF_UNDEAD,                                                                   IMMUNE_DISEASED, affinities = { [DT_COLD] = "immune" } }
    def_mob{ "undead_monk2",        5, 6, 7,   0,0,0,  2,3,4,  2,  1.58, 1,  7,  1,   1.4, 0.5, 0.7, MF_UNDEAD,                                                                   IMMUNE_DISEASED, affinities = { [DT_COLD] = "immune" } }
    def_mob{ "undead_monk3",        5, 6, 7,   0,0,0,  2,3,4,  2,  1.58, 1,  7,  1,   1.4, 0.5, 0.7, MF_UNDEAD,                                                                   IMMUNE_DISEASED, affinities = { [DT_COLD] = "immune" } }
    def_mob{ "void_haunt",          6, 9, 12,  0,0,0,  2,2,2,  3,  3.0,  1,  12, 1,   1.5, 0.7, 1.0, MF_UNDEAD+MF_FLYING,                                                         IMMUNE_BLEEDING+IMMUNE_DISEASED }
    def_mob{ "void_haunt_boss",     15,25,30,  0,1,1,  4,5,5,  4,  2.86, 1,  12, 1,   1.5, 0.7, 1.0, MF_UNDEAD+MF_FLYING,                                                         IMMUNE_BLEEDING+IMMUNE_DISEASED+IMMUNE_SLEEP, skin = "void_haunt" }
    def_mob{ "wasp",                1, 1, 1,   0,0,0,  1,1,1,  6,  10.0, 1,  1,  1,   0.4, 0.7, 1.0, MF_IMMUNE_OPPORTUNITY_ATTACK+MF_FLYING,                                      0 }
    def_mob{ "wasp_nest",           6, 8, 10,  0,0,0,  0,0,0,  0,  4.5,  1,  0,  0,   1.0, 1.0, 1.3, MF_NO_MELEE+MF_IMMUNE_BACKSTAB+MF_IMMUNE_STEAL+MF_IMMOVABLE+MF_NO_REACHABLE_DILATE+MF_IMMUNE_MIND_CONTROL, IMMUNE_ALL }
    def_mob{ "wood_troll",          15,20,20,  1,1,2,  4,5,6,  4,  1.43, 2,  30, 1,   2.8, 1.7, 2.0, MF_IMMOVABLE,                                                                0, ai_flags = AI_AGGRESSIVE, affinities = { [DT_FIRE] = "weak" } }

	def_aux{
		name = "archdruid",
		model_material = "archdruid",
		anims = {
			stand_up = "data/anims/archdruid_stand_up.fbx",
			scratch_head = "data/anims/archdruid_scratch_head.fbx",
			scratch_beard = "data/anims/archdruid_scratch_beard.fbx",
			cast_spell = "data/anims/archdruid_cast_spell.fbx",
			hug_dryad = "data/anims/archdruid_hug_dryad.fbx",
		},
	}

	def_aux{
		name = "barrell",
		anims = {
			die = "data/anims/ranger_leader_die.fbx",
			attack_build_up = "data/anims/ranger_leader_attack_build_up.fbx",
			talk_generic = "data/anims/ranger_leader_talk_generic.fbx",
			talk_look_around = "data/anims/ranger_leader_talk_look_around.fbx",
			throw = "data/anims/ranger_leader_throw.fbx",
			use_potion = "data/anims/ranger_leader_use_potion.fbx",
		},
		hero_portrait = "portraits/ranger_leader",
		hero_sounds = true,
		mob_description = "The right hand of Eroan Calthorn, the leader of the Rangers. In a previous life, he was a simple pig farmer from the southern parts of the forest. But times change.",
	}

	def_aux{
		name = "basilisk",
		ui_name = "Basilisk",
		capsule_offset_y = -2.0,
		light_type = "point",
		light_position = vec(0.0, 3.5, 2.0),
		light_color = vec(0.6, 0.8, 1.0),
		light_intensity = 4.0,
		light_range = 6.0,
		anims = {
			petrify = "data/anims/basilisk_petrify.fbx",
		},
		ai_routine = {
			{ ai_basilisk_petrify, "petrify", 1.0 },
			ai_melee,
			ai_destroy_obstacles,
		},
		basic_attack = {
			flags = IF_ACTION + IF_OFFENSIVE,
			on_use_item = use_melee_weapon,
			on_melee_attack = use_melee_attack_2x2,
			damage = "b",
		},
		petrify = {		
			flags = IF_ACTION + IF_OFFENSIVE,
			cooldown = 3,
			reach = 2,
			on_use_item = use_basilisk_petrify,
		},
		mob_description = "The great lizards are the royalty of the forest. Usually, they are rarely seen, keeping to themselves. But now the woods shake with their wrath.",
		mob_no_move_sounds = true,
		on_anim_event = function(mob, event)
			if event == "stomp" then
				play_sound("basilisk_move", PLAY_ONCE_PER_FRAME)
				camera_shake(0.1, 0.5)
			end
		end,
	}

	def_aux{
		name = "blackroot_spitter",
		anims = {
			withdraw = "data/anims/blackroot_spitter_withdraw.fbx",
		},
		light_type = "point",
		light_position = vec(0.0, 1.0, 0.0),
		light_color = vec(0.8, 0.0, 1.0),
		light_intensity = 25.0,
		light_range = 5.5,
		ai_routine = {
			{ ai_ranged_attack, "spit_attack", 1.0 },
		},
		spit_attack = {
			flags = IF_ACTION + IF_OFFENSIVE + IF_PRIMARY_ATTACK,
			projectile_origin = "spit",
			projectile_type = "darkbolt_projectile",
			on_use_item = use_ranged_weapon,
			damage = 3,
			range = 5,
			inflict = C_IMMOBILIZED,
			description = "Spit at a target within %range squares, dealing %damage damage.\nTarget becomes Immobilized. (Movement speed reduced to 0 for 1 round.)",
		},
		mob_description = "Infected by an unnatural sickness, these flowers sway recklessly, waiting to spit their deadly seed at unsuspecting enemies.",
	}

	def_aux{
		name = "boar",
		capsule_offset_y = -0.4,
		anims = {
			charge = "data/anims/boar_charge.fbx",
			charge_begin = "data/anims/boar_charge_begin.fbx",
		},
		ai_routine = {
			{ ai_boar_charge, "boar_charge", 1 },
			ai_melee,
		},
		boar_charge = {
			flags = IF_ACTION + IF_OFFENSIVE,
			range = 7,
			damage = 5,
			damage_flags = DF_KNOCKBACK,
			on_use_item = use_boar_charge,
		},
		mob_description = "Its red eyes and the purple boils along its back make it clear that this beast is under the influence of something sinister.",
	}

	def_aux{
		name = "boar_small",
		ui_name = "Squeaker",
		capsule_offset_y = -0.5,
		mob_description = "These boars are really just muscle, sharp tusks and unwarranted aggression in one irate package. They are sort of cute if you squint a little, but don't try to pet them.",
	}

	def_aux{
		name = "bomb",
		ui_name = "Oghmi",
		anims = {
			cast_spell = "data/anims/bomb_cast_spell.fbx",
		},
		light_type = "point",
		light_position = vec(0.0, 1.0, 0.0),
		light_color = vec(1.0, 0.3, 0.25),
		light_intensity = 15.0,
		light_range = 5.5,
		light_flicker_frequency = 5.0,
		light_flicker_amplitude = 0.25,
		particle_system = "bomb",
		ai_routine = {
			{ ai_fire, "fire", 1.0 },
			ai_melee,
			{ ai_fire, "fire", 1.0 },
		},
		fire = {
			flags = IF_ACTION + IF_OFFENSIVE + IF_PRIMARY_ATTACK,
			damage = "b",
			damage_type = DT_FIRE,
			range = 3,
			on_use_item = use_fire,
		},
		affinities = { [DT_FIRE] = "absorb" },
		on_post_damage = function(mob, dmg, damage_type)
			if mob.hp == 0 then
				mob.explode = true
			end
		end,
		on_destroy = function(mob)
			if mob.explode then
				explosion(mob.map, mob.x, mob.y)
			end
		end,
		mob_description = "The origins of these abhorrent creatures are shrouded in secrecy. It is said that they see everything, and not all of their eyes watch outward. They have a penchant for lethal mischief.",
		mob_bullet_text = "Unstable: Explodes on death dealing 5 damage to adjacent squares.",
		draw_spells = { "fire" },
	}

	def_aux{
		name = "bomb_large",
		anims = {
			countdown = "data/anims/bomb_large_countdown.fbx",
			explode = "data/anims/bomb_large_explode.fbx",
		},
		capsule_offset_y = 0.5,
		capsule_radius = 2.0,
		capsule_height = 0.5,
		light_type = "point",
		light_position = vec(0.0, 4.0, 0.0),
		light_color = vec(1.0, 0.3, 0.25),
		light_intensity = 15.0,
		light_range = 7.5,
		light_flicker_frequency = 5.0,
		light_flicker_amplitude = 0.25,
		particle_system = "bomb_large",
		affinities = { [DT_FIRE] = "absorb" },
		on_post_damage = function(mob, dmg, damage_type)
			if mob.hp == 0 then
				explosion(mob.map, mob.x, mob.y, 3)
			end
		end,
		mob_description = "Its booming laugh resonating through the caves it calls its home, this creature is a mischievous mastermind of deadly traps. No one knows where it came from, or what it wants, but it seems to foster a deep hatred towards everything that has limbs.",
		draw_spells = { "fire" },
	}

	def_aux{
		name = "book_mimic",
		ui_name = "Ixicodus",
		particle_system = "spellbook",
		particle_position = vec(0.0, 2.0, 0.25),
		light_type = "spot",
		light_position = vec(0.0, 3.0, 0.0),
		light_rotation = vec(math.pi * 0.5, 0.0, 0.0),
		light_color = vec(0.0, 0.75, 1.0),
		light_intensity = 20.0,
		light_range = 10.0,
		light_cast_shadow = true,
		light_blur_shadow = true,
		light_shadow_map_size = 128,
		ai_routine = {
			{ ai_lightning, "lightning", 1 },
			ai_melee,
		},
		lightning = {		
			flags = IF_ACTION + IF_OFFENSIVE + IF_PRIMARY_ATTACK,
			damage = 3,
			damage_type = DT_LIGHTNING,
			damage_flags = DF_MAGIC,
			range = 3,
			on_use_item = use_lightning,
			description = "Shoot a lightning bolt at a single target within %range squares, dealing %damage damage.",
		},
		mob_close_up_camera_height = 1.8,
		mob_bullet_text = "Magic Eater: Any damage caused by spells heals the Ixicodus.",
		mob_description = "Are they made of living spell energy, or just regular matter possessed by foul spirits? Many a naturalist would risk their lives for the opportunity to research these extremely rare and bizarre creatures.",
		draw_spells = { "fire", "lightning", "ice", "teleport" },
	}

	def_aux{
		name = "centipede",
		capsule_offset_z = 0.7,
		anims = {
			poison_attack = "data/anims/centipede_poison_attack.fbx",
		},
		ai_routine = {
			ai_advance,
			{ ai_centipede_poison_attack, "poison_attack", 1 },
			ai_melee,
		},
		poison_attack = {
			flags = IF_ACTION + IF_OFFENSIVE,
			damage = "b",
			inflict = C_POISON,
			on_use_item = use_melee_attack_diagonal_lerp,
			initial_cooldown = {0, 1},
			cooldown = {1, 3},
			attack_sound = "centipede_poison_attack",
		},
		mob_description = "The acid dripping from its nasty mandibles makes this critter more than just a nuisance... And they aren't usually this big, or this aggressive.",
	}

	def_aux{
		name = "centipede_large",
		capsule_offset_y = -1.7,
		ui_name = "Giant Centipede",
		model_scale = 2.0,
		anims = {
			hit_front1 = "data/anims/centipede_large_hit_front1.fbx",
			hit_front2 = "data/anims/centipede_large_hit_front2.fbx",
			hit_back = "data/anims/centipede_large_hit_back.fbx",
			hit_left = "data/anims/centipede_large_hit_left.fbx",
			hit_right = "data/anims/centipede_large_hit_right.fbx",
			attack = "data/anims/centipede_large_attack.fbx",
			attack2 = "data/anims/centipede_large_attack2.fbx",
		},
		mob_description = "Bigger, meaner and faster than their smaller cousins, the giant centipede spits acid at its enemies. Its sharp-toothed maw is always eager to bite into human flesh.",
	}

	def_aux{
		name = "cone_bear",
		ui_name = "Conebear",
		mob_description = "Protected by interlocking layers of armor, these peaceful, cone-shaped inhabitants of the forest can turn into fierce fighters when provoked.",
	}

	def_aux{
		name = "coppe",
		ui_name = "Magebane Spider",
		mob_description = "These spiders, known as Coppe in ancient texts, are dreaded by all spellcasters. Magebane Spiders feed on raw spell energy and can drive low-level mages mad with terror.",
		ai_routine = {
			{ ai_coppe_steal_spell, "steal_spell", 1.0 },
			{ ai_lightning, "lightning", 1.0 },
			{ ai_fire, "fire", 1.0 },
			{ ai_ice, "ice", 1.0 },
			{ ai_forcebolt, "forcebolt", 1.0 },
			{ ai_protect_self, "protect", 1.0 },
			{ ai_cure_self, "cure", 1.0 },
			{ ai_sleep, "sleep", 1.0 },
			{ ai_shield_self, "shield", 1.0 },
			{ ai_confuse, "confuse", 1.0 },
			ai_melee,
			{ ai_coppe_steal_spell, "steal_spell", 1.0 },
			{ ai_lightning, "lightning", 1.0 },
			{ ai_fire, "fire", 1.0 },
			{ ai_ice, "ice", 1.0 },
			{ ai_forcebolt, "forcebolt", 1.0 },
			{ ai_protect_self, "protect", 1.0 },
			{ ai_cure_self, "cure", 1.0 },
			{ ai_sleep, "sleep", 1.0 },
			{ ai_shield_self, "shield", 1.0 },
			{ ai_confuse, "confuse", 1.0 },
		},
		steal_spell = {
			flags = IF_OFFENSIVE,
			cooldown = 1,
			range = 5,
			on_use_item = use_coppe_steal_spell,
		},
		-- forcebolt normally has unlimited uses, but we want coppe to use only spells it has drawn, so we have to redefine the ability here
		forcebolt = {
			flags = IF_ACTION + IF_CONSUMABLE + IF_OFFENSIVE,
			damage = 3,
			range = 5,
			on_use_item = use_forcebolt,
		},
		confuse = {
			flags = IF_ACTION + IF_CONSUMABLE + IF_OFFENSIVE,
			inflict = C_CONFUSED,
			range = 5,
			initial_cooldown = {2, 4},
			on_use_item = use_confuse,
		},
		inventory = { "confuse" },
		draw_spells = { "fire", "ice", "sleep", "cure" },
	}

	def_aux{
		name = "darkness_orb",
		ui_name = "Orb of Darkness",
		capsule_offset_y = -0.5,
		light_type = "point",
		light_position = vec(0.0, 3.0, 0.0),
		light_color = vec(0.9, 0.0, 1.0),
		light_intensity = 20.0,
		light_range = 10.0,
		light_flicker_frequency = 1.0,
		light_flicker_amplitude = 0.5,
		model = "data/models/darkness_orb.fbx",
		particle_system = "darkness_orb",
		anims = {
			hit_front1 = "data/anims/darkness_orb_hit.fbx",
			hit_front2 = "data/anims/darkness_orb_hit.fbx",
			hit_back = "data/anims/darkness_orb_hit.fbx",
			hit_left = "data/anims/darkness_orb_hit.fbx",
			hit_right = "data/anims/darkness_orb_hit.fbx",
			raise_undead = "data/anims/darkness_orb_raise_undead.fbx",
		},
		inventory = { "summon", 10 },
		ai_routine = {
			{ ai_use_item, "summon", 1.0 }
		},
		summon = {
			cooldown = 5,
			flags = IF_ACTION + IF_CONSUMABLE + IF_OFFENSIVE,
			summoned_mobs = { "skeleton", "skeleton", "skeleton_archer" },
			on_use_item = use_darkness_orb_summon,
		},
		mob_description = "This revolting lump of flesh and sinew throbs in time with a distant pulse. It stinks even worse than it looks, which should be impossible.",
	}

	def_object{
		name = "darkness_orb_prop",
		light_type = "point",
		light_position = vec(0.0, 3.0, 0.0),
		light_color = vec(0.9, 0.0, 1.0),
		light_intensity = 20.0,
		light_range = 10.0,
		light_flicker_frequency = 1.0,
		light_flicker_amplitude = 0.5,
		model = "data/models/darkness_orb.fbx",
		particle_system = "darkness_orb",
		anims = {
			idle = "data/anims/darkness_orb_prop_idle.fbx",
		},
	}

	def_aux{
		name = "dark_knight",
		anims = {
			rally = "data/anims/dark_knight_rally.fbx",
		},
		ai_routine = {
			{ ai_dark_knight_rally, "rally", 1.0 },
			ai_melee,
		},		
		rally = {		
			flags = IF_ACTION,
			cooldown = 3,
			range = 5,
		},
		mob_description = "The sigil on the shields of these heavily armored elite soldiers are a sad reminder of the time the Oak Shields still revered the forest - before the corruption set in.",
	}

	def_aux{
		name = "dark_leonhard",
		ui_name = "Black-hooded Man",
		model_material = "dark_leonhard",
		anims = {
			open_door = "data/anims/dark_leonhard_open_door.fbx",
			walk = "data/anims/dark_leonhard_walk.fbx",
			walk_start = "data/anims/dark_leonhard_walk_start.fbx",
			whirlwind = "data/anims/dark_leonhard_whirlwind.fbx",
		},
		light_position = vec(0.0, 2.7, 0.7),
		light_intensity = 10.0,
		light_range = 3.0,
		light_color = 0x22c6ffff,
		mob_walk_anim_speed = 1.09,
		mob_weapon = "despair",
	}

	-- this version appears in the final boss battle in druidstone2
	def_aux{
		name = "dark_leonhard_boss",
		ui_name = "Black-hooded Man",
		model_material = "dark_leonhard",
		anims = {
			open_door = "data/anims/dark_leonhard_open_door.fbx",
			walk = "data/anims/dark_leonhard_walk.fbx",
			walk_start = "data/anims/dark_leonhard_walk_start.fbx",
			whirlwind = "data/anims/dark_leonhard_whirlwind.fbx",
			die = "data/anims/dark_leonhard_die.fbx",
			separation = "data/anims/dark_leonhard_separation.fbx",
			kneeling = "data/anims/dark_leonhard_kneeling.fbx",
			kneeling_die = "data/anims/dark_leonhard_kneeling_die.fbx",
		},
		light_position = vec(0.0, 2.7, 0.7),
		light_intensity = 10.0,
		light_range = 3.0,
		light_color = 0x22c6ffff,
		mob_walk_anim_speed = 1.09,
		mob_weapon = "despair",
		mob_activation_priority = 1,	-- always activate before other mobs
		mob_bullet_text = "Double Attack: the creature can attack two separate targets with a single action.",
		break_forcefield = {
			flags = IF_ACTION + IF_OFFENSIVE,
		},
		on_post_damage = function(mob, damage, damage_flags)
			-- enable counter-attacking when dark leonhard has taken enough damage
			if mob.hp <= mob.max_hp / 2 and not get_mob_flag(mob, MF_COUNTER_ATTACK) then
				-- we don't want to interrupt blasts etc.
				delay_call(function()
					if can_act(mob) and not get_mob_flag(mob, MF_COUNTER_ATTACK) then
						delay(500)
						--play_anim_and_resume_idle(mob, "enrage")
						set_facing(mob, find_facing_for_closeup(mob))
						local def = {
							particle_system = "eoten_enrage",
							light_type = "point",
							light_position = vec(0.0, 2.0, 1.5),
							light_color = vec(1.0, 0.3, 0.1),
							light_intensity = 0.0,
							light_range = 5.5,
							flags = F_TEMPORARY,
						}
						local fx = spawn_at_obj(def, mob)
						fade_light(fx, 20.0, 1.5)
						play_camera_anim(mob, 2.5, "Battle Stance", "rotate")
						destroy(fx)
						set_mob_flag(mob, MF_COUNTER_ATTACK)
					end
				end)
			end
		end,
	}

	def_aux{
		name = "leonhard_clone",
		anims = {
			-- anims for mansion_basement
			afraid = "data/anims/hero_clone_afraid.fbx",
			crouch = "data/anims/hero_clone_crouch.fbx",
			hold_bars = "data/anims/hero_clone_hold_bars.fbx",
			reach = "data/anims/hero_clone_reach.fbx",

			-- anim set 4: two-handed melee (2h)
			["anim_set4.idle"] = "data/anims/hero_anim_set_4/hero_idle.fbx",
			["anim_set4.attack"] = "data/anims/hero_anim_set_4/hero_attack1.fbx",
			["anim_set4.attack2"] = "data/anims/hero_anim_set_4/hero_attack2.fbx",
			["anim_set4.attack_build_up"] = "data/anims/hero_anim_set_4/hero_attack_build_up.fbx",
			["anim_set4.move1"] = "data/anims/hero_anim_set_4/hero_move1.fbx",
			["anim_set4.move2"] = "data/anims/hero_anim_set_4/hero_move2.fbx",
			["anim_set4.move_turn_left"] = "data/anims/hero_anim_set_4/hero_move_turn_left.fbx",
			["anim_set4.move_turn_right"] = "data/anims/hero_anim_set_4/hero_move_turn_right.fbx",
			["anim_set4.whirlwind"] = "data/anims/hero_anim_set_4/hero_whirlwind.fbx",
		},
		mob_walk_anim_speed = 1.3333,
	}

	def_aux{
		name = "dire_wolf",
		capsule_offset_y = -0.5,
		anims = {
			freezing_breath = "data/anims/dire_wolf_freezing_breath.fbx",
		},
		ai_routine = {
			{ ai_dire_wolf_freezing_breath, "freezing_breath", 1.0 },
			ai_melee,
		},		
		freezing_breath = {		
			flags = IF_ACTION + IF_OFFENSIVE,
			cooldown = 3,
			reach = 2,
			on_use_item = use_dire_wolf_freezing_breath,
		},
		mob_close_up_camera_height = 1.0,
		mob_description = "Their multiple heads always looking around for prey, their slavering jaws snapping at the air, the always-hungry canine monsters of the North are famous for their appetite for human flesh.",
		draw_spells = { "ice" },
	}

	-- traitor
	def_aux{
		name = "druid_crow",
		ui_name = "Druid",
		mob_walk_anim_speed = 1.3333,
		inventory = { "protect", 2, "shield", 1, "potion", 1 },
		ai_routine = {
			{ ai_protect_self, "protect", function(mob) return mob.hp <= 12 end },
			{ ai_use_item, "potion", function(mob) return mob.hp < 10 end },
			{ ai_shield_self, "shield", function(mob) return mob.hp < 10 end },
			ai_melee,
		},
		mob_description = "The Druids of the Circle are mystics whose ancient connection with the forest runs deep. They have dedicated their lives to serving the woods.",
	}

	def_aux{
		name = "druid_leader",
		ui_name = "Druid",
		inventory = { "protect", 1, "cure", 1 },
		ai_routine = {
			{ ai_protect, "protect", 0.5 },
			{ ai_cure, "cure", 0.5 },
			ai_melee,
		},
		protect = {
			flags = IF_ACTION + IF_CONSUMABLE,
			range = 5,
			protect_self_never = true,
		},
		cure = {
			flags = IF_ACTION + IF_CONSUMABLE,
			range = 5,
			cure_self_never = true,
		},
		mob_walk_anim_speed = 1.3333,
		mob_description = "The Druids of the Circle are mystics whose ancient connection with the forest runs deep. They have dedicated their lives to serving the woods.",
	}

	def_aux{
		name = "druid_ram",
		ui_name = "Druid",
		inventory = { "fire", 2, "sleep", 1 },
		ai_routine = {
			{ ai_fire, "fire", 0.5 },
			{ ai_sleep, "sleep", 0.5 },
			ai_melee,
		},
		mob_walk_anim_speed = 1.3333,
		mob_description = "The Druids of the Circle are mystics whose ancient connection with the forest runs deep. They have dedicated their lives to serving the woods.",
	}

	def_aux{
		name = "efreet",
		model_material = "efreet",
		particle_system = "efreet",
		particle_parent = "spine2",
		ai_routine = {
			ai_melee,
			ai_follow_heroes,
		},
		interaction_type = "none",
		draw_spells = { "fire" },
		mob_description = "Most oil lamps, you rub them, all you get is dirty fingers. This one? This one gave you a little more than that...",
	}

	def_aux{
		name = "eoten",
		ui_name = "Eoten Warrior",
		anims = {
			enrage = "data/anims/eoten_enrage.fbx",
		},
		on_post_damage = function(mob, damage, damage_flags)
			-- enrage when hp drops to half or less
			if mob.hp + damage > mob.max_hp / 2 and mob.hp <= mob.max_hp / 2 and not get_condition(mob, C_ENRAGED) then
				-- we don't want to interrupt blasts etc.
				delay_call(function()
					if mob.hp > 0 and can_act(mob) and not get_condition(mob, C_ENRAGED) then
						delay(1000)
						play_sound("eoten_enraged")
						play_anim_and_resume_idle(mob, "enrage")
						set_facing(mob, find_facing_for_closeup(mob))
						local def = {
							particle_system = "eoten_enrage",
							light_type = "point",
							light_position = vec(0.0, 2.0, 1.5),
							light_color = vec(1.0, 0.3, 0.1),
							light_intensity = 0.0,
							light_range = 5.5,
							flags = F_TEMPORARY,
						}
						local fx = spawn_at_obj(def, mob)
						fade_light(fx, 20.0, 1.5)
						play_camera_anim(mob, 2.5, "Enraged", "rotate")
						destroy(fx)
						set_condition(mob, C_ENRAGED, 5)
					end
				end)
			end
		end,
		mob_description = "These fierce warriors hail from distant lands beyond the forest. But now their numbers here are growing, indicating that the Cancer is taken root in the South as well.",
	}

	local function eoten_champion_particles(mob)
		local def = {
			particle_system = "eoten_champion_weapon",
			flags = F_TEMPORARY,
		}
		local particle_obj = spawn_at_obj(def, mob)
		attach_bone(particle_obj, mob, "hand_right")
	end

	def_aux{
		name = "eoten_champion",
		model_material_overrides = { eoten = "eoten_champion" },
		light_position = vec(0.625, 2.0, 1.73),
		light_intensity = 17.0,
		light_range = 3.4,
		light_color = 0xff3600ff,
		particle_system = "eoten_champion",
		on_init = eoten_champion_particles,
		on_game_loaded = eoten_champion_particles,
		mob_description = "The rest of the Eoten are warriors through and through. But their champion? That's a whole another degree of trouble.",
	}

	def_aux{
		name = "eoten_shaman",
		ui_name = "Beastmaster",
		heightmap_sample_radius = 0.4,
		ai_routine = {
			{ ai_cure, "cure" },
			{ ai_forcebolt, "forcebolt" },
			ai_melee,
		},
		anims = {
			cure = "data/anims/eoten_shaman_cure.fbx"
		},
		forcebolt = {
			flags = IF_ACTION + IF_OFFENSIVE + IF_PRIMARY_ATTACK,
			damage = "b",
			range = 5,
			on_use_item = use_forcebolt,
		},
		cure = {
			flags = IF_ACTION,
			range = 5,
			cure_self_never = true,
			cast_spell_anim = "cure",
		},
		mob_description = "With his uncanny ability to command animals, the Beastmaster rarely fights alone. But the corruption that is influencing the animals also seems to have its hooks in him...",
		draw_spells = { "cure" },
	}

	def_aux{
		name = "gelatinus",
		light_type = "point",
		light_position = vec(0.0, 1.6, 0.0),
		light_color = vec(0.1, 0.9, 1.0),
		light_intensity = 15,
		light_range = 6,
		light_flicker_frequency = 1.5,
		light_flicker_amplitude = 0.5,
		model = "data/models/gelatinus.fbx",
		particle_system = "gelatinus",
		ai_routine = {
			{ ai_ranged_attack, "shock", 1.0 },
			ai_melee,
		},
		shock = {		
			flags = IF_ACTION + IF_OFFENSIVE + IF_PRIMARY_ATTACK,
			damage = "b",
			damage_flags = DF_MAGIC,
			damage_type = DT_LIGHTNING,
			range = 5,
			on_use_item = use_shock,
			description = "Shock a target within %range squares, dealing %damage damage."
		},
		mob_description = "Floating in the air and crackling with sparks of light, the gelatini may look harmless, perhaps even beautiful. However, if you don't want be electrocuted, you'd be wise to keep your distance.",
		draw_spells = { "lightning" },
	}

	def_aux{
		name = "golem",
		basic_attack = {
			flags = IF_ACTION + IF_OFFENSIVE,
			on_use_item = use_melee_weapon,
			on_melee_attack = use_melee_attack_2x2,
		},
	}

	def_aux{
		name = "human_guard",
		anims = {
			reach = "data/anims/human_guard_reach.fbx",
			guard = "data/anims/human_guard_guard.fbx",
		},
		ai_routine = {
			ai_flank,
			ai_melee,
			ai_guard,
		},
		guard = {		
			flags = IF_ACTION + IF_END_TURN,
			on_use_item = use_guard,
		},
		mob_description = "These seasoned soldiers' loyalty can be bought with gold. They will fight to the death to earn their pay.",
	}

	def_aux{
		name = "ice_demon",
		light_type = "point",
		light_parent = "spine2",
		light_position = vec(0.0, 3.8, 2.8),
		light_color = vec(0.2, 0.7, 1.0),
		light_intensity = 15,
		light_range = 11,
		model = "data/models/ice_demon.fbx",
		particle_system = "ice_demon",
		particle_parent = "spine2",
		ai_routine = {
			ai_advance,
			{ ai_ice, "ice" },
			ai_melee,
			ai_destroy_obstacles,
		},
		anims = {
			roar = "data/anims/ice_demon_roar.fbx",
			die = "data/anims/ice_demon_die.fbx",
		},
		ice = {
			flags = IF_OFFENSIVE,		-- ice spell is a free action for ice demon, however it can only use once ice spell per round
			cooldown = 1,
			damage = 4,
			range = 5,
			on_use_item = use_ice,
			no_close_up = true,
			inflict = C_SLOWED,
		},
		basic_attack = {
			flags = IF_ACTION + IF_OFFENSIVE,
			on_use_item = use_melee_weapon,
			on_melee_attack = use_melee_attack_2x2,
			damage = "b",
		},
		mob_aura = 2,
		mob_aura_damage_type = DT_COLD,
		--mob_regeneration = 1,
		mob_activation_priority = 1,	-- always activate before other mobs
		mob_description = "Breathing out clouds of ice crystals, radiating cold, this otherworldly behemoth freezes everything it touches. A chilled rage burns deep in its ice-blue eyes.",
		mob_force_turn_anims = true,
		mob_no_move_sounds = true,
		timer = function(mob)
			-- spawn aura
			if mob.freezing_aura_effect == nil and mob.hp > 0 and mob.map then
				local def = {
					particle_system = "ice_demon_freezing_aura",
					particle_auto_destroy = true,
					flags = F_TEMPORARY,
				}

				local aura = spawn_at_obj(def, mob)
				set_facing(aura, 0)	-- make sure aura is not diagonally oriented
				mob.freezing_aura_effect = aura
			end

			-- update aura
			if mob.freezing_aura_effect then
				set_world_pos(mob.freezing_aura_effect, get_world_pos(mob))
			end
		end,
		on_anim_event = function(mob, event)
			if event == "stomp" then
				play_sound("ice_demon_move")
				camera_shake(0.15, 0.5)
			end
		end,
		on_destroy = function(mob)
			-- destroy aura
			if mob.freezing_aura_effect then
				stop_particles(mob.freezing_aura_effect)
				mob.freezing_aura_effect = nil
			end
		end,
		draw_spells = { "freeze", "ice", "protect" },
	}

	def_aux{
		name = "imp",
		mob_description = "Grinning like maniacs, these winged devils dash at their enemies, whirling their red-hot tridents in deadly patterns.",
		draw_spells = { "fire" },
	}

	def_aux{
		name = "infector",
		anims = {
			climb = "data/anims/infector_climb.fbx",
		},
		capsule_offset_y = -0.2,
		light_type = "point",
		light_position = vec(0.0, 2.5, 0.0),
		light_color = vec(0.6, 0.22, 1.0),
		light_intensity = 15.0,
		light_range = 6.0,
		mob_description = "These inhabitants of Zero Seed are crucial in spreading the Cancer. They have been working very hard indeed.",
	}

	def_aux{
		name = "larva",
		ui_name = "Mindworm Larva",
		capsule_offset_z = 0.7,
		ai_routine = {
			{ ai_ranged_attack, "spit", 1 },
			--{ ai_melee, "stunning_bite", 1 },
			ai_melee,
		},
		anims = {
			spit = "data/anims/larva_spit.fbx",
		},
		spit = {
			flags = IF_ACTION + IF_OFFENSIVE + IF_PRIMARY_ATTACK,
			projectile_origin = "mouth2_Down",
			on_use_item = use_ranged_weapon,
			attack_anim = "spit",
			range = 3,
			damage = "b",
			description = "Spit a target within %range squares, dealing %damage damage.",
		},
		-- stunning_bite = {
		-- 	flags = IF_ACTION + IF_OFFENSIVE + IF_PRIMARY_ATTACK,
		-- 	damage = 3,
		-- 	inflict = C_STUNNED,
		-- 	on_use_item = use_melee_attack_diagonal_lerp,
		-- 	attack_sound = "larva_suck",
		-- },
		mob_description = "These larvae tend to give people the creeps. That's the least of what they can do.",
	}

	local function init_mad_eye_attachments(obj)
		if obj.lantern_attachment then return end

		-- lantern particle attachment
		local def = {
			particle_system = "mad_eye_lantern",
			flags = F_TEMPORARY,
		}
		local attachment = spawn(def, obj.map, 0, 0, 0, nil, nil, SPAWN_ATTACHMENT)
		attach_bone(attachment, obj, "fire_ball")
		obj.lantern_attachment = attachment

		-- TODO: eye particles?
	end

	local function destroy_mad_eye_attachments(obj)
		if not obj.lantern_attachment then return end
		destroy(obj.lantern_attachment)
		obj.lantern_attachment = nil
	end

	def_aux{
		name = "mad_eye",
		anims = {
			laugh = "data/anims/mad_eye_laugh.fbx",
			victory = "data/anims/mad_eye_laugh.fbx",	-- used when prisoner escapes last in prisoner
			summon = "data/anims/mad_eye_summon.fbx",
			raise_lava = "data/anims/mad_eye_raise_lava.fbx",
			cast_fire = "data/anims/mad_eye_cast_fire.fbx",
		},
		heightmap_sample_radius = 0.4,
		model_scale = 1.1,
		light_type = "point",
		light_position = vec(0.0, 3.0, 0.3),
		light_color = vec(1.0, 0.7, 0.3),
		light_intensity = 8.0,
		light_range = 5.5,
		light_flicker_frequency = 5.0,
		light_flicker_amplitude = 0.25,
		particle_system = "mad_eye",
		particle_position = vec(0.0, 0.2, 0.1),
		particle_parent = "head",
		inventory = { "fire", 3 },
		ai_routine = {
			{ ai_fire, "fire", 1 },		-- each mission will typically override the ai and abilities!
			ai_melee,
		},
		fire = {
			flags = IF_ACTION + IF_CONSUMABLE + IF_OFFENSIVE + IF_PRIMARY_ATTACK,
			damage = 3,
			damage_type = DT_FIRE,
			range = 5,
			on_use_item = use_fire,
			cast_spell_anim = "cast_fire",
		},
		mob_description = "His eyes burn with madness behind the skull mask: they don't come much crazier than the new leader of the Red Priests. He has single-handedly turned this mostly harmless sect into a murderous threat. And he's just getting started.",
		mob_activation_priority = 1,	-- always activate before other mobs
		draw_spells = { "fire" },
		on_init = init_mad_eye_attachments,
		on_spawn = init_mad_eye_attachments,
		on_game_loaded = init_mad_eye_attachments,
		on_destroy = destroy_mad_eye_attachments,
	}

	def_aux{
		name = "merchant",
		anims = {
			rub_hands = "data/anims/merchant_rub_hands.fbx",
		},
		ui_name = "Traveller",
		mob_description = "An international man of mystery, old Steelface has never told anyone where he comes from, or what he looks like under the mask... or where he gets his wares. He'll make you a good deal, though.",
		light_type = "point",
		light_position = vec(0.2, 2.3, 0.9),
		light_color = vec(1.0, 1.0, 1.0),
		light_intensity = 10.0,
		light_range = 6,
		on_interact = interact_merchant,
	}

	def_aux{
		name = "necromancer",
		anims = {
			laugh = "data/anims/red_priest_laugh.fbx",
		},
		model_material = "necromancer",
		heightmap_sample_radius = 0.4,
		ai_routine = {
			{ ai_use_item, "summon_undead", 1 },
			{ ai_forcebolt, "forcebolt", 1 },
			ai_melee,
		},
		forcebolt = {
			flags = IF_ACTION + IF_OFFENSIVE + IF_PRIMARY_ATTACK,
			damage = 3,
			range = 5,
			on_use_item = use_forcebolt,
		},
		summon_undead = {
			flags = IF_ACTION + IF_OFFENSIVE,
			on_use_item = use_necromancer_summon_undead,
		},
		mob_description = "An obsession with corpses, a knack for the darkest arts, and absolutely no moral backbone, unless maybe he just happened to dig one up. The Necromancer doesn't get invited to a lot of parties.",
	}

	def_aux{
		name = "ranger",
		anims = {
			sit1 = "data/anims/ranger_sit1.fbx",
			sit2 = "data/anims/ranger_sit2.fbx",
			duel1 = "data/anims/ranger_duel1.fbx",
			duel2 = "data/anims/ranger_duel2.fbx",
			bow = "data/anims/ranger_bow.fbx",
			point_right = "data/anims/ranger_point_right.fbx",
		},
	}

	def_aux{
		name = "ranger_trooper",
		anims = {
			-- HACK reuse anims from ranger:
			sit1 = "data/anims/ranger_sit1.fbx",
			sit2 = "data/anims/ranger_sit2.fbx",
			coach = "data/anims/ranger_trooper_coach.fbx",
			duel2 = "data/anims/ranger_trooper_duel2.fbx",
			bow = "data/anims/ranger_trooper_bow.fbx",
		},
	}	
	
	def_aux{
		name = "rat",
		ui_name = "Plague Rat",
		capsule_offset_y = -0.6,
		basic_attack = {
			flags = IF_ACTION + IF_OFFENSIVE,
			inflict = C_DISEASED,
			on_use_item = use_melee_weapon,
			damage = "b",
		},
		mob_description = "Ordinary rats can be bad enough, but a closer look reveals the dangling shreds of furry skin and boils of necrotic flesh all over these screeching rodents.",
	}

	def_aux{
		name = "red_priest",
		anims = {
			laugh = "data/anims/red_priest_laugh.fbx",
			summon = "data/anims/red_priest_summon.fbx",
			focus = "data/anims/red_priest_summon.fbx",
			use_potion = "data/anims/red_priest_use_potion.fbx",
			throw = "data/anims/red_priest_throw.fbx",
			stretch = "data/anims/red_priest_stretch.fbx",
			unconscious = "data/anims/red_priest_unconscious.fbx",
			unconscious2 = "data/anims/red_priest_unconscious2.fbx",
		},
		heightmap_sample_radius = 0.4,
		inventory = { "fire", 2, "summon_imp", 1 },
		ai_routine = {
			{ ai_use_item, "summon_imp" },
			{ ai_fire, "fire" },
			ai_melee,
			{ ai_fire, "fire" },
		},
		fire = {
			flags = IF_ACTION + IF_CONSUMABLE + IF_OFFENSIVE + IF_PRIMARY_ATTACK,
			damage = "b",
			damage_type = DT_FIRE,
			range = 5,
			on_use_item = use_fire,
		},
		summon_imp = {
			flags = IF_ACTION + IF_CONSUMABLE + IF_OFFENSIVE,
			on_use_item = use_red_priest_summon_imp,
			initial_cooldown = {0, 3},
		},
		mob_description = "Followers of Oghmu, the Burning God, Red Priests pride themselves on being as fickle and erratic as their deity. There was a time when they were mostly harmless. That time has now passed.",
		draw_spells = { "fire" },
	}

	def_aux{
		name = "reindeer_king",
		light_type = "point",
		light_position = vec(0.0, 2.9, 0.9),
		light_color = vec(1.0, 0.9, 0.5),
		light_intensity = 20,
		light_range = 5,
		particle_system = "reindeer_king",
	}

	def_aux{
		name = "scorpion",
		ui_name = "Giant Scorpion",
		capsule_offset_y = -1.0,
		anims = {
			sting = "data/anims/scorpion_sting.fbx",
		},
		ai_routine = {
			{ ai_melee, "sting", 1.0 },
			ai_melee,
			ai_destroy_obstacles,
		},
		basic_attack = {
			flags = IF_ACTION + IF_OFFENSIVE,
			on_use_item = use_melee_weapon,
			on_melee_attack = use_melee_attack_2x2,
			damage = "b",
		},
		sting = {		
			flags = IF_ACTION + IF_OFFENSIVE,
			cooldown = 2,
			on_use_item = use_scorpion_sting,
			damage = "b",
		},
		mob_description = "Caught firmly between massive pincers, the prey of this gigantic beast can only hope its venomous stinger delivers quick mercy.",
	}

	def_aux{
		name = "shido",
		anims = {
			rescue = "data/anims/shido_rescue.fbx",
			whirlwind = "data/anims/shido_whirlwind.fbx",
			attack_build_up = "data/anims/shido_attack_build_up.fbx",
		},
		light_type = "point",
		light_position = vec(0.0, 1.6, 0.0),
		light_color = vec(0.1, 0.9, 1.0),
		light_intensity = 10,
		light_range = 6,
		mob_water_offset = -0.5,
		mob_description = "These fluffy little fellows are close allies to the druids. Their telepathic abilities enable the Circle to stay in contact with its agents.",
	}

	def_aux{
		name = "shido_adventurer",
		anims = {
			rescue = "data/anims/shido_rescue.fbx",
			whirlwind = "data/anims/shido_whirlwind.fbx",
			attack_build_up = "data/anims/shido_attack_build_up.fbx",
			move1 = "data/anims/shido_move1.fbx",
			move2 = "data/anims/shido_move2.fbx",
		},
		mob_water_offset = -0.5,
		mob_description = "These fluffy little fellows are close allies to the druids. Their telepathic abilities enable the astral links used by the Circle to contact its agents.",
	}

	def_aux{
		name = "shido_summon",
		anims = {
			sleep = "data/anims/shido_sad.fbx",
			rescue = "data/anims/shido_rescue.fbx",
			whirlwind = "data/anims/shido_whirlwind.fbx",
			attack_build_up = "data/anims/shido_attack_build_up.fbx",
			power_attack = "data/anims/shido_cast_spell.fbx",
		},
		light_type = "point",
		light_position = vec(0.0, 1.6, 0.0),
		light_color = vec(0.1, 0.9, 1.0),
		light_intensity = 15,
		light_range = 6,
		inventory = { "shido_punch" },
		hero_portrait = "portraits/shido",
		mob_water_offset = -0.5,
		mob_description = "Conflict and violence do not come naturally to the Shido. But some among them are ready to fight. Eager, even.",
	}

	def_aux{
		name = "siren",
		ui_name = "Siren",
		model_material = "siren",
		anims = {
			charm = "data/anims/siren_charm.fbx",
			suffocate = "data/anims/siren_suffocate.fbx",
		},
		capsule_height = 4.0,
		light_type = "point",
		light_position = vec(0.0, 4.375, 0.51),
		light_color = vec(0.6, 0.8, 1.0),
		light_intensity = 15.0,
		light_range = 10.0,
		light_cast_shadow = false,
		ai_routine = {
			{ ai_suffocate, "suffocate", 0.5 },	-- 50-50 chance of suffocating/charming
			{ ai_charm, "charm", 1.0 },
			{ ai_cure_self, "cure", 0.5 },
			{ ai_protect_self, "protect", 0.5 },
			{ ai_suffocate, "suffocate", 1.0 },
			ai_advance,
			{ ai_charm, "charm", 1.0 },
			{ ai_suffocate, "suffocate", 1.0 },
		},
		charm = {
			flags = IF_ACTION+IF_OFFENSIVE+IF_END_TURN,
			range = 5,
			cooldown = 5,
			cast_spell_anim = "charm",
			camera_anim = "custom",
			close_up_duration = 3.8,
		},
		cure = {
			flags = IF_ACTION+IF_END_TURN,
			cooldown = 5,
		},
		protect = {
			flags = IF_ACTION+IF_END_TURN,
			duration = 2,
			cooldown = 5,
		},
		suffocate = {
			ui_name = "Suffocate",
			flags = IF_ACTION+IF_OFFENSIVE+IF_END_TURN+IF_PRIMARY_ATTACK,
			cast_spell_anim = "suffocate",
			range = 5,
			damage = 3,
			inflict = C_SUFFOCATING,
			on_use_item = use_suffocate,
			close_up_duration = 2.4,
			description = "Suffocate a target within %range squares, dealing %damage damage. The target can't cast spells and receives 1 damage at the start of round for 2 rounds.",
		},
		mob_description = "The Sirens are a Bymyrian security system. They aren't alive, strictly speaking. Which can also be said of anything they consider a threat.",
	}

	def_aux{
		name = "skeleton",
		light_type = "point",
		light_position = vec(0.2, 2.3, 0.9),
		light_color = vec(0.0, 0.5, 1.0),
		light_intensity = 40.0,
		light_range = 5.5,
		light_flicker_frequency = 5.0,
		light_flicker_amplitude = 0.25,
		light_hide_snow = true,
		mob_spawn_on_death = "skeleton_corpse",
		mob_description = "The fleshless dead are effective foot soldiers, not least because there seems to be a legion of them.",
	}

	def_aux{
		name = "skeleton_archer",
		light_type = "point",
		light_position = vec(0.2, 2.3, 0.9),
		light_color = vec(0.0, 0.5, 1.0),
		light_intensity = 40.0,
		light_range = 5.5,
		light_flicker_frequency = 5.0,
		light_flicker_amplitude = 0.25,
		light_hide_snow = true,
		ai_routine = {
			{ ai_ranged_attack, "arrow_attack", 1.0 },
			ai_melee,
		},
		arrow_attack = {
			flags = IF_ACTION + IF_OFFENSIVE + IF_PRIMARY_ATTACK,
			projectile_type = "arrow_projectile",
			on_use_item = use_ranged_weapon,
			range = 6,
			pierce = 1,
			damage = "b",
			attack_sound = "bow",
			description = "Deal %damage damage to a target within %range squares.",
		},
		mob_spawn_on_death = "skeleton_corpse",
		mob_description = "Even with hollow sockets instead of eyes, the accuracy of the skeletal bowmen can daunt the bravest warrior.",
	}

	def_aux{
		name = "skeleton_boss",
		model = "data/models/skeleton_boss.fbx",
		light_type = "point",
		light_position = vec(0.2, 2.3, 0.9),
		light_color = vec(1.0, 0.0, 0.0),
		light_intensity = 40.0,
		light_range = 5.5,
		light_flicker_frequency = 5.0,
		light_flicker_amplitude = 0.25,
		particle_system = "heart",
		particle_position = vec(0.0, 0.2, 0.1),
		particle_parent = "spine2",
		mob_spawn_on_death = "skeleton_corpse",
		mob_bullet_text = "Undead Commander: Health of all undeads is increased by 2 as long as the Skeleton Boss remains.",
		mob_description = "The undead commander rattles a huge axe against the massive shield, taunting its enemies. Unholy red fire flickers within its rib cage, where its heart should be.",
	}

	-- skeleton corpses
	do
		local function on_skeleton_corpse_tooltip(obj, ctx)
			if get_flag(obj, F_INTERACTIVE) then
				ctx.title(ui_name(obj))
				if obj.map.raising_the_dead then
					ctx.lore_text("Raise the bones as a Skeleton with 3 health. The Skeleton fights on your side during enemy turn.")
				else
					ctx.lore_text("The bones glow eerily in the presence of a nearby Void Haunt.")
				end
			end
		end

		local function draw_eery_glow(obj, time)
			obj.corpse_light_intensity = obj.corpse_light_intensity or 0.0

			if obj.corpse_light_intensity_override then
				obj.corpse_light_intensity = obj.corpse_light_intensity_override
			else
				-- are there any nearby void haunts: the corpse is interactive when there are.
				local void_haunts = get_flag(obj, F_INTERACTIVE)
				
				if void_haunts then
					obj.corpse_light_intensity = math.min(obj.corpse_light_intensity + g.delta_time, 1.0)
				else
					obj.corpse_light_intensity = math.max(obj.corpse_light_intensity - g.delta_time, 0.0)
				end
			end

			-- animate light intensity
			set_light_intensity(obj, obj.arch.light_intensity * obj.corpse_light_intensity)

			-- fade particles
			set_particle_system_opacity(obj, obj.corpse_light_intensity)

			if obj.corpse_light_intensity == 0.0 then return end

			local tex = load_texture("data/textures/corpse_light.png", "rgba8_srgb")
			local pos = get_world_pos(obj)
			local intensity = obj.corpse_light_intensity * 0.6

			shb_vertex_color(intensity, intensity, intensity, 1.0)

			local function ring(num_segments, r1, r2, h1, h2, base_u, scale_u)
				shb_blend_state("additive")
				shb_begin_vertices("quad_strip", tex)

				for i=0,num_segments do
					local t = i / num_segments
					local x = math.sin(t * math.pi * 2.0)
					local z = math.cos(t * math.pi * 2.0)

					shb_vertex_texcoord(base_u + t * scale_u, 1.0)
					shb_vertex_position(pos.x + x * r1, pos.y + h1, pos.z + z * r1)

					shb_vertex_texcoord(base_u + t * scale_u, 0.0)
					shb_vertex_position(pos.x + x * r2, pos.y + h2, pos.z + z * r2)
				end

				shb_end_vertices()
			end

			local scale = 1.0 + math.sin(time) * 0.1
			local height_factor = obj.corpse_light_height_factor or 1.0

			ring(10, 0.2 * scale, 0.4 * scale, 0.2 * scale, 2.0 * scale * height_factor, time * 0.1, 1.0)

			local scale = 1.0 + math.cos(time) * 0.05

			ring(20, 0.4 * scale, 1.7 * scale, 0.2 * scale, 0.45 * scale, time * -0.2 + 0.5, 3.0)
			ring(20, 0.3 * scale, 1.3 * scale, 0.2 * scale, 0.45 * scale, time * 0.1 + 0.2, 2.0)
		end

		function update_corpse(obj, time)
			local map = obj.map

			if map and get_cell_flag(map, obj.x, obj.y, CF_KNOWN) and not get_flag(obj, F_DISABLED) and not editor.active then
				clear_flag(obj, F_INTERACTIVE)

				-- is a hero raising the dead?
				if map.raising_the_dead then
					set_flag(obj, F_INTERACTIVE)
					return
				end

				-- check for nearby void haunts
				for _,mob in map_mobs(map) do
					if mob.arch.name == "void_haunt" and distance(obj.x, obj.y, mob.x, mob.y) <= 5 then
						set_flag(obj, F_INTERACTIVE)
						return
					end
					if mob.arch.name == "void_haunt_boss" then
						set_flag(obj, F_INTERACTIVE)
					end
				end
			end
		end

		def_object{
			name = "ground_dirt_skeleton",
			ui_name = "Bones",
			model = "data/models/ground_dirt_skeleton.fbx",
			layer = "dungeon_clutter",
			light_type = "point",
			light_position = vec(0.0, 0.5, 0.0),
			light_color = vec(0.68, 0.41, 1.2),
			light_intensity = 15.0,
			light_range = 5.5,
			light_flicker_frequency = 5.0,
			light_flicker_amplitude = 0.25,
			particle_system = "corpse_light",
			dynamic_geometry_func = draw_eery_glow,
			timer = update_corpse,
			on_tooltip = on_skeleton_corpse_tooltip,
			tooltip_priority = 2,
			interaction_type = "move_to",
		}

		def_object{
			name = "skeleton_corpse",
			ui_name = "Bones",
			model = "data/models/skeleton_corpse.fbx",
			model_can_emit_particles = true,
			anims = { die = "data/anims/skeleton_corpse_die.fbx" },
			anim_play_on_init = "die",
			light_type = "point",
			light_position = vec(0.0, 0.5, 0.0),
			light_color = vec(0.68, 0.41, 1.2),
			light_intensity = 15.0,
			light_range = 5.5,
			light_flicker_frequency = 5.0,
			light_flicker_amplitude = 0.25,
			particle_system = "corpse_light",
			dynamic_geometry_func = draw_eery_glow,
			timer = update_corpse,
			on_tooltip = on_skeleton_corpse_tooltip,
			tooltip_priority = 2,
			interaction_type = "move_to",
			on_game_loaded = function(corpse)
				sample_anim(corpse, "die", 100.0)
			end,
		}
	end

	def_aux{
		name = "slug",
		mob_description = "Usually peaceful and harmless, these molluscs have now become deformed and aggressive, victims of the growing sickness in the forest.",
	}

	def_aux{
		name = "sorceress",
		anims = {
			defeated = "data/anims/sorceress_defeated.fbx",
			defeated_idle = "data/anims/sorceress_defeated_idle.fbx",
			defeated_laugh = "data/anims/sorceress_defeated_laugh.fbx",
			stand_up = "data/anims/sorceress_stand_up.fbx",
			enter_portal = "data/anims/sorceress_enter_portal.fbx",
		},
		inventory = { "forcebolt", 100, "possess", 2, "protect", 2, "cure", 2, "sleep", 2, "haste", 10, "slow_time", 1, "dispel", 2, "summon", 3 },
		ai_routine = {
			--{ ai_possess, "possess", 1.0 }, -- for testing possess
			{ ai_haste_self, "haste", 1.0 },
			--{ ai_protect_self, "protect", function(mob) return mob.hp <= mob.max_hp * 0.5 end },
			--{ ai_cure_self, "cure", function(mob) return mob.hp <= mob.max_hp * 0.33 end },
			--{ ai_dispel, "dispel", 0.6 },
			{ ai_sleep, "sleep", function(mob) return battle.round >= 4 and shb_random_float() < 0.5 end },
			{ ai_possess, "possess", function(mob) return mob.hp <= mob.max_hp * 0.75 and shb_random_float() < 0.5 end },
			{ ai_use_item, "slow_time", function(mob) return mob.hp <= mob.max_hp * 0.4 end },
			{ ai_sorceress_summon, "summon", function(mob) return battle.round >= 5 end },
			{ ai_sorceress_forcebolt, "forcebolt", 1.0 },
			{ ai_sleep, "sleep", function(mob) return battle.round >= 4 and shb_random_float() < 0.5 end },
			{ ai_possess, "possess", function(mob) return mob.hp <= mob.max_hp * 0.75 and shb_random_float() < 0.5 end },
			{ ai_use_item, "slow_time", function(mob) return mob.hp <= mob.max_hp * 0.4 end },
			{ ai_sorceress_summon, "summon", function(mob) return battle.round >= 5 end },
			{ ai_sorceress_forcebolt, "forcebolt", 1.0 },
			{ ai_sorceress_teleport, "teleport", 1.0 },
		},
		light_type = "point",
		light_position = vec(0.0, 2.8, 0.6),
		light_color = vec(0.6, 0.7, 1.0),
		light_intensity = 6.0,
		light_range = 5.0,
		forcebolt = {
			flags = IF_ACTION + IF_CONSUMABLE + IF_OFFENSIVE + IF_PRIMARY_ATTACK,
			range = 5,
			cooldown = 1,
			damage = 4,
			on_use_item = use_forcebolt,
		},
		cure = {
			flags = IF_ACTION + IF_CONSUMABLE,
			range = 1,
			cure_amount = 7,
		},
		sleep = {
			flags = IF_ACTION + IF_CONSUMABLE + IF_OFFENSIVE,
			range = 8,
			cooldown = 5,
			always_focused = true,
			on_use_item = use_sleep,
		},
		haste = {
			flags = IF_ACTION + IF_CONSUMABLE,
			range = 1,
			duration = 6,
		},
		protect = {
			flags = IF_ACTION + IF_CONSUMABLE,
			range = 1,
			duration = 6,
		},
		possess = {
			flags = IF_ACTION + IF_CONSUMABLE + IF_OFFENSIVE,
			range = 8,
			cooldown = 5,
			on_use_item = use_possess,
		},
		slow_time = {
			flags = IF_ACTION + IF_CONSUMABLE,
			on_use_item = use_slow_time,
		},
		summon = {
			flags = IF_ACTION + IF_CONSUMABLE + IF_OFFENSIVE,
			cooldown = 3,
		},
		sleep_dryad = {					-- special ability for outro scene
			ui_name = "Sleep",
			flags = IF_OFFENSIVE,
			range = 8,
			sorceress_special = true,
			camera_anim = "rotate",
			close_up_duration = 3.0,
			no_battle_focus = true,
			on_use_item = use_sleep,
		},
		teleport = {
			flags = 0,
			cooldown = 1,
			preferred_min_dist = 3,			-- the distance the sorceress likes to keep to her enemies
			preferred_max_dist = 5,			-- the maximum distance the sorceress likes to keep to her enemies
			min_jump_dist = 3,				-- how many squares to jump at minimum
			random_teleport_chance = 0.3,	-- the chance of randomly teleporting from a nice location
		},
		draw_spells = { "haste", "cure", "sleep" },
		mob_activation_priority = 1,	-- always activate before other mobs
		mob_description = "The Sorceress is old, incredibly powerful, and full of schemes. Her concerns are distinctly inhuman, and her plans go far beyond merely amassing wealth or power.",
	}

	def_aux{
		name = "sorceress_true_form",
		ui_name = "Sorceress",
		anims = {
			attack_1 = "data/anims/sorceress_true_form_attack_left_corner.fbx",
			attack_2 = "data/anims/sorceress_true_form_attack_left.fbx",
			attack_3 = "data/anims/sorceress_true_form_attack_middle.fbx",
			attack_4 = "data/anims/sorceress_true_form_attack_right.fbx",
			attack_5 = "data/anims/sorceress_true_form_attack_right_corner.fbx",
			climb_up = "data/anims/sorceress_true_form_climb_up.fbx",
			summon_blackroots = "data/anims/sorceress_true_form_summon_blackroots.fbx",
			regenerate = "data/anims/sorceress_true_form_regenerate.fbx",
			die = "data/anims/sorceress_true_form_die.fbx",
			death_stroke = "data/anims/sorceress_true_form_death_stroke.fbx",
			defend = "data/anims/sorceress_true_form_defend.fbx",
			summon = "data/anims/sorceress_true_form_summon.fbx",
			idle_calm = "data/anims/sorceress_true_form_idle_calm.fbx",
		},
		light_type = "point",
		light_parent = "spine5",
		light_position = vec(0.0, 0.8, -1.5),		
		light_color = vec(0.2, 1.0, 0.0),
		light_intensity = 30.0,	
		light_range = 10.0,
		light_flicker_frequency = 8.0,
		light_flicker_amplitude = 0.75,
		particle_system = "sorceress_true_form",
		particle_parent = "spine5",
		ai_routine = {
			--{ ai_sorceress_true_form_warp_space, "warp_space" },	-- test warp space
			{ ai_sorceress_true_form_regenerate, "regenerate" },
			{ ai_sorceress_true_form_summon, "summon", 1.0 },
			{ ai_sorceress_true_form_beam_attack, "beam_attack", function(mob) return mob.hp < mob.max_hp / 2 + 5 end },
			{ ai_sorceress_true_form_acid_bolt, "acid_bolt", 1.0 },
			ai_sorceress_true_form_advance,
			{ ai_sorceress_true_form_beam_attack, "beam_attack", function(mob) return mob.hp < mob.max_hp / 2 + 5 end },
			{ ai_sorceress_true_form_acid_bolt, "acid_bolt", 1.0 },
			ai_sorceress_true_form_melee_attack,
		},
		acid_bolt = {
			flags = IF_ACTION + IF_OFFENSIVE + IF_PRIMARY_ATTACK + IF_END_TURN,
			damage = "b",
			damage_type = DT_ACID,
			inflict = C_POISON,
			range = 5,
			close_up_duration = 2.5,
		},
		basic_attack = {
			flags = IF_ACTION + IF_OFFENSIVE,
			on_use_item = use_melee_weapon,
			on_melee_attack = use_melee_attack_3x3,
			damage = "b",
		},
		beam_attack = {
			flags = IF_ACTION + IF_OFFENSIVE + IF_END_TURN,
			damage = 5,
			range = 5,
		},
		defend = {
			flags = 0,
			cooldown = 4,
		},
		regenerate = {
			flags = IF_CONSUMABLE,
			--cooldown = 2,
		},
		summon = {
			flags = IF_ACTION + IF_END_TURN,
			cooldown = 5,
			initial_cooldown = 3,
		},
		warp_space = {
			flags = IF_ACTION + IF_CONSUMABLE + IF_END_TURN,
			--cooldown = 3,
		},
		inventory = { "warp_space", 4 },
		mob_close_up_camera_height = 6.1,
		mob_close_up_camera_tilt_y = -0.15,
		mob_force_turn_anims = true,
		mob_activation_priority = 1,	-- always activate before other mobs
		mob_bullet_text = "Massive: Can move over non-massive creatures. Takes no damage from traps.",
		mob_description = "This used to be the Sorceress. Or perhaps this was what she was always like, on the inside. Now merged with the Druidstone shard, she is power incarnate. Perhaps immortal. Definitely beyond reason.",
	}

	def_aux{
		name = "spawnling",
		mob_description = "Always bickering and scurrying about, these distant relatives of trolls are surprisingly capable with knives, swords, and sharp objects of any kind.",
	}

	def_aux{
		name = "spawnling_spear",
		ui_name = "Spawnling",
		inventory = { "throw_spear", 1 },
		ai_routine = {
			{ ai_ranged_attack, "throw_spear", 1 },
			ai_melee,
		},
		anims = {
			throw = "data/anims/spawnling_spear_throw.fbx",
		},
		throw_spear = {
			flags = IF_ACTION + IF_OFFENSIVE + IF_PRIMARY_ATTACK,
			projectile_type = "arrow_projectile",
			on_use_item = use_ranged_weapon,
			range = 3,
			pierce = 1,
			damage = "b",
			attack_sound = nil,		-- sound is played using an anim event to get the timing right
			attack_anim = "throw",
			description = "Throw a spear at a target within %range squares, dealing %damage damage.",
		},
		mob_description = "Always bickering and bustling, these distant relatives of trolls are surprisingly capable with knives, swords and all kinds of sharp objects. This one favors a spear.",
	}

	def_aux{
		name = "stalker",
		ui_name = "Darkstalker",
		model_material = "stalker",
		model_clone_material = true,
		model_render_mode = "warp",
		light_type = "point",
		light_position = vec(0.0, 1.0, 0.0),
		light_color = vec(0.00, 0.30, 1.00),
		light_intensity = 15.0,
		light_range = 5.5,
		light_flicker_frequency = 5.0,
		light_flicker_amplitude = 0.3,
		particle_system = "stalker",
		ai_routine = {
			{ ai_stalker_phase_in_out, nil, 0.5 },
			ai_melee,
			{ ai_stalker_phase_out, nil, 0.4 },
		},
		timer = function(mob, t)
			-- tween phase out effect intensity
			local dt = g.delta_time
			mob.mob_phase_out_effect = mob.mob_phase_out_effect or 0.0
			if get_condition(mob, C_PHASED_OUT) then
				mob.mob_phase_out_effect = math.max(mob.mob_phase_out_effect - dt, 0.0)
			else
				mob.mob_phase_out_effect = math.min(mob.mob_phase_out_effect + dt, 1.0)
			end

			local intensity = mob.mob_phase_out_effect

			-- update light
			local light_phase = (math.sin(t) * 0.5 + 0.5) * 0.8 * intensity
			set_light_color(mob, shb_color_to_vec(shb_lerp_color(0x004cffff, 0xaa007500, light_phase)))

			-- update material
			local intensity = (math.sin(t) * 0.3 + 0.6) * 5.4 * intensity
			local angle = t * 1.7
			update_envmap_material(mob.model_material_instance, intensity, angle)
		end,
		mob_description = "These strange creatures seem to be constantly shifting in and out of existence. They are unnatural, not of our world. Could their origin be the Zero Seed?",
	}

	def_aux{
		name = "thief",
		ui_name = "Stirling",
		model = "data/models/thief.fbx",
		model_can_emit_particles = true,
		anims = {
			-- default anim set
			idle = "data/anims/thief_idle.fbx",
			attack = "data/anims/thief_attack1.fbx",
			--attack2 = "data/anims/thief_attack2.fbx",
			attack_build_up = "data/anims/thief_attack_build_up.fbx",
			cast_spell = "data/anims/thief_cast_spell.fbx",
			throw = "data/anims/thief_throw.fbx",
			hit_front1 = "data/anims/thief_hit_front1.fbx",
			hit_front2 = "data/anims/thief_hit_front2.fbx",
			hit_back = "data/anims/thief_hit_back.fbx",
			hit_left = "data/anims/thief_hit_left.fbx",
			hit_right = "data/anims/thief_hit_right.fbx",
			move1 = "data/anims/thief_move1.fbx",
			move2 = "data/anims/thief_move2.fbx",
			move_turn_left = "data/anims/thief_move_turn_left.fbx",
			move_turn_right = "data/anims/thief_move_turn_right.fbx",
			turn_left_180 = "data/anims/thief_turn_left_180.fbx",
			turn_left_90 = "data/anims/thief_turn_left_90.fbx",
			turn_left_45 = "data/anims/thief_turn_left_45.fbx",
			turn_right_90 = "data/anims/thief_turn_right_90.fbx",
			turn_right_45 = "data/anims/thief_turn_right_45.fbx",
			mug = "data/anims/thief_mug.fbx",
			walk = "data/anims/thief_walk.fbx",
			walk_start = "data/anims/thief_walk_start.fbx",
			open_door = "data/anims/thief_open_door.fbx",		
			die = "data/anims/thief_die.fbx",					
			use_potion = "data/anims/thief_use_potion.fbx",	
			--victory = "data/anims/thief_cheer.fbx",		
			stand_up = "data/anims/thief_stand_up.fbx",		
			sleep = "data/anims/thief_sleep.fbx",
			--rescue = "data/anims/thief_rescue_shido.fbx",
			--call_shido = "data/anims/thief_call_shido.fbx",
			stop_her = "data/anims/thief_anim_set_1/thief_attack.fbx",

			-- talk
			talk_salute = "data/anims/thief_talk_salute.fbx",
			check_dryad = "data/anims/thief_check_dryad.fbx",
			hit_cheek = "data/anims/thief_hit_cheek.fbx",
			think = "data/anims/thief_think.fbx",

			-- anim set 1: one-handed melee (sword)
			--["anim_set1.attack"] = "data/anims/thief_anim_set_1/thief_attack.fbx",

			-- the end
			--ending = "data/anims/thief_ending.fbx",
			--ending_loop = "data/anims/thief_ending_loop.fbx",

			-- anim set 5: (crossbow)
			["anim_set5.idle"] = "data/anims/thief_anim_set_5/thief_idle.fbx",
			["anim_set5.attack"] = "data/anims/thief_anim_set_5/thief_attack.fbx",
			["anim_set5.move1"] = "data/anims/thief_anim_set_5/thief_move1.fbx",
			["anim_set5.move2"] = "data/anims/thief_anim_set_5/thief_move2.fbx",
			["anim_set5.move_turn_left"] = "data/anims/thief_anim_set_5/thief_move_turn_left.fbx",
			["anim_set5.move_turn_right"] = "data/anims/thief_anim_set_5/thief_move_turn_right.fbx",
			["anim_set5.hit_front1"] = "data/anims/thief_anim_set_5/thief_hit_front1.fbx",
			["anim_set5.hit_front2"] = "data/anims/thief_anim_set_5/thief_hit_front2.fbx",
			["anim_set5.hit_back"] = "data/anims/thief_anim_set_5/thief_hit_back.fbx",
			["anim_set5.hit_left"] = "data/anims/thief_anim_set_5/thief_hit_left.fbx",
			["anim_set5.hit_right"] = "data/anims/thief_anim_set_5/thief_hit_right.fbx",
			["anim_set5.open_door"] = "data/anims/thief_anim_set_5/thief_open_door.fbx",
			["anim_set5.die"] = "data/anims/thief_anim_set_5/thief_die.fbx",
			["anim_set5.use_potion"] = "data/anims/thief_anim_set_5/thief_use_potion.fbx",
			["anim_set5.stand_up"] = "data/anims/thief_anim_set_5/thief_stand_up.fbx",	
			["anim_set5.sleep"] = "data/anims/thief_anim_set_5/thief_sleep.fbx",
			["anim_set5.remove_weapon"] = "data/anims/thief_anim_set_5/thief_remove_weapon.fbx",
			["anim_set5.take_weapon"] = "data/anims/thief_anim_set_5/thief_take_weapon.fbx",
		},
		hero_portrait = "portraits/thief",
		mob_walk_anim_speed = 1.3333,
		mob_description = "A mercenary with a high opinion of himself, Stirling fancies himself as a charming rogue. He's not wrong, necessarily... But that doesn't make him as charming as he thinks.",
		hero_sounds = true,			-- force the use of hero move sounds, see push_mob_async()
		inventory = { "hand_crossbow", "bandage", "mug", "advance", 2, "shift", 2 },
		ai_routine = {
			ai_ranged_attack,
			ai_melee,
			ai_guard,
		},
		on_heal = function(mob, amount)
			if amount > 1 then
				delay(100)
				say_line(mob, table_random(mob.arch.lines.heal))
			end
		end,
		on_revive = function(mob)
			--wait_anim(mob, "stand_up")
			delay(700)
			say_line(mob, table_random(mob.arch.lines.revive))
		end,
		-- lines for stirling when he is healed, revived, summoned or when he kills people brutally.
		lines = {
			heal = {
				"Ooh, tickles.",
				"A lil' patch-up job on the old carcass? Don't mind if I do.",
				"Feel as good as new.",
				"Ooh! Just what I needed.",
				"Nothin' like a lil' pick-me-up.",
				"Thank you. Hey, I got this itchy spot in my back, too...",
				"Oh, that's like a cold fresh drink on a hot summer's day.",
				"Hell, kinda feel like a new man now.",
				"Mm. I coulda used some of that this morning.",
				"Well, ain't that just what I needed.",
				"What do you know! That fixed my toothache, too. ",
				"Oh, that's good. That's real good.",
				"I could get used to this kinda service.",
				"That's just the kind of tender loving care I needed.",
				"Yeah, that'll keep me goin'. My thanks.",
			},
			kill = {
				"You hire the best, this is what you get.",
				"Not to brag, but that wasn't even hard.",
				"I'll do the next one with one hand behind my back.",
				"I was gonna spare that one, but then I was like, 'nah.'",
				"They say violence don't solve problems, but kinda feels like I just solved one.",
				"That's how we do it up North.",
				"I'll give you a discount on that one.",
				"I feel like I did that one a favor.",
				"That's all they got? Please.",
				"Boom! Done.",
				"You folks like that? Just gettin' started.",
				"Who's next? Feel like I'm on a roll now.",
				"So you folks wanna get beers after this?",
				"Feel like you got your money's worth on that one.",
			},
			revive = {
				"Okay. Let's try that again.",
				"I'm up, I'm up. Just let me get my bearings.",
				"Appreciate the assist.",
				"Thank you. Now where were we?",
				"Well, that was embarrassin'.",
				"Hang on. Lemme just make sure my internal organs are still where they should be.",
				"All right. My turn.",
				"Okay, I had my lil' nap. Let's turn this fight around.",
				"They're gonna pay for that... soon as I find my feet.",
			},
			summon = {
				"All right, I'm here. Let's get it done.",
				"Whooee! Somebody play a lil' tune?",
				"Need somebody to spice up your life a little, huh?",
				"Well, well, well. Looks like somebody needs a little %stirling up in here.",
				"Run into some trouble? Don't worry, I got your back.",
				"So, who we fightin'?",
				"What a coincidence. I was just thinking about y'all too.",
				"I think you need some practice. But time for that later.",
				"Well, that sure sounded like an invitation.",
				"I'm here, I'm here. So who needs a beatin'?",
			}
		}
	}

	-- undead monks
	do
		local function undead_monk_damaged(mob, damage, damage_type)
			-- undeads are killed permanently by fire
			-- killing them otherwise leaves a reinforcement marker
			if damage >= mob.hp then
				if damage_type == DT_FIRE then
					-- killed by fire

					-- define flame effect dynamically
					local def = table.copy(get_arch_obj("sacrificial_flames"))
					def.model = mob.arch.model
					def.model_loaded = mob.arch.model_loaded
					def.model_scale = mob.arch.model_scale or 1.0
					def.model_render_mode = "hidden"
					def.model_can_emit_particles = true

					-- mob flames
					local flames = spawn_at_obj(def, mob)
					shb_copy_transform(mob.root_node, flames.root_node)
					copy_pose(flames, mob)

					play_sound("imp_die")
				else
					mob.mob_respawn = true
					mob.mob_xp = 0
					mob.loot = "none"
				end
			end
		end

		local function undead_monk_destroyed(mob)
			if mob.mob_respawn then
				-- killed by other means, respawn next round
				spawn_at_obj("spawn_marker_undead_monk", mob)
			end
		end

		local desc = "These orange-clad corpses are all that remains of the monks of the ancient Monastery of Plurality, where they studied martial arts and the secrets of the multiverse, before a great calamity befell them."
		local bullet_text = "Undying: Unless killed by fire damage, the undead monk will respawn at the start of next round."

		def_aux{
			name = "undead_monk",
			light_type = "point",
			light_position = vec(0.0, 2.4, 0.4),
			light_color = vec(0.1, 0.9, 1.0),
			light_intensity = 4,
			light_range = 6,
			light_hide_snow = true,
			model = "data/models/undead_monk.fbx",
			particle_system = "undead_monk_mist",
			particle_parent = "spine3",
			particle_position = vec(-0.2, -1.6, 0.1),
			on_damage = undead_monk_damaged,
			on_destroy = undead_monk_destroyed,
			mob_description = desc,
			mob_bullet_text = bullet_text,
			draw_spells = { "freeze", "ice" },
		}

		def_aux{
			name = "undead_monk2",
			ui_name = "Undead Monk",
			light_type = "point",
			light_position = vec(0.0, 2.4, 0.4),
			light_color = vec(0.1, 0.9, 1.0),
			light_intensity = 4,
			light_range = 6,
			light_hide_snow = true,
			model = "data/models/undead_monk2.fbx",
			particle_system = "undead_monk_mist",
			particle_parent = "spine3",
			particle_position = vec(-0.2, -1.6, 0.1),
			on_damage = undead_monk_damaged,
			on_destroy = undead_monk_destroyed,
			mob_description = desc,
			mob_bullet_text = bullet_text,
			draw_spells = { "freeze", "ice" },
		}

		def_aux{
			name = "undead_monk3",
			ui_name = "Undead Monk",
			light_type = "point",
			light_position = vec(0.0, 2.4, 0.4),
			light_color = vec(0.1, 0.9, 1.0),
			light_intensity = 4,
			light_range = 6,
			light_hide_snow = true,
			model = "data/models/undead_monk3.fbx",
			particle_system = "undead_monk_mist",
			particle_parent = "spine3",
			particle_position = vec(-0.2, -1.6, 0.1),
			on_damage = undead_monk_damaged,
			on_destroy = undead_monk_destroyed,
			mob_description = desc,
			mob_bullet_text = bullet_text,
			draw_spells = { "freeze", "ice" },
		}
	end

	for i=1,2 do
		def_aux{
			name = iff(i == 1, "void_haunt", "void_haunt_boss"),
			anims = {
				summon = "data/anims/void_haunt_summon.fbx",
			},
			light_type = "point",
			light_position = vec(0.0, 1.6, 0.0),
			light_color = vec(0.7, 0.1, 1.0),
			light_intensity = 15,
			light_range = 6,
			light_flicker_frequency = 1.5,
			light_flicker_amplitude = 0.5,
			particle_system = "void_haunt",
			particle_parent = "Spine_2",
			inventory = { "raise_undead", 10 },
			ai_routine = {
				{ ai_void_haunt_raise_undead, "raise_undead", 1 },
				ai_melee,
			},
			raise_undead = {		
				flags = IF_ACTION + IF_CONSUMABLE,
			},
			mob_description = iff(i == 1,
				"Only halfway out from the abyss between the worlds, this ghostly being is an emanation of the Cancer that is taking over the forest.",
				"If there's a lesson to be learned here, it's 'let sleeping ghosts lie.'"),
			draw_spells = { "revive" },
		}
	end

	def_aux{
		name = "void_haunt_boss",
		ui_name = "Master Haunt",
		ai_routine = {
			{ ai_void_haunt_boss_raise_undead, "raise_undead", 1 },
			ai_melee,
		},
		raise_undead = {		
			flags = 0,
		},
		draw_spells = { "revive" },
	}

	def_aux{
		name = "wasp",
		anims = {
			spawn_diagonal = "data/anims/wasp_spawn_diagonal.fbx",
		},
		ai_routine = {
			{ ai_use_item, "switch_position", 0.4 },
			ai_melee,
		},
		switch_position = {
			flags = 0,
			on_use_item = function(mob, item_name)
				local map = mob.map

				-- find an adjacent target
				local target
				for _,x,y in adjacent_cells_for_mob(mob) do
					local candidate = get_mob(map, x, y)
					if candidate and is_enemy(mob, candidate) and not get_condition(candidate, C_INVISIBILITY) and not get_flag(candidate, F_DISABLED) and candidate.hp > 0 then
						target = candidate
					end
				end
				if target == nil then return end

				-- find an empty spot next to the target
				local spots = {}
				local block_flags = mob_block_flags(mob)
				for map_index, x, y in adjacent_cells_for_mob(target) do
					if (x ~= mob.x or y ~= mob.y) and not is_blocked(map, x, y, block_flags) then
						-- check that we can actually perform the attack
						local old_x = mob.x
						local old_y = mob.y
						set_pos(mob, x, y, false)

						if check_melee_attack(mob, target) then
							table.append(spots, map_index)
						end

						set_pos(mob, old_x, old_y, false)
					end
				end

				shuffle_table(spots)

				-- select a new, random spot within movement range
				for _,spot in ipairs(spots) do
					local cx, cy = unpack_xy(spot, map.width)
					local path = find_path_for_mob(mob, cx, cy, 1, 0)
					
					if path and #path - 1 <= mob.movement_points then
						return ai_follow_path(mob, path)
					end
				end				
			end,
		},
		basic_attack = {
			flags = IF_ACTION + IF_OFFENSIVE,
			damage = 1,
			pierce = 1,
			on_use_item = use_melee_weapon,
		},
		mob_description = "The infernal hum of this living war machine is the first and only warning you get of its painful sting.",
		draw_spells = { "dash" },
	}

	def_aux{
		name = "wasp_nest",
		--particle_system = "wasp_nest",		-- looks bad in close ups
		ai_routine = {
			{ ai_use_item, "spawn_wasp", 1.0 }
		},
		mob_spawn_on_death = "wasp_nest_shatter",
		mob_bullet_text = "Spawner: Spawns a wasp at the start of each round.",
		mob_death_effect = "none",
		-- mob_thing = false, -- don't make it a thing - it won't get a chance to act if it's a thing
		spawn_wasp = {
			flags = IF_ACTION + IF_CONSUMABLE,
			on_use_item = use_wasp_nest_spawn_wasp,
		},
		inventory = { "spawn_wasp", 15 },
	}

	def_object{
		name = "wasp_nest_shatter",
		model = "data/models/wasp_nest_shatter.fbx",
		anim_play_on_init = "shatter",
		anims = { shatter = "data/anims/wasp_nest_shatter.fbx" },
		particle_system = "wasp_nest_destruction",
		on_game_loaded = function(obj)
			sample_anim(obj, "shatter", 100.0)
			kill_particles(obj)
		end,
	}

	def_object{
		name = "wasp_nest_broken",
		model = "data/models/wasp_nest_broken.fbx",
		flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS,
	}

	def_aux{
		name = "wolf_shadow",
		capsule_offset_y = -0.2,
		particle_system = "wolf_shadow",
		light_type = "point",
		light_position = vec(0.0, 1.5, 0.0),
		light_color = vec(0.6, 0.7, 1.0),
		light_intensity = 8.0,
		light_range = 6.0,
		light_flicker_frequency = 1.5,
		light_flicker_amplitude = 0.5,
		on_condition = function(mob, cond)
			-- dissolve shadow on any condition
			kill_mob(mob)
		end,
	}

	def_aux{
		name = "wood_troll",
		anims = {
			throw = "data/anims/wood_troll_throw.fbx",
		},
		ai_routine = {
			{ ai_ranged_attack, "throw_rock", 1 },
			ai_melee,
			ai_destroy_obstacles,
		},
		basic_attack = {
			flags = IF_ACTION + IF_OFFENSIVE,
			on_use_item = use_melee_weapon,
			on_melee_attack = use_melee_attack_2x2,
			damage = "b",
		},
		throw_rock = {
			flags = IF_ACTION + IF_OFFENSIVE + IF_PRIMARY_ATTACK,
			projectile_type = "wood_troll_rock",
			projectile_origin = "hand_R",
			damage = "b",
			damage_flags = DF_RANGED,
			range = 4,
			attack_sound = "wood_troll_throw_rock",
			attack_anim = "throw",
			on_use_item = use_ranged_weapon,
			description = "Throw a rock at a target within %range squares, dealing %damage damage."
		},
		mob_regeneration = 4,
		mob_description = "What wood trolls lack in intellect is more than made up for by their earth-shattering strength. They are believed to be ancient parts of the forest, gone mad with age.",
		mob_force_turn_anims = true,
		mob_no_move_sounds = true,
		draw_spells = { "regenerate" },
		on_anim_event = function(mob, event)
			if event == "stomp" then
				play_sound("wood_troll_move")
				camera_shake(0.1, 0.5)
			end
		end,
	}
end

---------------------------------------------------
-- Breakables
---------------------------------------------------

function def_breakable(name, spawn_on_death, hp, flags)
	local def = {}
	def.name = name
	def.model = def.model or "data/models/" .. name .. ".fbx"
	def.mob_hp = hp
	def.mob_armor = def.mob_armor or 0
	def.mob_thing = true
	def.mob_xp = 0
	def.mob_spawn_on_death = spawn_on_death
	def.mob_size = def.mob_size or 1
	def.mob_death_effect = "none"
	def.mob_flags = MF_NEUTRAL + MF_NO_REACHABLE_DILATE + MF_IMMUNE_STEAL
	def.collider_size = def.collider_size or 0.9
	def.flags = bit.bor(F_BLOCK_MOVE + F_INTERACTIVE + F_HIDE_CLOSEUP, flags)
	def.immunities = IMMUNE_ALL
	def.tags = { "breakable" }
	def.model_can_emit_particles = true

	remember_def_source(def)
	def_object(def, nil, false)
end

do
    --            name                         spawn_on_death                         hp  flags
	def_breakable( "blackroot",                "forest_willow_destroyed",             5,  0)
	def_breakable( "chest",                    "crates_broken",                       1,  F_INTERACT_ACTION)
	def_breakable( "crates",                   "crates_broken",                       1,  F_AI_DESTROYABLE+F_INTERACT_ACTION)
	def_breakable( "exploding_barrel",         "exploding_barrel_destroyed",          1,  F_AI_DESTROYABLE+F_BLOCK_HAZARD)
	def_breakable( "forest_willow",            "forest_willow_destroyed",             1,  F_AI_DESTROYABLE)
	def_breakable( "herb_plant",               nil,                                   1,  F_INTERACT_ACTION)
	def_breakable( "ice_crystal",              "ice_crystal_destroyed",               1,  0)
	def_breakable( "loot_box",                 "crates_broken",                       1,  F_INTERACT_ACTION)

	def_aux{
		name = "chest",
		anims = { open = "data/anims/chest_open.fbx" },
		-- add MF_NO_LOOT to prevent dropping predefined/carried loot when the chest is destroyed
		mob_flags = MF_NEUTRAL + MF_NO_REACHABLE_DILATE + MF_NO_LOOT + MF_IMMOVABLE,
		collider_size_x = 0.7,
		collider_size_y = 0.7,
		mob_kill_sound_lava = "none",
		on_interact = interact_chest,
		on_post_destroy = function(obj, map, x, y)
			if not get_flag(obj, F_ACTIVATED) then
				map.chests_destroyed = map.chests_destroyed + 1
			end
		end,
		on_game_loaded = function(obj)
			if get_flag(obj, F_ACTIVATED) then
				sample_anim(obj, "open", 100.0)
			end
		end,
		on_tooltip = tooltip_chest,
	}

	def_aux{
		name = "crates",
		on_destroy = break_crate,
		mob_kill_sound_lava = "none",
		tooltip = "The crates break if damaged.",
		mob_flags = MF_IMMOVABLE,
	}

	def_aux{
		-- this is a special plant used in collect_herbs
		name = "herb_plant",
		ui_name = "Seldanna Flower",
		mob_flags = MF_IMMOVABLE + MF_NEUTRAL,
		model = "data/models/sanctuary_flover_plant_01_lods.fbx",
		anims = { idle = "data/anims/sanctuary_flower_plant_01_idle.fbx", },
		anim_random_start_time = true,
		model_lod_distances = { 0.0, 30.0 },
		model_scale = 0.85,
		particle_system = "herb_plant",
		model_material = "herb_plant",
		model_can_emit_particles = false,
		light_type = "point",
		light_position = vec(0.0, 3.5, 0.0),
		light_color = vec(0.05, 0.51, 0.97),
		light_intensity = 15.0,
		light_range = 10.0,
		tooltip = "Spend an action point to collect.",
		tooltip_color = COLOR_TEXT_ACTION,
		tags = { "swamp", "plant" },
		draw_spells = { "cure" },
	}

	def_aux{
		name = "blackroot",
		anims = {
			idle = "data/anims/blackroot_idle.fbx",
			hit_front1 = "data/anims/blackroot_hit_front.fbx",
			hit_front2 = "data/anims/blackroot_hit_front.fbx",
			hit_back = "data/anims/blackroot_hit_back.fbx",
			hit_left = "data/anims/blackroot_hit_left.fbx",
			hit_right = "data/anims/blackroot_hit_right.fbx",
			spawn = "data/anims/blackroot_spawn.fbx",
			withdraw = "data/anims/blackroot_withdraw.fbx",
		},
		anim_random_start_time = true,
		light_type = "point",
		light_position = vec(-0, 1.0, 0.0),
		light_color = vec(0.8, 0, 1.0),
		light_intensity = 25.0,
		light_range = 5.5,
		mob_flags = MF_IMMOVABLE + MF_NEUTRAL,
		on_spawn = function(obj) play_anim_and_resume_idle(obj, "spawn") end,
	}

	def_aux{
		name = "forest_willow",
		model_scale = 1.1,
		anims = {
			idle = "data/anims/forest_willow_idle.fbx",
			hit_front1 = "data/anims/forest_willow_hit_front.fbx",
			hit_front2 = "data/anims/forest_willow_hit_front.fbx",
			hit_back = "data/anims/forest_willow_hit_back.fbx",
			hit_left = "data/anims/forest_willow_hit_left.fbx",
			hit_right = "data/anims/forest_willow_hit_right.fbx",
		},
		mob_flags = MF_IMMOVABLE + MF_NEUTRAL,
		anim_random_start_time = true,
	}

	def_aux{
		name = "exploding_barrel",
		ui_name = "Barrel of Dynamite",
		tooltip = "Any amount of damage will cause it to explode. The explosion deals 5 damage to adjacent squares.",
		draw_spells = { "fire" },
	}

	def_object{
		name = "exploding_barrel_prop",
		ui_name = "Barrel of Dynamite",
		model = "data/models/exploding_barrel.fbx",
		flags = F_BLOCK_MOVE,
	}

	def_aux{
		name = "ice_crystal",
		model_scale = vec(1.2, 2.5, 1.2),			-- TODO: remove scaling once we have a proper model for ice crystals!
		particle_system = "monastery_ice_fire",
		particle_position = vec(0.0, 0.4, 0.0),
		affinities = { [DT_COLD] = "immune" },
		on_tooltip = tooltip_mob,
		mob_flags = MF_NEUTRAL + MF_NO_REACHABLE_DILATE + MF_IMMOVABLE,
		mob_bullet_text = "Shattering the crystal deals 2 cold damage to adjacent squares and freezes creatures for 1 round.",
		draw_spells = { "ice" },
	}

	def_object{
		name = "ice_crystal_destroyed",
		model = "data/models/mountain_destroyable_ice_broken.fbx",
		on_spawn = function(obj)
			local map = obj.map
			local timestamp = map_timestamp(map)

			play_sound("freeze")

			for cell in aoe_blast_cells(map, obj.x, obj.y) do
				local x,y = unpack_xy(cell, map.width)

				local def = {
					particle_system = "ice_crystal_destroy",
					particle_auto_destroy = true,
					flags = F_TEMPORARY,
				}
				spawn(def, map, x, y, -1)

				local mob = get_mob(map, x, y)
				if mob then
					set_condition(mob, C_FREEZE)
					damage_tile(map, x, y, -1, 2, DF_NO_HIT_ANIM + DF_NO_DAMAGE_SOUND, DT_COLD)
				end
			end
		end,
	}

	def_aux{
		name = "loot_box",
		ui_name = "Steelface's Crate",
		model = "data/models/loot_box.fbx",
		mob_kill_sound_lava = "none",
		mob_flags = MF_IMMOVABLE,
		on_interact = interact_loot_box,
		on_tooltip = tooltip_loot_box,
		on_post_destroy = function(obj, map, x, y)
			if not get_flag(obj, F_ACTIVATED) then
				map.loot_boxes_destroyed = map.loot_boxes_destroyed + 1
			end
		end,
	}
end

---------------------------------------------------
-- Usable objects, etc.
---------------------------------------------------

def_object{
	name = "crates_broken",
	model = "data/models/crate_shatter.fbx",
	anims = { shatter = "data/anims/crate_shatter.fbx" },
	anim_play_on_init = "shatter",
	particle_system = "crate_shatter",
	on_game_loaded = function(obj)
		sample_anim(obj, "shatter", 100.0)
		kill_particles(obj)
	end,
}

def_object{
	name = "dragon_statue",
	model = "data/models/dragon_statue.fbx",
	model_rotation = vec(0.0, math.pi, 0.0),
	light_type = "point",
	light_position = vec(0.0, 2.5, 2.15),
	light_color = vec(1.0, 0.5, 0.25),
	light_intensity = 20,
	light_range = 3,
	flags = F_BLOCK_ALL,
	collider_size_x = 0.5,
	collider_size_y = 0.9,
	interaction_type = "none",
}

def_object{
	name = "exploding_barrel_destroyed",
	model = "data/models/exploding_barrel_shatter.fbx",
	anims = { shatter = "data/anims/exploding_barrel_shatter.fbx" },
	anim_play_on_init = "shatter",
	on_spawn = function(obj)
		explosion(obj.map, obj.x, obj.y)
	end,
	on_game_loaded = function(obj)
		sample_anim(obj, "shatter", 100.0)
	end,
}

def_object{
	name = "spellbook",
	model = "data/models/spellbook.fbx",
	particle_system = "spellbook",
	particle_position = vec(0.0, 1.67, 0.0),
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT + F_SEEN_BY_RAYS + F_INTERACTIVE + F_HIDE_CLOSEUP,
	collider_size_x = 0.7,
	collider_size_y = 0.7,
	light_type = "spot",
	light_position = vec(0.0, 3.0, 0.0),
	light_rotation = vec(math.pi * 0.5, 0.0, 0.0),
	light_color = vec(0.0, 0.75, 1.0),
	light_intensity = 20.0,
	light_range = 10.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	on_interact = interact_spellbook,
	on_game_loaded = function(obj)
		if get_flag(obj, F_ACTIVATED) then
			fade_light(obj, 0.0, 0.0)
			fade_particles(obj, 0.0)
		end
	end,
	--tooltip = "Spend an action point to gain extra abilities for this mission.",
	tooltip = "Read the spellbook to gain extra abilities for this mission. This is a free action.",
}

def_object{
	name = "wall_torch",
	model = "data/models/wall_torch.fbx",
	particle_system = "wall_torch",
	particle_parent = "null",
	light_type = "point",
	light_position = vec(0.0, 1.7, 0.8),
	light_color = vec(1.0, 0.5, 0.25),
	light_intensity = 10.0,
	light_range = 10.0,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.25,
	tags = { "light" },
}

def_object{
	name = "fire_bowl",
	model = "data/models/fire_bowl.fbx",
	particle_system = "fire_bowl",
	light_type = "point",
	light_position = vec(0.0, 1.0, 0),
	light_color = vec(1.0, 0.5, 0.25),
	light_intensity = 10.0,
	light_range = 10.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	light_flicker_frequency = 5.0,
	light_flicker_amplitude = 0.4,
	flags = F_BLOCK_MOVE + F_HIDE_CLOSEUP,
	tags = { "light" },
}

def_object{
	name = "fire_bowl_hanging",
	model = "data/models/fire_bowl_hanging.fbx",
	model_position = vec(0.0, 5.5, 0.0),
	anims = { idle = "data/anims/fire_bowl_hanging.fbx" },
	anim_random_start_time = true,
	particle_system = "wall_torch",
	particle_parent = "light_null",
	light_type = "point",
	light_position = vec(0.0, 0.5, 0),		
	light_parent = "light_null",
	light_color = vec(1.0, 0.55, 0.22),
	light_intensity = 30.0,	
	light_range = 16.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	light_flicker_frequency = 5.0,	
	light_flicker_amplitude = 0.4,
	tags = { "light" },
}

def_object{
	name = "lever",
	model = "data/models/floor_lever.fbx",
	anims = {
		activate = "data/anims/floor_lever_activate.fbx",
		deactivate = "data/anims/floor_lever_deactivate.fbx",
	},
	on_interact = interact_lever,
	tooltip = "Spend an action point to use.",
	tooltip_color = COLOR_TEXT_ACTION,
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT + F_INTERACTIVE + F_INTERACT_ACTION + F_HIDE_CLOSEUP,
	tags = { "trigger" },
	on_game_loaded = function(obj)
		if get_flag(obj, F_ACTIVATED) then sample_anim(obj, "activate", 100.0) end
	end,
}

def_object{
	name = "merchant_flags",
	model = "data/models/merchant_flags.fbx",
	anims = { idle = "data/anims/monastery_post_flags_idle.fbx" },
	anim_random_start_time = true,
	flags = F_BLOCK_MOVE + F_SEEN_BY_RAYS,
}

def_object{
	name = "sanctuary_spotlight",
	light_type = "spot",
	light_rotation = vec(math.pi * 0.5, 0.0, 0.0),
	light_color = vec(0.0, 0.75, 1.0),
	light_intensity = 30.0,
	light_range = 10.0,
	light_cast_shadow = false,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	tags = { "light" },
}

def_object{
	name = "dragon_statue_puzzle_green_light",
	model = "data/models/dragon_statue.fbx",
	model_rotation = vec(0.0, math.pi, 0.0),
	light_type = "point",
	light_position = vec(0.0, 3.5, 0.0),
	light_color = vec(0.0, 1.0, 0.0),
	light_intensity = 0,
	light_range = 3,
	flags = F_BLOCK_ALL + F_SEEN_BY_RAYS + F_INTERACTIVE + F_HIDE_CLOSEUP,
	collider_size_x = 0.5,
	collider_size_y = 0.9,
	tags = { "puzzle" },
}

def_object{
	name = "dungeon_puzzle_block",
	model = "data/models/dungeon_puzzle_block.fbx",
	model_rotation = vec(0.0, math.pi, 0.0),
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "puzzle", "dungeon" },
}

def_object{
	name = "dungeon_puzzle_block_burnt",
	model = "data/models/dungeon_puzzle_block_burnt.fbx",
	model_rotation = vec(0.0, math.pi, 0.0),
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "puzzle", "dungeon" },
}

def_object{
	name = "dungeon_puzzle_block_1",
	model = "data/models/dungeon_puzzle_block.fbx",
	model_rotation = vec(0.0, math.pi, 0.0),
	light_type = "point",
	light_position = vec(0.0, 0.1, 0),
	light_color = vec(0.0, 1.0, 0.0),
	light_intensity = 80.0,	
	light_range = 1.0,
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "puzzle", "dungeon" },	
}

def_object{
	name = "dungeon_puzzle_block_2",
	model = "data/models/dungeon_puzzle_block.fbx",
	model_rotation = vec(0.0, math.pi, 0.0),
	light_type = "point",
	light_position = vec(0.0, 0.1, 0),
	light_color = vec(0.0, 0.0, 1.0),
	light_intensity = 80.0,	
	light_range = 1.0,
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "puzzle", "dungeon" },	
}

def_object{
	name = "dungeon_puzzle_block_3",
	model = "data/models/dungeon_puzzle_block.fbx",
	model_rotation = vec(0.0, math.pi, 0.0),
	light_type = "point",
	light_position = vec(0.0, 0.1, 0),
	light_color = vec(0.0, 1.0, 1.0),
	light_intensity = 80.0,	
	light_range = 1.0,
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "puzzle", "dungeon" },	
}

def_object{
	name = "dungeon_puzzle_block_4",
	model = "data/models/dungeon_puzzle_block.fbx",
	model_rotation = vec(0.0, math.pi, 0.0),
	light_type = "point",
	light_position = vec(0.0, 0.1, 0),
	light_color = vec(1.0, 0.25, 0.0),
	light_intensity = 150.0,	
	light_range = 1.0,
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "puzzle", "dungeon" },	
}

def_object{
	name = "dungeon_puzzle_block_5",
	model = "data/models/dungeon_puzzle_block.fbx",
	model_rotation = vec(0.0, math.pi, 0.0),
	light_type = "point",
	light_position = vec(0.0, 0.1, 0),		
	light_color = vec(1.0, 0.0, 0.0),
	light_intensity = 80.0,	
	light_range = 1.0,
	flags = F_SEEN_BY_RAYS,
	footstep_sound = "hard",
	layer = "floor",
	tags = { "puzzle", "dungeon" },	
}

def_object{
	name = "sarcophagus",
	model = "data/models/sarcophagus.fbx",
	anims = {
		open_left = "data/anims/sarcophagus_open_left.fbx",
		open_right = "data/anims/sarcophagus_open_right.fbx",
		close_right = "data/anims/sarcophagus_close_right.fbx",
		close_left = "data/anims/sarcophagus_close_left.fbx",
	},
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT + F_SEEN_BY_RAYS + F_INTERACTIVE + F_INTERACT_ACTION + F_HIDE_CLOSEUP,
	tooltip = "Spend an action point to examine.",
	tooltip_color = COLOR_TEXT_ACTION,
	tags = { "dungeon" },
}

def_object{
	name = "sarcophagus_2x1",
	ui_name = "Sarcophagus",
	width = 2,
	height = 1,
	model = "data/models/sarcophagus.fbx",
	anims = {
		open_left = "data/anims/sarcophagus_open_left.fbx",
		open_right = "data/anims/sarcophagus_open_right.fbx",
		close_right = "data/anims/sarcophagus_close_right.fbx",
		close_left = "data/anims/sarcophagus_close_left.fbx",
	},
	flags = F_BLOCK_ALL - F_BLOCK_SIGHT + F_SEEN_BY_RAYS + F_INTERACTIVE + F_INTERACT_ACTION + F_HIDE_CLOSEUP,
	tooltip = "Spend an action point to examine.",
	tooltip_color = COLOR_TEXT_ACTION,
	tags = { "dungeon" },
}

def_object{
	name = "dungeon_pedestal_2x1",
	model = "data/models/dungeon_pedestal_2x1.fbx",
	width = 2,
	height = 1,
	tags = { "dungeon" },
}

def_object{
	name = "tetra_pedestal",
	model = "data/models/arken_temple_pillar_short.fbx",
	model_position = vec(0.0, -1.7, 0.0),
	flags = F_BLOCK_ALL + F_INTERACTIVE + F_SEEN_BY_RAYS,
}

def_object{
	name = "reflector",
	model = "data/models/monastery_door_seal.fbx",
	anims = { idle = "data/anims/monastery_door_seal.fbx" },
	--model_position = vec(0.0, 0.0, 2.7),
	anim_random_start_time = true,
	model_rotation = vec(0.0, math.pi * 0.25, 0.0),
	--particle_system = "monastery_door_seal",
	light_type = "point",
	light_position = vec(0.0, 6.2, 0.0),
	light_color = vec(0.5, 0.7, 1.0),
	light_intensity = 10.0,
	light_range = 16.0,
	flags = F_INTERACTIVE + F_BLOCK_ALL,
	tags = { "puzzle" },
}

---------------------------------------------------
-- Helpers: Dummy objects, etc.
---------------------------------------------------

def_object{
	name = "dummy_object",
	has_transform = true,
}

def_object{
	name = "spawner",
	model = "data/models/spawner.fbx",
	model_position = vec(0.0, 1.0, 0.0),
	model_render_mode = "wireframe",
	spawner = true,
}

def_object{
	name = "blocker_hard_walk",
	has_transform = true,
	flags = F_BLOCK_WALKING + F_HARD_BLOCKER,
}

def_object{
	name = "vertex_blocker",
	has_transform = true,
	flags = F_PLACE_CORNER_BLOCKER,
	snap_to = "vertex",
}

def_object{
	name = "virtual_pit_top",
	model = "data/models/dungeon_floor_01.fbx",
	platform_model = "data/models/dungeon_floor_01.fbx",
	model_render_mode = "wireframe",		-- side-effect: always pick object even when it is not rendered in game
	-- hard blocker removed to allow attacking (and moving, as a side-effect) over corners
	flags = F_BLOCK_WALKING + F_SEEN_BY_RAYS,
	loot_item_type = "floor",
	trigger_flags = TRIGGER_WALKING + TRIGGER_DEAD,
	on_enter_trigger = enter_pit,
}

def_object{
	name = "virtual_ground",
	model = "data/models/dungeon_floor_01.fbx",
	platform_model = "data/models/dungeon_floor_01.fbx",
	model_render_mode = "wireframe",		-- side-effect: always pick object even when it is not rendered in game
	flags = F_SEEN_BY_RAYS,
}

def_object{
	name = "cover",						-- one-sided cover for elevation edges
	model = "data/models/magic_circle.fbx",
	model_position = vec(0.0, 1.5, 0.0),
	model_rotation = vec(math.pi * -0.5, 0.0, 0.0),
	model_scale = 0.7,
	model_material = "editor_cover",
	model_render_mode = "editor",
	editor_pick_double_sided = true,
	snap_to = "edge",
}

def_object{
	name = "invisible_floor_trigger",
	trigger_flags = TRIGGER_WALKING,
	editor_draw_footprint = true,
	editor_draw_footprint = true,
	tags = { "trigger" },
}

def_object{
	name = "invisible_trigger_2x1",	
	width = 2,
	height = 1,
	trigger_flags = TRIGGER_WALKING,
	tags = { "trigger" },
	editor_draw_footprint = true,
} 

def_object{
	name = "invisible_trigger_4x2",	
	width = 4,
	height = 2,
	trigger_flags = TRIGGER_WALKING,
	tags = { "trigger" },
	editor_draw_footprint = true,
} 

def_object{
	name = "invisible_trigger_6x4",	
	width = 6,
	height = 4,
	trigger_flags = TRIGGER_WALKING,
	tags = { "trigger" },
	editor_draw_footprint = true,
} 

def_object{
	name = "invisible_trigger_8x6",	
	width = 8,
	height = 6,
	trigger_flags = TRIGGER_WALKING,
	tags = { "trigger" },
	editor_draw_footprint = true,
} 

def_object{
	name = "invisible_trigger_10x8",	
	width = 10,
	height = 8,
	trigger_flags = TRIGGER_WALKING,
	tags = { "trigger" },
	editor_draw_footprint = true,
} 

def_object{
	name = "exit_2x1",
	ui_name = "Exit",
	width = 2,
	height = 1,
	exit = true,
	trigger_flags = TRIGGER_WALKING + TRIGGER_FLYING,
	on_enter_trigger = enter_exit,
	on_attempt_move_to = enter_exit_confirm,
	on_tooltip = tooltip_exit,
	tooltip_priority = 1,
	flags = F_BLOCK_AI + F_BLOCK_SUMMON + F_INTERACTIVE,
	interaction_type = "move_to",
	tags = { "dungeon", "exit" },
	destroy_after_battle = true,
}

def_object{
	name = "exit_2x2",
	ui_name = "Exit",
	width = 2,
	height = 2,
	exit = true,
	trigger_flags = TRIGGER_WALKING + TRIGGER_FLYING,
	on_enter_trigger = enter_exit,
	on_attempt_move_to = enter_exit_confirm,
	on_tooltip = tooltip_exit,
	tooltip_priority = 1,
	flags = F_BLOCK_AI + F_BLOCK_SUMMON + F_INTERACTIVE,
	interaction_type = "move_to",
	tags = { "dungeon", "exit" },
	destroy_after_battle = true,
}

def_object{
	name = "exit_4x2",
	ui_name = "Exit",
	width = 4,
	height = 2,
	exit = true,
	trigger_flags = TRIGGER_WALKING + TRIGGER_FLYING,
	on_enter_trigger = enter_exit,
	on_attempt_move_to = enter_exit_confirm,
	on_tooltip = tooltip_exit,
	tooltip_priority = 1,
	flags = F_BLOCK_AI + F_BLOCK_SUMMON + F_INTERACTIVE,
	interaction_type = "move_to",
	tags = { "dungeon", "exit" },
	destroy_after_battle = true,
}

def_object{
	-- this is used by editor when creating thumbnails
	name = "black_ground",
	model = "data/models/forest_ground.fbx",
	model_material = "black",
	model_render_mode = "heightmap",
	model_cast_shadow = false,
	flags = F_IGNORE_HEIGHT + F_SEEN_BY_RAYS,
	layer = "floor",
}

def_object{
	name = "thumbnail",
	has_transform = true,
	-- use only odd values to get sane results:
	width = 9,
	height = 9,
}

def_object{
	name = "wall_light_blocker_2x2",
	model = "data/models/light_blocker_2x2.fbx",
	width = 2,
	height = 1,
}

-- basic generic light source that can be customized in the editor
def_object{
	name = "light",
	light_type = "point",
	tags = { "light" },
}

def_object{
	name = "lightning_gate_2x1",
	ui_name = "Lightning Arc",
	width = 2,
	height = 1,
	light_type = "point",
	light_position = vec(0.0, 1.5, 0.0),
	light_color = vec(0.25, 0.5, 1.0),
	light_intensity = 20.0,
	light_range = 15.0,
	light_flicker_frequency = 10.0,
	light_flicker_amplitude = 0.3,
	editor_draw_footprint = true,
	flags = F_BLOCK_AI + F_INTERACTIVE,
	trigger_flags = TRIGGER_WALKING + TRIGGER_FLYING,
	on_enter_trigger = enter_lightning_gate,
	on_tooltip = tooltip_lightning_gate,
	interaction_type = "move_to",
}

def_object{
	name = "lightning_gate_3x1",
	ui_name = "Lightning Arc",
	width = 3,
	height = 1,
	light_type = "point",
	light_position = vec(0.0, 1.5, 0.0),
	light_color = vec(0.25, 0.5, 1.0),
	light_intensity = 20.0,
	light_range = 15.0,
	light_flicker_frequency = 10.0,
	light_flicker_amplitude = 0.3,
	editor_draw_footprint = true,
	flags = F_BLOCK_WALKING + F_BLOCK_SUMMON + F_BLOCK_AI + F_INTERACTIVE, -- Allow flying to make it targetable with choose_target
	trigger_flags = TRIGGER_WALKING + TRIGGER_FLYING,
	on_enter_trigger = enter_lightning_gate,
}

def_object{
	name = "stone_circle",
	ui_name = "Circular Pedestal",
	model = "data/models/forest_teleport.fbx",
	light_type = "point",
	light_position = vec(0.0, 1.0, 0.0),
	light_color = vec(0, 200, 255)/255.0,
	light_intensity = 20.0,
	light_range = 8.0,
	flags = F_BLOCK_AI + F_BLOCK_SUMMON + F_INTERACTIVE + F_SEEN_BY_RAYS,
	interaction_type = "move_to",
}

def_object{
	name = "puzzle_block",
	light_type = "point",
	light_position = vec(-1.0, 1.75, 1.0),
	light_color = vec(0.2, 0.5, 1.0),
	light_intensity = 20.0,
	light_range = 10.0,
	light_flicker_frequency = 1.6,
	light_flicker_amplitude = 0.4,
	dynamic_geometry_func = function(obj, t) call_hook(obj.map.env.draw_block, obj) end,
	tags = { "puzzle" },
}

def_object{
	name = "puzzle_block_virtual",
	ui_name = "Enchanted Block",
	particle_system = "puzzle_block_idle",
	flags = F_INTERACTIVE + F_BLOCK_ALL,
	tooltip = "Interact to push the block.",
	tags = { "puzzle" },
}

def_object{
	name = "puzzle_ceiling_lamp",
	model = "data/models/fire_bowl_hanging.fbx",
	model_position = vec(0.0, 5.5, 0.0),
	anims = { idle = "data/anims/fire_bowl_hanging.fbx" },
	anim_random_start_time = true,
	particle_system = "puzzle_ceiling_lamp",
	particle_parent = "light_null",
	light_type = "point",
	light_position = vec(0.0, 0.5, 0),		
	light_parent = "light_null",
	light_color = vec(1.0, 1.0, 1.0),
	light_intensity = 0.0,	
	light_range = 12.0,
	light_cast_shadow = true,
	light_blur_shadow = true,
	light_shadow_map_size = 128,
	light_flicker_frequency = 1.0,	
	light_flicker_amplitude = 0.6,
	tags = { "puzzle", "light" },
}

def_object{
	name = "acid_splat",
	model = "data/models/box.fbx",
	model_scale = vec(3.0, 0.5, 3.0),
	model_render_mode = "wireframe",
	decal_texture = load_texture("data/textures/decal_splat.png", "dxt5_srgb"),
	on_init = function(obj) set_cell_flag(obj.map, obj.x, obj.y, CF_DANGER) end,
	on_spawn = function(obj) set_cell_flag(obj.map, obj.x, obj.y, CF_DANGER) end,
	flags = F_INTERACTIVE,
	interaction_type = "move_to",
	tooltip = "Any creature entering the square suffers 1 damage (ignoring armor) and is diseased.",
	trigger_flags = TRIGGER_WALKING,
	on_enter_trigger = function(mob, trigger)
		damage_tile(mob.map, trigger.x, trigger.y, -1, 1, DF_PIERCE_ARMOR, DT_ACID)
		set_condition(mob, C_DISEASED)
		delay(1000)
	end,
}

def_object{
	name = "clone_corpse_1",
	model = "data/models/clone_corpse_1.fbx",
}

def_object{
	name = "clone_corpse_2",
	model = "data/models/clone_corpse_2.fbx",
}

def_object{
	name = "clone_corpse_3",
	model = "data/models/clone_corpse_3.fbx",
}

def_object{
	name = "crypt_corpse_wizard",
	ui_name = "Corpse",
	model = "data/models/crypt_corpse_wizard.fbx",
	interaction_type = "move_to",
	tooltip = "The corpse seems to be strangely well preserved, considering that it has clearly been here for a long time.",
}

def_object{
	name = "crypt_corpse_monk",
	ui_name = "Corpse",
	model = "data/models/crypt_corpse_monk.fbx",
	interaction_type = "move_to",
	tooltip = "The corpse seems to be strangely well preserved, considering that it has clearly been here for a long time.",
}

def_object{
	name = "crypt_corpse_warrior",
	ui_name = "Corpse",
	model = "data/models/crypt_corpse_warrior.fbx",
	interaction_type = "move_to",
	tooltip = "The corpse seems to be strangely well preserved, considering that it has clearly been here for a long time.",
}

def_object{
	name = "explosion_decal",
	model = "data/models/box.fbx",
	model_scale = vec(3.0, 0.5, 3.0),
	model_render_mode = "wireframe",
	decal_texture = load_texture("data/textures/decal_explosion.png", "dxt5_srgb"),
}

def_object{
	name = "decoration_copper_pot",
	model = "data/models/decoration_copper_pot.fbx",
}

def_object{
	name = "decoration_cup",
	model = "data/models/decoration_cup.fbx",
}

def_object{
	name = "decoration_plate",
	model = "data/models/decoration_plate.fbx",
}