///entity_on_floor(entity)

with (argument[0])
{
	if (argument_count >= 2)
	{
		var a = argument[1]
		if (is_array(a))
		{
			for (var i = 0; i < array_length_1d(a); i+=1)
			{
				if (place_meeting(x, y + _vspeed + 1, a[i]))
				{
					return true
				}
			}
		}
	}
	return place_meeting(x, y + _vspeed + 1, obj_solid)
}