with (argument0)
{
	var _guider = instance_place(x, y + ceil(_vspeed) + 4, obj_platform)
	if (_guider)
	{					
		return _guider
	} else
	{
		return noone
	}
}