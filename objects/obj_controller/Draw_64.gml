draw_text(32, 32, "Player state: " + player_get_state_name(player_get_state()))
window_set_caption("FPS: " + string(fps_real))