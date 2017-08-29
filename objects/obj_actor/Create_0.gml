event_inherited()

actor_define_enums()

is_ghostable = true

states = ds_stack_create()
actor_state_add(id, actor_state.normal)

on_floor = false
image_index_prev = image_index

// Footstep information
actor_footstep_initialize()
actor_footstep_set_surface(footstep_surface.generic)