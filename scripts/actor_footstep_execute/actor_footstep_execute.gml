/// @description Play a footstep sound effect

if (fs_index >= ds_list_size(fs_list)) {
	if (ds_list_size(fs_list) >= 3) {
		var last_sound = fs_list[| fs_index]
		do {
			ds_list_shuffle(fs_list)
		} until (last_sound != fs_list[| 0])
	}
	fs_index = 0
}

audio_play_sound_at(fs_list[| fs_index], x, y, 0, 64, 160, 4, false, 1)
fs_index ++ 