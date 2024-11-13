trigger = 0;
trigger_id = inst_1C35FCEA;

ftn_trigger = function(triggered, triggered_obj) {
	var i, temp;
	
	if (triggered) {
	    if (triggered_obj == Hamjung01J4) {
	        if (!exists_action_obj(0)) {
	            temp = instance_create_layer(512, 2528-28, "Player", block);
	            temp.image_yscale = 56 / 32;
	            action_obj[0] = temp;
	        }
	        return;
	    }
	}
    
	remove_action_obj(0);
}

trigger_activate = function(obj_index, spr_index) {
	var temp;
	
	if (!is_action) {
		if (obj_index == Hamjung01J3) {
			audio_play_sound(sndChark, 0, false, world.sound_vol);
	        temp = instance_create_layer(528, 2528, "Player", obj_index);
	        temp.sprite_index = spr_index;
	        trigger_id = temp;
			return true;
	    } else if (obj_index == Hamjung01J4) {
			audio_play_sound(sndChark, 0, false, world.sound_vol);
	        temp = instance_create_layer(528, 2528, "Player", obj_index);
	        temp.sprite_index = spr_index;
	        temp.image_angle = 270;
	        trigger_id = temp;
			is_action = true;
			return true;
	    }
	}
	
	audio_play_sound(sndWrong, 0, false, world.sound_vol);
	return false;
}

ftn_step = function() {
	var temp, temp_fill;
	
	temp_fill = false;
	is_action = false;
	if (trigger == 1 || (trigger_id != -1 && instance_exists(trigger_id) && trigger_id.object_index == Hamjung01J4)) {
		// water will be stopped
		if (exists_action_obj(1)) {
			is_action = true;
			if (action_obj[1].y < 2720) {
				temp_fill = true;
				action_obj[1].y += 4;
				action_obj[1].image_yscale -= 1/8;
			} else {
				action_obj[1].y += 1;
				action_obj[1].image_yscale -= 1/32;
			}
			
			if (action_obj[1].image_yscale <= 0) {
				with(action_obj[1]) instance_destroy();
				action_obj[1] = -1;
			}
		}
	} else {
		// water will be filled
		if (exists_action_obj(1)) {
			if (action_obj[1].y + 32 * action_obj[1].image_yscale < 2752) {
				is_action = true;
				action_obj[1].image_yscale += 1/8;
			} else temp_fill = true;
		} else {
			is_action = true;
			action_obj[1] = instance_create_layer(512, 2528, "Player", water);
			action_obj[1].image_yscale = 1/8;
		}
	}
	
	if (temp_fill) {
		if (exists_action_obj(2)) {
			if (action_obj[2].image_yscale < 1) {
				is_action = true;
				action_obj[2].y -= 1;
				action_obj[2].image_yscale += 1/32;
			}
		} else {
			is_action = true;
			action_obj[2] = instance_create_layer(32, 2752, "Player", water);
			action_obj[2].image_xscale = 15;
			action_obj[2].image_yscale = 0;
		}
		
		if (exists_action_obj(3)) {
			if (action_obj[3].image_yscale < 1) {
				is_action = true;
				action_obj[3].y -= 1;
				action_obj[3].image_yscale += 1/32;
			}
		} else {
			is_action = true;
			action_obj[3] = instance_create_layer(544, 2752, "Player", water);
			action_obj[3].image_xscale = 7;
			action_obj[3].image_yscale = 0;
		}
	} else {
		if (exists_action_obj(2)) {
			is_action = true;
			if (action_obj[2].image_yscale > 0) {
				action_obj[2].y += 1;
				action_obj[2].image_yscale -= 1/32;
			} else {
				with(action_obj[2]) instance_destroy();
				action_obj[2] = -1;
			}
		}
		
		if (exists_action_obj(3)) {
			is_action = true;
			if (action_obj[3].image_yscale > 0) {
				action_obj[3].y += 1;
				action_obj[3].image_yscale -= 1/32;
			} else {
				with(action_obj[3]) instance_destroy();
				action_obj[3] = -1;
			}
		}
	}
}