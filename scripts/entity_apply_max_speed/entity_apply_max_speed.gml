///entity_apply_max_speed(entity)
with (argument0)
{
	if (abs(_hspeed) > max_speed)
	{
		_hspeed = max_speed*sign(_hspeed)
	}
}