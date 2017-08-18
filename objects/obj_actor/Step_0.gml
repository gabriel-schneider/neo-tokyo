// Friction
if (sign(_hspeed + sign(_hspeed)*-_friction) != sign(_hspeed))
{
	_hspeed = 0
} else
{
	_hspeed += sign(_hspeed)*-_friction
}

if (abs(_hspeed) > max_speed)
{
	_hspeed = max_speed*sign(_hspeed)
}
	
if (_hspeed != 0)
{
	image_xscale = _direction
	image_speed = abs(_hspeed/max_speed)*1.25
	if (!entity_move(id, [_hspeed, 0]))
	{
		//@TODO: Check for stairs only
		//entity_move(id, [_hspeed, -8])
	}
}

on_floor = entity_on_floor(id, [obj_solid, obj_entity]) || (guider != noone)

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