with (argument0)
{
	var _guider = instance_place(x, y + ceil(_vspeed) + 4, obj_entity)
	if (_guider && is_guideable)
	{					
		return _guider
	} else
	{
		return noone
	}
}