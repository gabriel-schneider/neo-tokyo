///entity_apply_hspeed(entity)
with (argument0)
{
	if (_hspeed != 0)
	{
		image_xscale = _direction
		image_speed = abs(_hspeed/max_speed)*1.25
		if (!entity_move(id, [_hspeed, 0]))
		{
			if (place_meeting(x + _hspeed, y, obj_stair))
			{
				entity_move(id, [_hspeed, -8])
			}
		}
	}
}