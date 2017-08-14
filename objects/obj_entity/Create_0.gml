entity_set_base(id, "friction", 0.15)
entity_set_base(id, "max_speed", 2)
entity_set_base(id, "acceleration", 1)
entity_set_base(id, "jump_force", 5.6)

_hspeed		= 0
_vspeed		= 0
_gravity	= global.world_gravity
_friction	= entity_get_base(id, "friction")
_direction	= entity_direction.right

modifiers = ds_list_create()
controllable = true
is_controllable = true
is_moveable = true

enum entity_direction {
	right	= 1,
	left	=  -1
}

enum entity_state {
	normal, 
	crouch, 
	jump	
}

state = entity_state.normal

mask_normal = -1
mask_crouch = -1

state_speed_mod_crouch = -1
state_speed_mod_jump = 0