-- These are the definitions for the cards in the base game.
-- They use slightly different versions of def_xxx() functions because the code was written before
-- modding support was added to the game. Therefore the code is not directly usable in mods without
-- some changes, but should give a starting point for modifying the cards.
-- There are also some cards that were cut from the game (e.g. lantern). The cut content is probably
-- not fully implemented, buggy or not properly balanced.

------------------------------------------------------------------------------------------------
--                                     Abilities
------------------------------------------------------------------------------------------------

do
	local function def_ability(name, icon, ability_type, damage, range, flags, description, description_focused)
		_G.def_ability{
			name = name,
			item_icon = icon,
			ability_type = ability_type,
			damage = damage,
			range = range,
			flags = flags,
			description = description,
			description_focused = description_focused,
		}
	end

	local _ = nil

	-- ability types: "r" = red (attack), "g" = green (healing, buffs), "b" = blue (moving, extras, misc)
	--
	-- special damage values: "w" = use weapon's damage, "b" = use base damage from mob definition

	--          name               icon  type  dmg  range flags                                                          description
	def_ability("action_surge",      59,  "b", _,   _,  IF_CONSUMABLE,                                                 "Gain 1 action point.")
	def_ability("advance",          128,  "r", _,   _,  IF_CONSUMABLE+IF_OFFENSIVE,                                    "Move to a space within 3 squares and attack with your equipped weapon.\nYou have to perform the attack. Once per turn.")
	def_ability("aim",               91,  "r", "w", _,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Attack with +2 bonus to range and damage.")
	def_ability("backstab",         131,  "r", "w", _,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Attack with a melee weapon from behind to deal damage with +1 bonus. The target starts bleeding, which makes it receive 1 damage at the start of round until healed. ")
	def_ability("bandage",          133,  "g", _,   1,  IF_ACTION,                                                     "Revive an adjacent knocked out hero. The hero recovers 1%health_icon.\nAlternatively heal 1%health_icon to an adjacent target or yourself." ) --lternatively when used on an alive target, the target recovers 1%health_icon.")
	def_ability("barkskin",         113,  "g", _,   _,  IF_CONSUMABLE,                                                 "Become Protected for 1 round (+2 bonus to armor).")	-- barkandine's equip ability
	def_ability("bash",             134,  "r", "w", _,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Attack with +3 bonus to damage.")
	def_ability("basic_attack",     132,  "r", "b", 1,  IF_ACTION+IF_OFFENSIVE+IF_BASIC_ATTACK,                        "Deal %damage damage to a single target.")
	def_ability("caltrops",         177,  "b", 2,   3,  IF_ACTION+IF_CONSUMABLE,                                       "Create 3 traps within %range squares. Each trap deals %damage\ndamage to the first non-flying creature entering its square.")
	def_ability("charm",             -1,  "b", _,   5,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Charm a single target within 5 squares.")
	def_ability("charge",            40,  "r", "w", 2,  IF_ACTION+IF_OFFENSIVE,                                        "Move up to 2 squares and attack a target. The target is pushed 1 square.\nYou have to move at least 1 square.")
	def_ability("cleave",            83,  "r", "w", 1,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Attack two targets with your melee weapon.\nThe first target must be adjacent to you and the second target adjacent to the first one.")
	def_ability("confuse",           80,  "b", _,   5,  IF_ACTION+IF_CONSUMABLE+IF_FOCUSABLE+IF_OFFENSIVE+IF_SPELL,    "Confuse a creature. The confused creature takes random actions on its turn.", "Focused: Confuse three targets.")	-- enemy only ability
	def_ability("crippling_blow",   144,  "r", 1,   _,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Deal %damage damage to a target. The target suffers -1 penalty to damage with melee and ranged attacks until the end of battle.")
	def_ability("cure",              49,  "g",-5,   5,  IF_ACTION+IF_CONSUMABLE+IF_FOCUSABLE+IF_SPELL,                 "Restore 5%health_icon to a target within %range squares.", "Focused: Heal three targets.")
	def_ability("dash",              60,  "b", _,   _,  IF_CONSUMABLE+IF_UNDOABLE,                                     "Move up to your movement speed.")
	def_ability("destroy_undead",   164,  "r", 99,  1,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Destroy an undead with max health less than 10 points.")
	def_ability("dispel",            70,  "g", _,   5,  IF_ACTION+IF_CONSUMABLE+IF_FOCUSABLE+IF_SPELL,                 "Remove all harmful conditions (except knocked out) from a target.", "Focused: Choose up to three targets.")
	def_ability("dodge",             84,  "b", _,   _,  IF_CONSUMABLE,                                                 "Make the next attack against yourself miss.")
	def_ability("double_attack",    130,  "r", "w", _,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Attack two separate targets with your equipped weapon.")
	def_ability("draw",              39,  "b", _,   2,  IF_CONSUMABLE,                                                 "Use a spellbook or pick up a loot drop within %range squares.")
	def_ability("execute",          180,  "r", "w", 1,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Attack an adjacent target. If the target is killed receive an action point.")
	def_ability("finishing_blow",   143,  "r", 99,  1,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Kill a target with less than 5 health remaining.")
	def_ability("fire",              68,  "r", 4,   5,  IF_ACTION+IF_CONSUMABLE+IF_FOCUSABLE+IF_OFFENSIVE+IF_SPELL,    "Deal %damage damage to a target within %range squares.", "Focused: Attack all targets in a 3x3 square area.")
	def_ability("first_aid",        109,  "g", _,   _,  IF_ACTION+IF_CONSUMABLE,                                       "Recover 3%health_icon and remove all harmful conditions from yourself.")
	def_ability("flame_mihr",        28,  "b", _,   2,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Cause enemies within 2 squares to immediately flee in terror.")
	def_ability("flurry",            58,  "r", 5,   1,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Deal %damage damage to adjacent target.")
	def_ability("focus",             52,  "b", _,   _,  IF_CONSUMABLE,                                                 "Your next spell uses the focused version of the spell.")
	def_ability("forcebolt",         51,  "r", 3,   5,  IF_ACTION+IF_FOCUSABLE+IF_OFFENSIVE+IF_SPELL,                  "Deal %damage damage to a target within %range squares.", "Focused: Attack up to 3 separate targets.")
	def_ability("forcefield",        98,  "b", _,   5,  IF_ACTION+IF_CONSUMABLE+IF_FOCUSABLE+IF_SPELL,                 "Create a magical forcefield within %range squares.\nThe forcefield lasts for 1 round and blocks movement and line of sight.", "Focused: Allow casting on occupied squares.")
	def_ability("freeze",            33,  "b", _,   5,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE+IF_SPELL,                 "Freeze one target within %range squares for 1 round.")
	def_ability("full_protect",     161,  "g", _,   _,  IF_CONSUMABLE,                                                 "Become Full-Protected for 1 round (All damage taken is reduced to zero).")	-- heavy lancer armor's equip ability
	def_ability("guard",             53,  "r", _,   _,  IF_ACTION+IF_END_TURN,                                         "Until the start of next round, gain %armor_icon+1 bonus to armor and\nautomatically attack the first enemy who moves to an adjacent square.")
	def_ability("haste",             -1,  "b", _,   5,  IF_ACTION+IF_CONSUMABLE,                                       "The target receives an extra action point at the start of each round. Duration: 2 rounds.")
	def_ability("here_boy",          -1,  "b", _,   1,  IF_CONSUMABLE,                                                 "Summons %dex to an available adjacent square. This is a free action.")
	def_ability("howl",              -1,  "r", _,   3,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Fill enemies in front of you with fear. Range %range square%s.")
	def_ability("ice",               90,  "r", 3,   5,  IF_ACTION+IF_CONSUMABLE+IF_FOCUSABLE+IF_OFFENSIVE+IF_SPELL,    "Deal %damage damage to the target square and diagonally adjacent squares.\nAll targets are Slowed (maximum speed reduced to 2).", "Focused: Cast the spell twice.")
	def_ability("lightning",         15,  "r", 4,   5,  IF_ACTION+IF_CONSUMABLE+IF_FOCUSABLE+IF_OFFENSIVE+IF_SPELL,    "Deal %damage damage to all targets on a line within %range squares.", "Focused: Shoot a chain of 2 lightning bolts.")
	def_ability("lure_fernos",      170,  "b", _,   _,  IF_ACTION,                                                     "Lure Fernos 3 squares towards you.")
	def_ability("mind_control",     174,  "b", _,  99,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE+IF_SPELL,                 "Force a creature anywhere on the map to\nperform its primary attack on a target of your choice.")
	def_ability("mobile_strike",     -1,  "r", _,   _,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Speed through a square occupied by an enemy and attack the enemy\non the way. You must end your move in a free square within your movement range.")
	def_ability("move_attack",       -1,  "r", "w", _,  IF_ACTION+IF_OFFENSIVE+IF_BASIC_ATTACK,                        "Move up to your remaining movement points and attack with equipped weapon.")
	def_ability("mug",              123,  "r", 2,   1,  IF_ACTION+IF_OFFENSIVE,                                        "Attack an adjacent target dealing %damage damage and\nstealing a small amount of gold. You can only steal once per target.")
	def_ability("oil_shot",         169,  "r", 2,   5,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Deal %damage fire damage to 3x3 area within 5 squares.\nAll targets become Oiled (+2 damage from fire) for 1 round.")
	def_ability("pendant_bearer",   119,  "b", _,   _,  0,                                                             "Rewind time back to the beginning of your turn.")
	def_ability("power_attack",      82,  "r", _,   _,  IF_CONSUMABLE,                                                 "Increase the damage of your next melee or ranged attack by 1.")
	def_ability("protect",          117,  "g", _,   5,  IF_ACTION+IF_CONSUMABLE+IF_FOCUSABLE+IF_SPELL,                 "Grant %armor_icon+2 bonus to armor to a single target for 1 round.", "Focused: Protect all heroes.")
	def_ability("pull",             141,  "b", 0,   2,  IF_OFFENSIVE+IF_NO_ALLY_CONFIRM,                               "Pull a target within %range square%s towards you. Once per turn.")
	def_ability("raise_dead",       172,  "b", _,   2,  IF_CONSUMABLE,                                                 "Raise bones within %range squares as a Skeleton to fight on your side.")
	def_ability("regenerate",       124,  "g", _,   5,  IF_ACTION+IF_CONSUMABLE+IF_SPELL,                              "Choose a target within %range squares. The target recovers 1%health_icon per round.\nThe effect lasts until the end of battle.")
	def_ability("revive",            50,  "g", _,   3,  IF_ACTION+IF_CONSUMABLE+IF_FOCUSABLE+IF_SPELL,                 "Restore a knocked out hero within %range squares back to full health.\nDeals %damage_icon 5 damage to undeads. Heroes in blocked squares can't be revived.", "Focused: Revive all knocked out heroes.")
	def_ability("ricochet_shot",    178,  "r", 1,   5,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Choose 4 targets. Each target must be within 3 squares of the previous target. Deal 1 damage to the first target, 2 damage to the second, 3 damage to the third and 4 damage to the last target.")
	def_ability("shadow",            -1,  "b", _,   3,  IF_ACTION+IF_CONSUMABLE,                                       "Summon an illusion of yourself within %range square%s.\nThe illusion can only move.")
	def_ability("shido_punch",      154,  "r", 1,   1,  IF_ACTION+IF_OFFENSIVE+IF_BASIC_ATTACK,                        "Deal %damage damage to a single target.")
	def_ability("shield",            54,  "g", _,   1,  IF_ACTION+IF_CONSUMABLE+IF_SPELL,                              "Create a magical shield that blocks next two sources of damage against yourself.")
	def_ability("shift",            179,  "b", _,   1,  IF_CONSUMABLE+IF_UNDOABLE,                                     "Move 1 square without provoking attacks from adjacent enemies.\nThe move is not hindered by terrain.")
	def_ability("shuriken_strike",  139,  "r", 2,   5,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Deal %damage damage to three separate targets within %range square%s.")
	def_ability("sleep",             79,  "b", _,   5,  IF_ACTION+IF_CONSUMABLE+IF_FOCUSABLE+IF_OFFENSIVE+IF_SPELL,    "Put a creature with less than 10%health_icon remaining to sleep for 2 rounds.", "Focused: In a 3x3 square area, starting from the creature with least health,\nup to 15 health points' worth of creatures fall asleep.")
	def_ability("slice",            145,  "r", "w", 1,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Attack an adjacent target and 3 targets behind it.")
	def_ability("somersault",       140,  "b", _,   2,  IF_UNDOABLE,                                                   "Place yourself within 2 squares without provoking attacks. Once per turn.")
	def_ability("stormsong",         -1,  "b", _,   _,  IF_CONSUMABLE,                                                 "All heroes gain 1 movement point.")
	def_ability("suffocate",         -1,  "r", 3,   5,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "")	-- siren only ability
	def_ability("teleport",          81,  "b", _,   5,  IF_UNDOABLE,                                                   "Swap places with a target within %range squares. Once per turn.")
	def_ability("throw_spear",      166,  "r", 3,   3,  IF_ACTION+IF_OFFENSIVE,                                        "Deal 3 damage, ignoring armor, to a target within 3 squares.\nBecome unarmed until you pick up the spear.")
	def_ability("tornado",          173,  "b", _,   1,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Push adjacent creatures 1 square away from you.")
	def_ability("toxic_bolt",       165,  "r", 3,   3,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Deal 3 damage to a target within 3 squares. The target is poisoned.")
	def_ability("unarmed_attack",   132,  "r", "1", _,  IF_ACTION+IF_OFFENSIVE,                                        "Deal %damage damage to a single target.")
	def_ability("vanish",           146,  "b", _,   _,  IF_CONSUMABLE,                                                 "Turn invisible for 1 round.\nThe effect ends when you attack or perform an offensive action.")
	def_ability("volley",           118,  "r", "w", _,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Attack up to 2 separate targets with a ranged weapon.")
	def_ability("warp_maul_teleport",168, "b", _,   1,  IF_UNDOABLE,                                                   "Once per turn, swap places with an adjacent target.")
	def_ability("whirlwind",         41,  "r", "w", _,  IF_ACTION+IF_CONSUMABLE+IF_OFFENSIVE,                          "Attack all adjacent creatures with a melee weapon.")
	def_ability("8_winds",          142,  "g", -2,  3,  IF_CONSUMABLE,                                                 "Choose a target within %range squares. The target gains 2 movement\npoints and recovers 2%health_icon. This ability can't be used more than once per turn.")

	def_aux_card{
		action_surge = {
			powers = { { id = "heal_all_wounds", name = "Heal all wounds", cost = 2, tooltip = "Heal to full health when you use the Action Surge ability." } },
		},
		advance = {
			powers = { power_add_uses_per_gem(), { id = "extra_move", name = "+1 move", cost = 1, tooltip = "Move 1 extra square when you use the ability." } },
			cooldown = 1,
			can_use_item = function(mob, item_name) return not get_condition(mob, C_IMMOBILIZED) end,
		},
		aim = {
			damage_modifier = 2,
		},
		backstab = {
			require_melee_weapon = true,
			powers = { power_add_uses_per_gem() },
		},
		bandage = {
			powers = { { id = "dummy", name = "Revive 1 target", cost = 0, tooltip = "%card" } },
		},
		bash = {
			powers = { { id = "dummy", name = "Bash", cost = 0, tooltip = "%card" } },
			damage_modifier = 3,
		},
		basic_attack = {
			ui_name = "Unarmed Attack",
			weapon_type = "melee",
			on_use_item = use_melee_weapon,	
			attack_sound = "$default", 		-- $default = play mob's default attack sound
		},
		caltrops = {
			powers = { { id = "dummy", name = "Create 3 traps", cost = 0, tooltip = "%card" } },			
		},
		charge = {
			require_melee_weapon = true,
			powers = {
				power_range_bonus(1),
				{ id = "recover_health_on_kill", name = "Recover %health_icon on kill", cost = 1, leech_kill = 1, tooltip = "Recover 1 health when you kill an enemy." }
			},
			damage_flags = DF_KNOCKBACK,
			can_use_item = function(mob, item_name) return not get_condition(mob, C_IMMOBILIZED) end,
		},
		cleave = {
			require_melee_weapon = true,
			powers = {
				power_add_uses_per_gem(),
				{ id = "add_target", name = "+1 target", cost = 1, tooltip = "Attack an additional third target which must be adjacent to the first target." },
				power_inflict(C_BLEEDING)
			},
		},
		confuse = {
			inflict = C_CONFUSED,
		},
		crippling_blow = {
			require_melee_weapon = true,
			inflict = C_WEAKENED,
		},
		cure = {
			powers = {
				power_add_uses_per_gem(),
				{ id = "heal_bonus", name = "Heal +1 health", cost = 1, tooltip = "Each use of the ability heals 1 more health." }
			},
			damage_type = DT_CURE,
		},
		dash = {
			powers = { power_add_uses_per_gem() },
			can_use_item = function(mob, item_name) return not get_condition(mob, C_IMMOBILIZED) end,
		},
		destroy_undead = {
			damage_flags = DF_NO_DAMAGE_TEXT,
		},
		dispel = {
			ui_name = "Purify",
			powers = { power_add_uses_per_gem() },
		},
		dodge = {
			powers = {
				power_add_uses_per_gem(),
				{ id = "counter_attack", name = "Counter-attack", cost = 1, tooltip = "Deal 2 damage to the attacker you dodged. You have to be within melee reach of the attacker." }
			},
			can_use_item = function(mob, item_name) return not get_condition(mob, C_DODGING) end,
		},
		double_attack = {
			powers = { power_add_uses_per_gem() },
		},
		draw = {
			powers = { power_add_uses_per_gem(), power_range_bonus(1, 1) },
		},
		flame_mihr = {
			ui_name = "Flame of Mihr",
		},
		finishing_blow = {
			require_melee_weapon = true,
			damage_flags = DF_NO_DAMAGE_TEXT,
			powers = { power_add_uses_per_gem() },
		},
		fire = {
			damage_type = DT_FIRE,
			damage_flags = DF_MAGIC,
			powers = { power_add_uses_per_gem(), power_damage_bonus(1, 2) },
		},
		first_aid = {
			powers = { power_free_action() },
		},
		flurry = {
			require_melee_weapon = true,
			powers = { power_damage_bonus(1), power_inflict(C_DAZED) },
		},
		focus = {
			powers = { power_add_uses_per_gem() },
			can_use_item = function(mob, item_name) return not get_condition(mob, C_FOCUS) end,
			can_cancel_item = function(mob, item_name) return get_condition(mob, C_FOCUS) end,
		},
		forcebolt = {
			damage_flags = DF_MAGIC,
			powers = { power_pierce(1, 2) },
		},
		forcefield = {
			duration = 1,
			powers = { { id = "add_target", name = "+1 target", cost = 1, tooltip = "Create additional forcefield." } },
		},
		freeze = {
			powers = { power_add_uses_per_gem() },
		},
		guard = {
			powers = {
				{ id = "damage_bonus", name = "+1 damage", cost = 1, tooltip = "Deal +1 damage while you are guarding." },
				{ id = "protect_allies", name = "Protect allies", cost = 1, tooltip = "Adjacent allies gain +1 armor while you are guarding." }
			},
		},
		ice = {
			damage_type = DT_COLD,
			damage_flags = DF_MAGIC,
			inflict = C_SLOWED,
			powers = { power_add_uses_per_gem(), power_damage_bonus(1) },
		},
		lightning = {
			damage_type = DT_LIGHTNING,
			damage_flags = DF_MAGIC + DF_NO_DAMAGE_SOUND,
			powers = { power_add_uses_per_gem(), power_name(power_damage_bonus(1, 2), "%damage_icon+1"), power_inflict(C_DAZED, 1) },
		},
		lure_fernos = {
			on_use_item = function(mob, item_name) call_hook(mob.map.env.on_use_lure_fernos, mob, item_name) end,
			ui_name = "Whistle",
		},
		mind_control = {
			powers = { power_add_uses_per_gem() },
		},
		mug = {
			powers = {
				{ id = "double_gold", name = "Double gold", cost = 1, tooltip = "Double the amount of gold stolen." },
				{ id = "steal_items", name = "Steal items", cost = 2, tooltip = "A moderate chance to steal items instead." },
			},
		},
		oil_shot = {
			damage_flags = DF_RANGED,
			inflict = C_OILED,
			projectile_type = "fire_arrow",
			attack_sound = "bolt",
		},
		pendant_bearer = {
			ui_name = "Forest Remembers",
			powers = { { id = "dummy", name = "Rewind Time", cost = 0, tooltip = "%card" } },
			cooldown = 100000,
			can_use_item = function(mob, item_name) return mob.map.rewind_state ~= nil end,
		},
		power_attack = {
			powers = {
				power_add_uses_per_gem(),
				{ id = "recover_health", name = "Recover %health_icon", cost = 1, leech = 1, tooltip = "Recover 1 health when your power attack deals damage." }
			},
			can_use_item = function(mob, item_name) return not get_condition(mob, C_POWER_ATTACK) end,
			can_cancel_item = function(mob, item_name) return get_condition(mob, C_POWER_ATTACK) end,
		},
		protect = {
			powers = { power_add_uses_per_gem(), power_duration_bonus(1, 2) },
		},
		pull = {
			cooldown = 1,
			powers = { { id = "dummy", name = "Pull 2", cost = 0, tooltip = "%card" } },
		},
		regenerate = {
			powers = { power_add_uses_per_gem() },
		},
		revive = {
			powers = {
				power_add_uses_per_gem(),
				{ id = "extra_health", name = "+2 extra health", cost = 1, tooltip = "The maximum health of the revived creature is increased by 2 until the end of the battle." }
			},
		},
		shido_punch = {
			on_use_item = use_melee_weapon,
			weapon_type = "melee",
			attack_sound = "swing",
		},
		shield = {
			powers = {
				{ id = "auto_shield", name = "Auto-shield", cost = 1, tooltip = "Automatically cast Shield at the start of battle without consuming an action point." },
				{ id = "heal", name = "Heal 3", cost = 1, tooltip = "Recover 3 health when you become shielded." },
			},
		},
		shift = {
			powers = { power_add_uses_per_gem(2) },
			can_use_item = function(mob, item_name) return not get_condition(mob, C_IMMOBILIZED) end,
		},
		shuriken_strike = {
			damage_flags = DF_RANGED,
			powers = { power_add_uses_per_gem(), power_knockback(1) },
		},
		sleep = {
			inflict = C_SLEEP,
			powers = { 
				{ id = "daze", name = "Daze " .. shb_utf8_encode(FIRST_CONDITION_GLYPH + C_DAZED - 1), tooltip = "Targets are Dazed for 1 round after they wake up.", cost = 1 },
				{ id = "duration_bonus", name = "+1 duration", cost = 2 },
			},
		},
		slice = {
			require_melee_weapon = true,
			powers = { power_add_uses_per_gem() },
		},
		somersault = {
			cooldown = 1,
			powers = { { id = "jump", name = "Jump 2", cost = 0, tooltip = "%card" } },
		},
		suffocate = {
			damage_flags = DF_MAGIC,
			damage_type = DT_WATER,
			inflict = C_SUFFOCATING,
			powers = {},
		},
		teleport = {
			powers = { power_range_bonus(1, 1) },
			cooldown = 1,
		},
		throw_spear = {
			attack_anim_right = "throw_spear",
			damage_flags = DF_PIERCE_ARMOR,
		},
		toxic_bolt = {
			damage_flags = DF_RANGED,
			inflict = C_POISON,
		},
		vanish = {
			powers = {
				power_add_uses_per_gem(),
				{ id = "damage_bonus", name = "Damage %damage_icon+1", cost = 1, tooltip = "Gain +1 damage bonus when invisible." },
			},
			can_use_item = function(mob, item_name) return not get_condition(mob, C_INVISIBILITY) end,
		},
		volley = {
			powers = { power_add_uses_per_gem(), power_name(power_pierce(2, 1), "Pierce 2"), power_inflict(C_POISON, 2) },
			require_ranged_weapon = true,
		},
		warp_maul_teleport = {
			ui_name = "Warp",
			cooldown = 1,
		},
		whirlwind = {
			require_melee_weapon = true,
			powers = { power_add_uses_per_gem(), power_damage_bonus(1) },
		},
		["8_winds"] = {
			ui_name = "Eight Winds",
			powers = { power_add_uses_per_gem() },
			cooldown = 1,
		}
	}
end

------------------------------------------------------------------------------------------------
--                                     Passives
------------------------------------------------------------------------------------------------

do
	local function def_passive(name, icon)
		_G.def_passive{
			name = name,
			item_icon = icon,
		}
	end

	--          name               icon
	def_passive("combat_training", 63)
	def_passive("defender",       127)
	def_passive("lone_wolf",      129)
	def_passive("loot",           122)
	def_passive("mobility",        62)
	def_passive("potion_master",  120)
	def_passive("protected",      125)
	def_passive("red_mage",       121)
	def_passive("shinobi",        160)
	def_passive("tough",           64)
	def_passive("health_upgrade",  64)	-- this is virtual card can be purchases unlimited number of times after all level up upgrades have been obtained

	def_aux_card{
		combat_training = {
			powers = { { id = "dual_wield", name = "Wield two-handed swords, maces and axes in one hand.", cost = 0 } },
		},
		defender = {
			powers = { { id = "armor_bonus", name = "Adjacent allies gain +1 armor bonus.", cost = 0 } },
		},
		lone_wolf = {
		 	powers = { { id = "recover_health", name = "Recover 1 health at the start of round when there are no allies within 4 squares.", cost = 0 } },
		},
		loot = {
			ui_name = "Looter",
		 	powers = { { id = "open_chest_free", name = "Opening a chest is a free action.", cost = 0 } },
		},
		mobility = {
			powers = { power_speed_bonus(1, 0) },
		},
		potion_master = {
			powers = { { id = "receive_potion", name = "Receive a potion at the start of battle.", cost = 0 } },
		},
		protected = {
			powers = { power_armor_bonus(1, 0) },
		},
		red_mage = {
			ui_name = "Red Priest Acolyte",
			powers = { power_add_uses("fire", 2, 0) },
		},
		shinobi = {
			powers = { { id = "knockback", name = "Basic melee attack has knockback.", cost = 0 } },
		},
		tough = {
			powers = { power_health_bonus(2, 0) },
		},
		health_upgrade = {
			powers = { power_health_bonus(1, 0) },
		}
	}
end

------------------------------------------------------------------------------------------------
--                                     Weapons
------------------------------------------------------------------------------------------------

do
	local function def_weapon(name, icon, weapon_type, damage, damage_type, range, anim_set, attack_sound, price, flags)
		_G.def_weapon{
			name = name,
			item_icon = icon,
			weapon_type = weapon_type,
			damage = damage,
			damage_type = damage_type,
			range = range,
			anim_set = anim_set,
			attack_sound = attack_sound,
			price = price,
			flags = flags,
		}

		-- automatically define attachment
		def_object{
			name = name .. "_attachment",
			model = str("data/models/%s.fbx", name),
			model_can_emit_particles = true,
			editor_ignore_asset = true,
		}
	end

	local _ = nil

	--	       name				   		icon type		damage	dmg type     range	set	sound				price	flags
	def_weapon("2h_axe",				38,	"melee",	3,		_,				1,	4,	"swing",			200,	IF_HEAVY_WEAPON+IF_TWO_HANDED_WEAPON)
	def_weapon("2h_hammer",				37,	"melee",	4,		_,				1,	4,	"swing",			200,	IF_HEAVY_WEAPON+IF_TWO_HANDED_WEAPON)
	def_weapon("2h_sword",				36,	"melee",	3,		_,				1,	4,	"swing",			200,	IF_HEAVY_WEAPON+IF_TWO_HANDED_WEAPON)
	def_weapon("axe",					26,	"melee",	3,		_,				1,	1,	"swing",			200,	IF_LIGHT_WEAPON)
	def_weapon("bow",					20,	"ranged",	2,		_,				5,	3,	"bow",				50,		IF_BOW+IF_TWO_HANDED_WEAPON+IF_LEFT_HAND_WEAPON)
	def_weapon("brass_knuckles",	   155,	"melee",	2,		_,				1,	0,	"swing",			50,		IF_LIGHT_WEAPON)
	def_weapon("dagger", 				17,	"melee",	2,		_,				1,	1,	"swing",			50,		IF_LIGHT_WEAPON)
	def_weapon("despair",				36,	"melee",	"b",	_,				1,	4,	"swing",			0,		IF_HEAVY_WEAPON+IF_TWO_HANDED_WEAPON)	-- dark leonhard's weapon
	def_weapon("firestaff",				110,"melee",	3,		DT_FIRE,		1,	2,	"swing",			150,	IF_STAFF)
	def_weapon("frost_hammer",			163,"melee",	3,		DT_COLD,		1,	1,	"swing",			150,	IF_LIGHT_WEAPON)
	def_weapon("froststaff",			111,"melee",	3,		DT_COLD,		1,	2,	"swing",			150,	IF_STAFF)
	def_weapon("halbert",				47,	"melee",	3,		_,				1,	6,	"swing",			150,	IF_HEAVY_WEAPON+IF_SPEAR+IF_TWO_HANDED_WEAPON)
	def_weapon("hand_crossbow",			96,	"ranged",	2,		_,				3,	5,	"hand_crossbow",	50,		IF_BOW)	-- stirling's weapon
	def_weapon("hunters_bow",			116,"ranged",	2,		_,				8,	3,	"bow",				120,	IF_BOW+IF_TWO_HANDED_WEAPON+IF_LEFT_HAND_WEAPON)
	def_weapon("lantern",				28,	"melee",	0,		_,				1,	0,	_,					50,		IF_LEFT_HAND_WEAPON)
	def_weapon("life_leech_sword",	   175,	"melee",	3,		_,				1,	1,	"swing",			150,	IF_LIGHT_WEAPON)
	def_weapon("mace",					24,	"melee",	3,		_,				1,	1,	"swing",			80,		IF_LIGHT_WEAPON)
	def_weapon("smoldering_crossbow",  167,	"ranged",	2,		DT_FIRE,		5,	1,	"swing",			150,	IF_BOW)
	def_weapon("sickle",				22,	"melee",	2,		_,				1,	1,	"swing",			80,		IF_LIGHT_WEAPON)
	def_weapon("soultrapper_stiletto",150,	"melee",	2,		_,				1,	1,	"swing",			120,	IF_LIGHT_WEAPON)
	def_weapon("spear",					25,	"melee",	3,		_,				1,	6,	"swing",			100,	IF_HEAVY_WEAPON+IF_SPEAR+IF_TWO_HANDED_WEAPON)
	def_weapon("staff",					8,	"melee",	2,		_,				1,	2,	"swing",			100,	IF_STAFF)
	def_weapon("sword",					23,	"melee",	3,		_,				1,	1,	"swing",			50,		IF_LIGHT_WEAPON)
	def_weapon("thunderstaff",	   		112,"melee",	3,		DT_LIGHTNING,	1,	2,	"swing",			150,	IF_STAFF)
	def_weapon("throwing_knives",		46,	"ranged",	2,		_,				3,	1,	"throw",			100,	IF_LIGHT_WEAPON+IF_CONSUMABLE)
	def_weapon("torch",					19,	"melee",	1,		DT_FIRE,		1,	1,	"swing",			50,		IF_LIGHT_WEAPON)
	def_weapon("venom_edge",		   159,	"melee",	2,		_,				1,	1,	"swing",			100,	IF_LIGHT_WEAPON)
	def_weapon("warp_maul",			   148,	"melee",	3,		_,				1,	1,	"swing",			150,	IF_LIGHT_WEAPON)
	def_weapon("windstorm_bow",		   149,	"ranged",	2,		DT_LIGHTNING,	8,	3,	"bow",				250,	IF_BOW+IF_TWO_HANDED_WEAPON+IF_LEFT_HAND_WEAPON)

	def_aux_card{
		["2h_axe"] = {
			ui_name = "Two-handed Axe",
			powers = {
				power_damage_bonus(1, 2),
				{ id = "sweep", name = "Sweep", tooltip = "Deal 2 damage to creatures on the left and right side of the target.", cost = 2, damage_flags = DF_SWEEP }
			},
		},
		["2h_hammer"] = {
			ui_name = "Two-handed Hammer",
			powers = { power_knockback(1), power_speed_bonus(-1, 0) },
		},
		["2h_sword"] = {
			ui_name = "Captain's Claymore",
			powers = {
				power_equip_ability("execute", 0),
				power_damage_bonus(1, 2),
			},
		},
		axe = {
			ui_name = "Battle Axe",
			powers = {
				power_add_uses("cleave", 1, 0),
				power_on_kill("power_attack_on_kill", "Power Attack on kill", 1, function(mob)
					-- without delay_call() power attack gets cleared at the end of attack
					delay_call(function()
						play_sound("power_attack")
						play_flare_effect(mob, "flare2", 5.0)
						set_condition(mob, C_POWER_ATTACK)
					end)
				end,
				"Gain one use of Power Attack when you kill an enemy."),
			},
		},
		bow = {
			ui_name = "Long Bow",
			powers = { power_range_bonus(2), power_pierce(1) },
		},
		brass_knuckles = {
			powers = { power_inflict(C_DAZED, 2) },
		},
		dagger = {
			powers = { power_pierce(1) },
		},
		firestaff = {
			powers = {
				power_add_uses("focus"),
				{ id = "burn", name = "Fire: Burn %burn_icon", cost = 2, tooltip = "Your Fire spells inflict Burn (" .. condition_description(C_BURN, g.cond_info[C_BURN].duration) .. ")" },
			},
		},
		frost_hammer = {
			powers = { power_inflict(C_SLOWED), power_equip_ability("ice", 1) },
		},
		froststaff = {
			powers = { power_add_uses("focus"), power_add_uses("freeze", 1, 2) },
		},
		halbert = {
			powers = { power_reach(0), power_pierce(1, 1) },
		},
		hunters_bow = {
		 	ui_name = "Hunter's Bow",
			powers = { power_add_uses("volley", 1, 0), power_equip_ability("aim", 1) },
		},
		lantern = {
			powers = { power_health_bonus(2), power_equip_ability("flame_mihr") },
			on_init_equipment = function(mob)
				-- special case: can't attack with the lantern
				if get_weapon(mob) == "lantern" then
					set_mob_flag(mob, MF_NO_MELEE)
				end
				remove_inventory(mob.inventory, "lantern")
			end,
		},
		life_leech_sword = {
		 	ui_name = "The Leech",
			powers = {
				{ id = "leech", name = "Recover %health_icon on kill", cost = 2, leech_kill = 1, tooltip = "Recover 1 health when you kill an enemy." },
				power_pierce(2, 2),
			},
		},
		mace = {
			ui_name = "Dawnstone Breaker",
			powers = { power_equip_ability("destroy_undead", 1), power_equip_ability("dispel", 0) },
		},
		smoldering_crossbow = {
			attack_anim_left = "attack_crossbow_left",
			attack_anim_right = "attack_crossbow_right",
			powers = { power_pierce(1), power_equip_ability("oil_shot", 1) },
		},
		sickle = {
			powers = { power_pierce(1, 0), power_inflict(C_BLEEDING, 0) },
		},
		soultrapper_stiletto = {
			powers = {
				power_on_kill("focus_on_kill", "+1 focus on kill", 2, function(mob)
					add_damage_text("+1 focus", mob, nil, nil, 1.0)
					add_inventory(mob.inventory, "focus")
				end, "Gain 1 use of Focus when you kill an enemy."),
				{ id = "recover_health_on_kill", name = "Recover %health_icon on kill", cost = 1, leech_kill = 1, tooltip = "Recover 1 health when you kill an enemy." }
			},
		},
		spear = {
			powers = { power_equip_ability("throw_spear", 0), power_pierce(1) },
		},
		staff = {
			powers = { power_add_uses("focus", 1, 0) },
		},
		sword = {
			powers = { power_pierce(1, 1) },
		},
		thunderstaff = {
			powers = { power_add_uses("focus"), power_add_uses("lightning", 1, 2) },
		},
		throwing_knives = {
			attack_anim_left = "throw_left",
			attack_anim_right = "throw_right",
			powers = { { id = "throw", name = "Throw", cost = 0, tooltip = "The weapon can be thrown 3 times per mission." }, power_damage_bonus(1, 1) },
			on_init_equipment = function(mob) set_inventory(mob.inventory, "throwing_knives", 3) end,
			on_use_item = use_throwing_knives,
		},
		torch = {
			powers = { power_inflict(C_BURN) },
		},
		venom_edge = {
			powers = {
				power_equip_ability("toxic_bolt", 1),
				{ id = "extra_poison_damage", name = "Poisoned: +1 damage", cost = 0, tooltip = "Deal +1 damage with melee attack if the target is poisoned." },
			},
		},
		warp_maul = {
			powers = {
				power_equip_ability("warp_maul_teleport"),
				power_add_uses("shift", 2, 1),
			},
		},
		windstorm_bow = {
			powers = { power_knockback(1), power_equip_ability("ricochet_shot", 1) }, --power_equip_ability("stormsong", 1) },
		},
	}

	def_object{
		name = "brass_knuckles_attachment",
		editor_ignore_asset = true,
	}

	def_object{
		name = "lantern_attachment",
		model = "data/models/lantern.fbx",
		light_type = "point",
		light_position = vec(0.0, 0.0, 0.0),
		light_color = vec(1.0, 1.0, 0.95),
		light_intensity = 10.0,
		light_range = 10.0,
		light_cast_shadow = true,
		light_blur_shadow = true,
		light_shadow_map_size = 128,
	}

	def_object{
		name = "warp_maul_attachment",
		model = "data/models/warp_maul.fbx",
		light_type = "point",
		light_position = vec(0.0, 0.7, 0.0),
		light_color = vec(0.20, 0.62, 1.00),
		light_intensity = 20.0,
		light_range = 6.0,
		light_flicker_frequency = 8.0,
		light_flicker_amplitude = 0.5,
		particle_system = "warp_maul",
	}

	def_object{
		name = "firestaff_attachment",
		model = "data/models/firestaff.fbx",
		particle_system = "firestaff_effect",
		particle_position = vec(0.0, 1.15, 0.1),
		light_type = "point",
		light_position = vec(0.0, 1.2, 0.0),
		light_color = vec(1.0, 0.5, 0.25),
		light_intensity = 12.0,
		light_range = 6.0,
		light_flicker_frequency = 5.0,
		light_flicker_amplitude = 0.4,
	}

	def_object{
		name = "froststaff_attachment",
		model = "data/models/froststaff.fbx",
		particle_system = "froststaff",
		particle_position = vec(0.0, 1.15, 0.1),
		light_type = "point",
		light_position = vec(0.0, 1.2, 0.0),
		light_color = vec(0.20, 0.62, 1.00),
		light_intensity = 20.0,
		light_range = 6.0,
		light_flicker_frequency = 2.0,
		light_flicker_amplitude = 0.4,
	}

	def_object{
		name = "thunderstaff_attachment",
		model = "data/models/thunderstaff.fbx",
		particle_system = "thunderstaff",
		particle_position = vec(0.0, 1.15, 0.1),
		light_type = "point",
		light_position = vec(0.0, 1.2, 0.0),
		light_color = vec(0.01, 0.27, 0.77),
		light_intensity = 30.0,
		light_range = 6.0,
		light_flicker_frequency = 8.0,
		light_flicker_amplitude = 0.5,
	}

	def_object{
		name = "torch_attachment",
		model = "data/models/torch.fbx",
		particle_system = "firestaff_effect",
		particle_position = vec(0.0, 0.6, 0.0),
		light_type = "point",
		light_position = vec(0.0, 1.2, 0.0),
		light_color = vec(1.0, 0.5, 0.25),
		light_intensity = 12.0,
		light_range = 6.0,
		light_flicker_frequency = 5.0,
		light_flicker_amplitude = 0.4,
		timer = function(obj, time)
			-- turn the particle system so that points towards positive y-axis
			shb_look_at_dir(obj.particle_node, 0.0, 1.0, 0.0)
			shb_rotate_node_about(obj.particle_node, 0, -math.rad(90))
		end,
	}
end

------------------------------------------------------------------------------------------------
--                                     Armor
------------------------------------------------------------------------------------------------

do
	local function def_armor(name, icon, health_bonus, price, flags)
		_G.def_armor{
			name = name,
			item_icon = icon,
			armor_health_bonus = health_bonus,
			price = price,
			flags = flags,
		}
	end

	local _ = nil

	-- name							icon	health	price	item flags
	def_armor("barkandine",			113,	3,		250,	IF_HEAVY_ARMOR)
	def_armor("bearskin",			89,		2,		150,	IF_LIGHT_ARMOR)
	def_armor("black_robe",			92,		0,		150,	IF_LIGHT_ARMOR+IF_ARTIFACT)
	def_armor("chainshirt",			153,	-2,		200,	IF_LIGHT_ARMOR)
	def_armor("cloak",				48,		1,		75,		IF_LIGHT_ARMOR)
	def_armor("cyclone_cuirass",	162,	3,		200,	IF_LIGHT_ARMOR)
	def_armor("deer_armor",			114,	2,		150,	IF_LIGHT_ARMOR)
	def_armor("heavy_lancer_armor", 161,	5,		250,	IF_HEAVY_ARMOR)
	def_armor("leaf_shirt",			87,		0,		100,	IF_LIGHT_ARMOR)
	def_armor("leather_shirt",		94,		1,		100,	IF_LIGHT_ARMOR)
	def_armor("mage_robe",			93,		1,		100,	IF_MAGE_ARMOR)
	def_armor("ninja_robe",			176,	0,		100,	IF_LIGHT_ARMOR)
	def_armor("robe_of_blood",		152,	2,		100,	IF_LIGHT_ARMOR)
	def_armor("silk_shirt",			85,		1,		75,		IF_LIGHT_ARMOR)
	def_armor("twig_vest",			88,		2,		50,		IF_LIGHT_ARMOR)
	def_armor("wool_shirt",			86,		1,		50,		IF_LIGHT_ARMOR)

	def_aux_card{
		barkandine = {
			powers = { power_equip_ability("barkskin", 2) },
		},
		bearskin = {
			powers = { power_affinity(DT_COLD, "resist", 0), power_add_uses("power_attack", 1, 1) },
		},
		black_robe = {
			powers = { { id = "cheat_death", name = "Cheat death", tooltip = "Once per battle, when you die, you are resurrected with 1%health_icon.", cost = 0 } },
		},
		chainshirt = {
			ui_name = "Barbed Chainshirt",
			powers = {
				power_armor_bonus(1, 3),
				power_on_damaged("barbed", "Barbed", 0, "A creature attacking you from an adjacent square suffers 1 damage.", function(mob, damage, damage_flags, damage_type, attacker)
					local dir = dir_towards2(attacker.x - mob.x, attacker.y - mob.y)
					delay_call(function()
						if obj_distance(mob, attacker) == 1 and attacker.hp > 0 and attacker.map then
							delay(500)
							damage_tile(attacker.map, attacker.x, attacker.y, dir, 1, 0, DT_PHYSICAL, DF_PIERCE_ARMOR)
						end
					end)
				end)
			},
		},
		cloak = {
			ui_name = "Huntsman Cloak",
			powers = { power_add_uses("shift", 1, 0) },
		},
		cyclone_cuirass = {
			powers = { { id = "floaty", name = "Floaty", tooltip = "You are pushed back when damaged by an attack.", cost = 0 }, power_equip_ability("tornado", 1) },
		},
		deer_armor = {
			powers = { { id = "free_movement", name = "Free movement", cost = 0, tooltip = "Water does not slow you. You may pass through traps without triggering them." }, power_health_bonus(1, 1) },
		},
		heavy_lancer_armor = {
			powers = { power_speed_bonus(-1, 0), power_equip_ability("full_protect", 2) },
		},
		leaf_shirt = {
			powers = { power_immunity(C_POISON, 0), power_add_uses("shift", 3, 1) },
		},
		leather_shirt = {
			ui_name = "Leather Armor",
			powers = { power_health_bonus(1) },
		},
		mage_robe = {
			powers = { power_add_uses("focus"), power_affinity(DT_FIRE, "immune", 1) },
		},
		ninja_robe = {
			card_style = "text_box",
			description = "Moving does not provoke opportunity attacks.",
		},
		robe_of_blood = {
			ui_name = "Robe of Blood",
			powers = {
				{ id = "drop_heart", name = "Drop heart on hit", cost = 0, tooltip = "Reaction: Drop heart to a random adjacent square when you are damaged." },
			},
		},
		silk_shirt = {
			powers = { power_add_uses("first_aid") },
		},
		twig_vest = {
			powers = { power_affinity(DT_FIRE, "weak", 0) },
		},
		wool_shirt = {
			powers = { power_immunity(C_SLOWED, 0), power_affinity(DT_COLD, "resist", 0) },
		},
	}
end

------------------------------------------------------------------------------------------------
--                                     Accessories
------------------------------------------------------------------------------------------------

do
	local function def_accessory(name, icon, price)
		_G.def_accessory{
			name = name,
			item_icon = icon,
			price = price,
		}
	end

	local _ = nil

	--            name					icon	price
	def_accessory("boots_of_speed",		108,	200)
	def_accessory("cloak_of_night",		78,		150)		
	def_accessory("figure",				104,	50)
	def_accessory("glacier_amulet",		157,	100)
	def_accessory("goldsmiths_apron",	151,	100)
	def_accessory("harmonica",			158,	50)
	def_accessory("ring",				11,		150)		
	def_accessory("rubber_boots",		97,		100)		
	def_accessory("spectacles",		   156,		100)		
	def_accessory("talisman",			9,		100)		
	def_accessory("willow_flute",		77,		100)		
	def_accessory("zhanduls_tome",		99,		100)

	def_aux_card{
		boots_of_speed = {
			ui_name = "Boots of Speed",
			powers = { power_equip_ability("dash", 0), power_speed_bonus(1, 3) },
		},
		cloak_of_night = {
			ui_name = "Cloak of Night",
			powers = { power_equip_ability("vanish", 0) },
		},
		figure = {
			card_style = "text_box",
			description = "Once per mission, suffer %damage damage to break the figure and obtain a random consumable item.",
			damage = 3,
			on_use_item = use_figure,
		},
		glacier_amulet = {
			powers = {
				{ id = "freeze_attacker", name = "Freeze attacker", tooltip = "Once per mission, the first one to melee attack you is frozen for 1 round.", cost = 1 },
				power_affinity(DT_COLD, "resist", 0),
			},
		},
		goldsmiths_apron = {
			ui_name = "Goldsmith's Apron",
			card_style = "text_box",
			powers = { { id = "drop_gold", name = "drop_gold", cost = 0 } },
			description = "Drop gold to an adjacent square when you are damaged by an enemy. Once per enemy."
		},
		harmonica = {
			ui_name = "Stirling's Harmonica",
			powers = {
				{ id = "steal_items", name = "Steal Items", cost = 2, tooltip = "Stirling's Mug ability has a chance to steal an item instead of gold." },
			},
			flags = IF_ACTION + IF_CONSUMABLE,
			range = 2,
			on_use_item = use_harmonica,
			can_use_item = function() return find_hero("thief") == nil end,
			description = "Spend an action point to summon Stirling to fight on your side at the price\nof 20% of any gold obtained during the mission.",
		},
		ring = {
			ui_name = "Ring of Protection",
			powers = {
				power_health_bonus(2, 0),
				power_add_uses("shield", 1, 1),
			},
		},
		rubber_boots = {
			powers = { power_affinity(DT_LIGHTNING, "immune", 0) },
		},
		spectacles = {
			powers = { { id = "range_bonus", name = "Range %range_icon+1", cost = 0, tooltip = "Increases range of ranged attacks and abilities by 1 square. Does not apply to movement abilities." } }
		},
		talisman = {
			powers = {
				power_health_bonus(1, 0),
				power_equip_ability("raise_dead", 1)
			},
		},
		willow_flute = {
			powers = {
				{ id = "elite_squad", name = "Elite Squad", cost = 2, tooltip = "Summon an elite war squad consisting of three Shido." },
			},
			flags = IF_ACTION + IF_CONSUMABLE,
			range = 2,
			on_use_item = use_willow_flute,
			description = "Spend an action point to summon a Shido to fight on your side.",
		},
		zhanduls_tome = {
			ui_name = "Zhandul's Grimoire",
			card_style = "text_box",
			description = "Once per mission, spend an Action Point to cast one of the 6 spells written in the tome.",
			flags = IF_ACTION + IF_CONSUMABLE,
			on_use_item = use_zhanduls_tome,
		},
	}
end

------------------------------------------------------------------------------------------------
--                                     Consumable items
------------------------------------------------------------------------------------------------

do
	local function def_consumable(name, icon, range, flags, description)
		_G.def_consumable{
			name = name,
			item_icon = icon,
			range = range,
			flags = flags,
			description = description,
		}
	end

	local _ = nil

	--             name             icon range  flags                          description
	def_consumable("ankh",            6,  _,    0,                             "Protects all heroes from all damage for 1 round.")
	def_consumable("caustic_bomb",  106,  5,    IF_ACTION+IF_OFFENSIVE,        "Inflict a random harmful condition to all creatures in 3x3 square area.")
	def_consumable("chili",         100,  3,    IF_ARTIFACT+IF_OFFENSIVE,      "Breath fire to deal %damage fire damage to all targets within %range squares.")
	def_consumable("dispel_bomb",    43,  3,    IF_ACTION,                     "Dispel a magical field within %range squares.")
	def_consumable("dynamite",       12,  5,    IF_ACTION+IF_OFFENSIVE,        "Deal %damage damage to all targets in 3x3 square area.")
	def_consumable("gem",             4,  _,    0,                             "Recharge 1 use to an ability.")
	def_consumable("keystone",      135,  1,    IF_ACTION,                     "Dispel an adjacent forcefield.")
	def_consumable("librarians_book",171, _,    0,                             "Search bookshelves within 2 squares.")
	def_consumable("lure",           -1,  _,    IF_ARTIFACT,                   "Make yourself irresistible to your enemies for the entire battle.")
	def_consumable("menhir_shards",  57,  1,    0,                             "Remove all harmful conditions from yourself or adjacent creature.\nIf there are no harmful conditions to remove, the target recovers 2%health_icon.")
	def_consumable("nuke",          147,  5,    IF_ACTION+IF_OFFENSIVE,        "Disintegrates everything in a 3x3 square area.\nThe Sorceress is immune to disintegration and receives 5 damage instead.\nMay the forest protect you!")
	def_consumable("scroll",          5,  _,    0,                             "Turn invisible for 1 round. While invisible you cannot be targeted by enemies and\nyou do not perform opportunity attacks. Invisibility ends if you perform an offensive action.")
	def_consumable("skull",          55,  5,    IF_ACTION+IF_OFFENSIVE,        "Deal %damage damage to all enemies.")
	def_consumable("oil_lamp",      103,  2,    IF_ARTIFACT+IF_ACTION,         "Summon an efreet to fight for you.")
	def_consumable("pocket_watch",  101,  _,    IF_ARTIFACT,                   "Stop time for your enemies for 1 round.")
	def_consumable("potion",          3,  1,    0,                             "Restore yourself or adjacent target to full health and remove all harmful conditions.")
	def_consumable("syringe",       105,  _,    IF_ARTIFACT,                   "Grant +1 bonus to damage to yourself or adjacent target for 3 rounds.")
	def_consumable("tetra_red",     136,  1,    0,                             "Place the tetra on a pedestal.")
	def_consumable("tetra_green",   137,  1,    0,                             "Place the tetra on a pedestal.")
	def_consumable("tetra_blue",    135,  1,    0,                             "Place the tetra on a pedestal.")
	def_consumable("tetra_white",   138,  1,    0,                             "Place the tetra on a pedestal.")

	def_aux_card{
		chili = {
			ui_name = "Red Hot Chili",
			damage = 5,
			damage_type = DT_FIRE,
		},
		dynamite = {
			damage = 5,
		},
		gem = {
			ui_name = "Crystal",
		},
		librarians_book = {
			ui_name = "Library Index Book",
		},
		nuke = {
			ui_name = "Tear of Aether",
			damage = 9999,
			damage_flags = DF_PIERCE_ARMOR,
		},
		oil_lamp = {
			ui_name = "An Old Oil Lamp",
		},
		potion = {
			-- damage amount, flags and type here are needed for dealing and previewing damage to undeads.
			-- See choose_item and compute_damage. For other mobs, the amount of healing is dynamic.
			damage = -5,
			damage_flags = DF_PIERCE_ARMOR,
			damage_type = DT_CURE,
		},
		skull = {
			damage = 2,
		},
		syringe = {
			name = "syringe",
			--can_use_item = function(mob, item_name) return not get_condition(mob, C_STRENGTHENED) end,
		},
		tetra_red = {
			ui_name = "Red Tetra",
		},
		tetra_green = {
			ui_name = "Green Tetra",
		},
		tetra_blue = {
			ui_name = "Blue Tetra",
		},
		tetra_white = {
			ui_name = "White Tetra",
		},
	}
end
