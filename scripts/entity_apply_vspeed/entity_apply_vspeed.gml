///entity_apply_vspeed(entity)
with (argument0)
{
	var has_on_floor = on_floor
	on_floor = entity_on_floor(id, [obj_solid, obj_entity]) || (entity_has_guider(id))
	
	if (!on_floor) {
		_vspeed += _gravity*(!entity_has_guider(id))
	} else {
		if (has_on_floor != on_floor) {
			event_fire(id, "on_hit_ground")
		}
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
}