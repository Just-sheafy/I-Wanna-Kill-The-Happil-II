var temp;

if (ds_exists(list_x, ds_type_list)) {
	if (ds_list_size(list_x) > 0) {
		audio_play_sound(sndSr01_5, 0, false);
	
		temp = instance_create_depth(ds_list_find_value(list_x, 0)+16, -32, depth, Boss01Sr_7);
		temp.image_angle = 90;
		temp.vspeed = 8;
	
		ds_list_delete(list_x, 0);
		alarm[0] = 15;
	} else {
		if (ds_exists(list_x, ds_type_list)) ds_list_destroy(list_x);
		instance_destroy();
	}
} else instance_destroy();