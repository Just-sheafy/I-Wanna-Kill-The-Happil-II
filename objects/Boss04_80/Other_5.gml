if (surface_exists(surface)) surface_free(surface);
if (audio_is_playing(Instance)) {
	audio_stop_sound(Instance);
}