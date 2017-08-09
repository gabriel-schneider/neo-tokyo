event_inherited()
_hspeed		= 0
_vspeed		= 0
_gravity	= global.world_gravity
_friction	= global.player_base_friction
_direction	= 1

acceleration	= global.player_base_acc
max_speed		= global.player_base_speed_max
jump_force		= global.player_base_jump_force
crouch_speed_reduction = 1

state_on_floor = false
state = player_state.normal

enum player_state {
	normal, crouch, jump	
}

//footstep_init()
footstep_count = 0
footstep_index = 0
footstep_list = ds_list_create()
ds_list_add(footstep_list, snd_generic_heels_1, snd_generic_heels_2, snd_generic_heels_3,
			snd_generic_heels_4, snd_generic_heels_5, snd_generic_heels_6, snd_generic_heels_7,
			snd_generic_heels_8)