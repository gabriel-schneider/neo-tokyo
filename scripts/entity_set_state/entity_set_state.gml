///entity_set_state(instance, state)


if (argument0).state == argument1
{
	return false
}

// Before
switch (argument1)
{
	case entity_state.jump: {
		with (argument0)
		{
			mask_index = mask_normal	
		}
		break
	}
	case entity_state.normal: {
		argument0.max_speed = 2
		with (argument0)
		{
			mask_index = mask_normal	
		}
		break
	}
	case entity_state.crouch: {
		argument0.max_speed = 1
		with (argument0)
		{
			mask_index = mask_crouch
		}
		break
	}
}

(argument0).state = argument1

return true