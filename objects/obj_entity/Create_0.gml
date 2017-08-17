entity_set_base(id, "friction", 0.15)
entity_set_base(id, "max_speed", 2)
entity_set_base(id, "acceleration", 1)
entity_set_base(id, "jump_force", 5.6)

_hspeed		= 0
_vspeed		= 0
_gravity	= global.world_gravity
_friction	= entity_get_base(id, "friction")
_direction	= entity_direction.right
max_speed	= entity_get_base(id, "max_speed")
acceleration	= entity_get_base(id, "acceleration")


guider = noone
modifiers = ds_list_create()

is_controllable = true
is_moveable = true
is_guideable = true
is_collidable = true
is_ghostable = false

enum entity_direction {
	right	= 1,
	left	=  -1
}

__previous = noone
__ghosted = false

