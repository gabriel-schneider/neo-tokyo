argument0.max_speed = entity_get_base(argument0, "max_speed")
argument0._friction = entity_get_base(argument0, "friction")
argument0.controllable = true

with (argument0)
{
	if !place_meeting(x, y - 16, obj_solid)
	{
		entity_set_state(argument0, entity_state.normal)		
	}
}
