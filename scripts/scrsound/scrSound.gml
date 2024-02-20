function sound_play(soundid, priority, loops){
	audio_stop_sound(soundid);
	audio_play_sound(soundid, priority, loops);
}

function audio_destroy_stream_check(stream_sound_id) {
	if (stream_sound_id != -1) {
		audio_destroy_stream(stream_sound_id);
		stream_sound_id = -1;
	}
}