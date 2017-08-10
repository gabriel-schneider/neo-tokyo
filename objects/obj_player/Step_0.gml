

_hspeed += sign(_hspeed)*-_friction

if (controllable)
{
	_hspeed += (keyboard_check(global.control_move_right) - keyboard_check(global.control_move_left))*acceleration
}

//var ms = player_calculate_max_speed(max_speed)

if (abs(_hspeed) > max_speed)
{
	_hspeed = max_speed*sign(_hspeed)
}

if (abs(_hspeed) < _friction)
{
	_hspeed = 0
	image_speed = 0
}

if !place_meeting(x + _hspeed, y, obj_solid)
{
	x += _hspeed
} else
{
	// Check for higher ground
	if (_vspeed == 0) 
	{
		var inst = instance_place(x + _hspeed, y, obj_stair)
		if (inst)
		{
			if place_meeting(x + _hspeed, y - 8, obj_solid)
			{
				_hspeed = 0
			} else
			{
				x += _hspeed
				y -= 8
			}
		}
	} else
	{
		_hspeed = 0
	}
	
}

if (_hspeed != 0)
{
	_direction = sign(_hspeed)
	image_xscale = _direction
	image_speed = abs(_hspeed/max_speed)*1.25
	
	if (state_on_floor)
	{
		footstep_count += abs(_hspeed/max_speed)*1.25
		if (footstep_count > 24)
		{
			footstep_count -= 24
			if (footstep_index >= ds_list_size(footstep_list))
			{
				footstep_index = 0
				ds_list_shuffle(footstep_list)
			}
			audio_play_sound(footstep_list[| footstep_index], 1, false)
			footstep_index ++
		}
	}
}


if (place_meeting(x, y + _vspeed, obj_solid))
{	
	if (!state_on_floor)
	{
		y += _vspeed
		y = floor(y)
		while (place_meeting(x, y, obj_solid))
		{
			y += sign(_vspeed)*-0.1
		}
		_vspeed = 0
	}
}

if !place_meeting(x, y + 1, obj_solid)
{
	if (state_on_floor)
	{
		if (_vspeed >= 0)
		{
			if place_meeting(x, y + 9, obj_solid)
			{
				y += 8
			}
		}
	}
}

state_on_floor = place_meeting(x, y + 1, obj_solid)
if (!state_on_floor)
{
	_vspeed += _gravity
	entity_set_state(id, entity_state.jump)
} else
{
	if (entity_get_state(id) == entity_state.jump)
	{
		player_hit_ground()
		entity_set_state(id, entity_state.normal)
	}
	
	if (keyboard_check_pressed(global.control_jump) && controllable)
	{
		if !place_meeting(x, y - 16, obj_solid) 
		{
			entity_set_state(id, entity_state.jump)
		}
		
		if (entity_get_state(id) != entity_state.crouch)
		{
			_vspeed = -abs(jump_force)	
		}
		
	}
}

y += _vspeed

if keyboard_check_pressed(global.control_crouch) && state_on_floor
{
	if (entity_get_state(id) == entity_state.normal)
	{
		entity_set_state(id, entity_state.crouch)
	} else
	{
		if !place_meeting(x, y - 16, obj_solid)
		{
			entity_set_state(id, entity_state.normal)
		}
	}
}

