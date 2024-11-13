trigger = 50;

trigger_activate = function(obj_index, spr_index) {
	var temp;
	
	if (trigger == 51) {
		if (!is_action) {
			if (obj_index == Hamjung01J5 || obj_index == Hamjung01J7) {
				audio_play_sound(sndChark, 0, false, world.sound_vol);
		        temp = instance_create_layer(x+16, y+16, "Player", obj_index);
		        temp.sprite_index = spr_index;
				temp.triggered_id = id;
		        trigger_id = temp;
				return true;
		    }
		}
		
		audio_play_sound(sndWrong, 0, false, world.sound_vol);
	}
	return false;
}