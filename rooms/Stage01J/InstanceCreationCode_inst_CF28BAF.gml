trigger = 10;

ftn_trigger = function(triggered, triggered_obj) {
	var i, temp;
	
	if (triggered) {
	    if (triggered_obj == Hamjung01J4) {
	        if (!exists_action_obj(0)) {
	            temp = instance_create_layer(288-28, 2336, "Player", block);
	            temp.image_xscale = 56 / 32;
	            action_obj[0] = temp;
	        }
	        return;
	    }
	}
    
	remove_action_obj(0);
}

trigger_activate = function(obj_index, spr_index) {
	var temp;
	
	if (trigger == 10) {
		if (!is_action) {
			if (obj_index == Hamjung01J3) {
				audio_play_sound(sndChark, 0, false, world.sound_vol);
		        temp = instance_create_layer(304, 2352, "Player", obj_index);
		        temp.sprite_index = spr_index;
		        trigger_id = temp;
				return true;
		    } else if (obj_index == Hamjung01J4) {
				audio_play_sound(sndChark, 0, false, world.sound_vol);
		        temp = instance_create_layer(288, 2352, "Player", obj_index);
		        temp.sprite_index = spr_index;
		        trigger_id = temp;
				is_action = true;
				return true;
		    }
		}
		
		audio_play_sound(sndWrong, 0, false, world.sound_vol);
	}
	return false;
}

ftn_step = function() {
	var temp;
	
	is_action = false;
	if (trigger_id != -1 && instance_exists(trigger_id) && trigger_id.object_index == Hamjung01J4) {
		// water will be flooded
		if (exists_action_obj(1)) {
			if (action_obj[1].image_yscale < 1) {
				is_action = true;
				action_obj[1].y -= 1;
				action_obj[1].image_yscale += 1/32;
			}
		} else {
			is_action = true;
			action_obj[1] = instance_create_layer(224, 2336-1, "Player", water);
			action_obj[1].image_xscale = 4;
			action_obj[1].image_yscale = 1/32;
		}
	} else {
		// water will be flattened
		if (exists_action_obj(1)) {
			if (action_obj[1].image_yscale > 0) {
				is_action = true;
				action_obj[1].y += 1;
				action_obj[1].image_yscale -= 1/32;
			} else {
				with(action_obj[1]) instance_destroy();
			}
		}
	}
}