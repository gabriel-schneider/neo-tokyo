event_inherited()

actor_define_enums()

is_ghostable = true

states = ds_stack_create()
actor_state_add(id, actor_state.normal)

state_speed_mod_crouch = -1
state_speed_mod_jump = 0

on_floor = false

// Footstep information
actor_footstep_initialize()
actor_footstep_set_surface(footstep_surface.generic)