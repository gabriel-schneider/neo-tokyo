entity_event_initialize()

ambient = audio_play_sound(snd_background, 1, true)
audio_sound_set_track_position(ambient, irandom(audio_sound_length(snd_background)))