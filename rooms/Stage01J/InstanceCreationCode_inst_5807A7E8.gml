trigger = 30;
trigger_id = inst_660C3A7D;

ftn_trigger = function(triggered, triggered_obj) {
	var i, temp;
	
	if (triggered) {
	    if (triggered_obj == Hamjung01J4) {
	        if (!exists_action_obj(0)) {
	            temp = instance_create_layer(704-28, 2336, "Player", block);
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
	
	if (trigger == 30 || trigger == 31) {
		if (!is_action) {
			if (obj_index == Hamjung01J3) {
				audio_play_sound(sndChark, 0, false, world.sound_vol);
		        temp = instance_create_layer(704, 2352, "Player", obj_index);
		        temp.sprite_index = spr_index;
		        trigger_id = temp;
				return true;
		    } else if (obj_index == Hamjung01J4) {
				audio_play_sound(sndChark, 0, false, world.sound_vol);
		        temp = instance_create_layer(704, 2352, "Player", obj_index);
		        temp.sprite_index = spr_index;
		        trigger_id = temp;
				return true;
		    } else if (trigger == 30 && obj_index == Hamjung01J5) {
				audio_play_sound(sndChark, 0, false, world.sound_vol);
		        temp = instance_create_layer(704, 2352, "Player", obj_index);
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

ftn_step = function() {
	var temp;
	
	if (trigger == 32) {
		if (exists_action_obj(1)) {
			if (action_obj[1].object_index == Hamjung01J5) {
				action_obj[1].image_xscale -= 1/16;
				action_obj[1].image_yscale = action_obj[1].image_xscale;
				if (action_obj[1].image_xscale <= 0) {
					audio_play_sound(snd04_21, 0, false, world.sound_vol);
					temp = instance_create_layer(action_obj[1].x, action_obj[1].y + 16, "Player", Hamjung01J6);
					temp.image_xscale = 0;
					temp.image_yscale = 0;
					with(action_obj[1]) instance_destroy();
					action_obj[1] = temp;
				}
			} else if (action_obj[1].object_index == Hamjung01J6) {
				if (action_obj[1].image_xscale < 1) {
					action_obj[1].image_xscale += 1/32;
					action_obj[1].image_yscale = action_obj[1].image_xscale;
					action_obj[1].x -= sprite_get_width(tree_bg) / 2 / 32;
					action_obj[1].y -= sprite_get_height(tree_bg) / 32;
				}
			}
		}
	}
}