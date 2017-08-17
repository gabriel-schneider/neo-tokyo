///entity_set_state(instance, state)


if (argument0).state == argument1
{
	return false
}

// Before
switch (argument1)
{
	case actor_state.jump: {
		with (argument0)
		{
			mask_index = mask_normal	
		}
		break
	}
	case actor_state.normal: {
		argument0.max_speed = entity_get_base(argument0, "max_speed")
		with (argument0)
		{
			mask_index = mask_normal	
		}
		break
	}
	case actor_state.crouch: {
		argument0.max_speed = entity_get_base(argument0, "max_speed") + argument0.state_speed_mod_crouch
		with (argument0)
		{
			mask_index = mask_crouch
		}
		break
	}
}

(argument0).state = argument1

return true