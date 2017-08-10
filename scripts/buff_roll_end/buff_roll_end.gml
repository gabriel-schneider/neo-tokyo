argument0.max_speed = global.player_base_speed_max
argument0._friction = global.player_base_friction
argument0.controllable = true

if (argument0.object_index == obj_player)
{
	player_set_state(player_state.normal)
}