// Friction
_hspeed += sign(_hspeed)*-_friction

if (abs(_hspeed) > max_speed)
{
	_hspeed = max_speed*sign(_hspeed)
}
	
if (_hspeed != 0)
{
	if (abs(_hspeed) < _friction)
	{
		_hspeed = 0
		image_speed = 0
	}

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

on_floor = entity_on_floor(id, [obj_solid, obj_entity]) || (entity_has_guider(id))

if (!on_floor)
{
	_vspeed += _gravity*(!entity_has_guider(id))
}


if (!entity_move(id, [0, _vspeed]))
{
	y = floor(y)
	_vspeed = ceil(_vspeed + 1)
	while (_vspeed > 0 && !entity_move(id, [0, _vspeed]))
	{
		_vspeed -= 1			
	}
	_vspeed = 0
}