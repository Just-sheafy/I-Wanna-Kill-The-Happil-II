function audio_stop_channel(num){
	var i;
	
	if (num == 0 or num == 1 or num == 2) {
		for(i=0; i<ds_list_size(world.list_sounds[num]); i++)
			audio_stop_sound(ds_list_find_value(world.list_sounds[num], i));
	}
}