_hspeed += (keyboard_check(vk_right) - keyboard_check(vk_left))*acceleration
_direction = sign(_hspeed)
//if (on_floor)
//{

//}

	if (keyboard_check_pressed(vk_up))
	{
		_vspeed = -5.6
		//if (entity_has_guider(id))
		//{
		//	_vspeed += lengthdir_y(guider._speed, guider._direction)
		//}
	}

event_inherited()




