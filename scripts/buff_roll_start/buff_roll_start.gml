argument0.max_speed = global.player_base_speed_max + 1 + argument0.crouch_speed_reduction
argument0._hspeed = argument0.max_speed*sign(argument0._direction)
argument0._friction = 0
argument0.controllable = false

if (argument0.object_index == obj_player)
{
	player_set_state(player_state.crouch)
}