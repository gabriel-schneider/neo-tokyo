///player_get_state_name(player_state)

switch (argument0)
{
	case player_state.normal: return "Normal/Standing"; break;
	case player_state.crouch: return "Crouch"; break;
	case player_state.jump: return "Jump/On Air"; break;
}