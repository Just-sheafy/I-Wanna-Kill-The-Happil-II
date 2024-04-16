var i;

/*
if (ds_exists(list_sounds[1], ds_type_list)) {
	for(i=0; i<ds_list_size(list_sounds[1]); i+=1) {
		audio_sound_gain(ds_list_find_value(list_sounds[1], i), sound_vol, 0);
	}
}
*/

audio_sound_gain(Instance, music_vol, 0);
audio_sound_gain(Kill, music_vol, 0);

if (instance_exists(soundEx)) {
	with(soundEx) {
		audio_sound_gain(M1, Vol, 0);
		audio_sound_gain(M2, world.music_vol-Vol, 0);
	}
}
if (instance_exists(soundEx2)) {
	with(soundEx2) {
		audio_sound_gain(M1, Vol, 0);
		audio_sound_gain(M2, world.music_vol-Vol, 0);
	}
}