event_inherited()

entity_set_base(id, "friction", 0.15)
entity_set_base(id, "max_speed", 2)
entity_set_base(id, "acceleration", 1)
entity_set_base(id, "jump_force", 6)

acceleration	= entity_get_base(id, "acceleration")
max_speed		= entity_get_base(id, "max_speed")
jump_force		= entity_get_base(id, "jump_force")

state_on_floor = false

mask_normal = spr_player
mask_crouch = spr_player_crouch

is_moveable = true
move_priority = 10
//entity_set_state(id, actor_state.normal)

//footstep_init()
footstep_count = 0
footstep_index = 0
footstep_list = ds_list_create()
ds_list_add(footstep_list, snd_generic_heels_1, snd_generic_heels_2, snd_generic_heels_3,
			snd_generic_heels_4, snd_generic_heels_5, snd_generic_heels_6, snd_generic_heels_7,
			snd_generic_heels_8)
			
event_attach(id, "on_hit_ground", "entity_jump", [])