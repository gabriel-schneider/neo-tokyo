event_inherited()

enum actor_state {
	normal, 
	crouch, 
	jump	
}

is_ghostable = true

state = actor_state.normal

mask_normal = -1
mask_crouch = -1

state_speed_mod_crouch = -1
state_speed_mod_jump = 0

on_floor = false