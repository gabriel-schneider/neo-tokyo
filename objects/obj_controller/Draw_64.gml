draw_text(32, 32, "Player state: " + player_get_state_name(player_get_state()))
window_set_caption("FPS: " + string(fps_real))

var modifiers = obj_player.modifiers
var l = ds_list_size(modifiers)

for (var i = 0; i < l; i ++ )
{
	var m = modifiers[| i]
    draw_text(16, 64 + i*16, string(m[? "name"]) + ": " + string(m[? "duration"]))
}