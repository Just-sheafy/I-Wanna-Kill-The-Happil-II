trigger = 69;
action_obj[0] = inst_99EDE04;

trigger_activate = function(obj_index, spr_index) {
	var temp;
	
	if (trigger >= 60 && trigger < 70) {
		if (!is_action) {
			if (obj_index == Hamjung01J5) {
				audio_play_sound(sndChark, 0, false, world.sound_vol);
			    temp = instance_create_layer(x+16, y+16, "Player", obj_index);
			    temp.sprite_index = spr_index;
			    trigger_id = temp;
				if (Hamjung01J1.ftn_input(trigger-60)) {
					if (exists_action_obj(0)) {
						with(action_obj[0]) trigger_activate();
					}
				}
				return true;
			}
		}
	}
	
	audio_play_sound(sndWrong, 0, false, world.sound_vol);
	return false;
}