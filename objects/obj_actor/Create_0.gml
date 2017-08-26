event_inherited()

enum actor_state {
	normal, 
	crouch, 
	jump,
	void	
}

is_ghostable = true

states = ds_stack_create()
actor_state_add(id, actor_state.normal)
//state = actor_state.normal

mask_normal = -1
mask_crouch = -1

state_speed_mod_crouch = -1
state_speed_mod_jump = 0

on_floor = false