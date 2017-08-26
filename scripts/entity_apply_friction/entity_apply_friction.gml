///entity_apply_friction(entity)
with (argument0)
{
	_hspeed += sign(_hspeed)*-_friction
	if (abs(_hspeed) < _friction)
	{
		_hspeed = 0
		image_speed = 0
	}
}