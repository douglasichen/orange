function play_sound(sound_id) {
	var pitch_variation = 0.3;
	var pitch = random_range(1 - pitch_variation, 1 + pitch_variation);
	audio_sound_pitch(sound_id, pitch);
	show_debug_message("played: " + string(audio_get_name(sound_id)));
	audio_play_sound(sound_id, 0, 0);
}