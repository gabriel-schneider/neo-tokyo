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

audio_play_sound(fs_list[| fs_index], 1, false)
fs_index ++ 