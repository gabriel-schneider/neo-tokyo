///player_set_state(player_state)


if player_get_state() == argument0
{
	return false
	
}

// Before
switch (argument0)
{
	case player_state.normal: {
		audio_group_set_gain(ag_generic_footstep, 0.1, 100)
		with (obj_player)
		{
			mask_index = spr_player	
		}
		break
	}
	case player_state.crouch: {
		audio_group_set_gain(ag_generic_footstep, 0.05, 100)
		with (obj_player)
		{
			mask_index = spr_player_crouch
		}
		break
	}
}

obj_player.state = argument0

return true