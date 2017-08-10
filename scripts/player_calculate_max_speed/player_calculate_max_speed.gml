///player_calculate_max_speed(base_max_speed)

var spd = argument0

spd -= obj_player.crouch_speed_reduction*(entity_get_state(obj_player) == entity_state.crouch)

return max(0, spd)
