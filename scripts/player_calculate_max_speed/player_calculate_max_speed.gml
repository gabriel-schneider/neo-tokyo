///player_calculate_max_speed(base_max_speed)

var spd = argument0

spd -= obj_player.crouch_speed_reduction*(player_get_state() == player_state.crouch)
//with (obj_player)
//{
//	if (place_meeting(x, y + 1, obj_stair))
//	{
//		spd -= 0.75
//	}
//}

return max(0, spd)
