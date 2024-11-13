trigger = 80;
patt = 0;

action_obj[1] = inst_45062ACE;
action_obj[2] = inst_5B0CB7C0;

trigger_activate = function(obj_index, spr_index) {
	var temp;
	
	if (trigger == 81) {
		if (!is_action) {
			if (obj_index == Hamjung01J3 || obj_index == Hamjung01J5) {
				audio_play_sound(sndChark, 0, false, world.sound_vol);
		        temp = instance_create_layer(464, 1264, "Player", obj_index);
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
	var i, temp;
	
	if (trigger == 82) {
		if (exists_action_obj(0)) {
			if (action_obj[0].object_index == Hamjung01J5) {
				action_obj[0].image_xscale -= 1/16;
				action_obj[0].image_yscale = action_obj[0].image_xscale;
				if (action_obj[0].image_xscale <= 0) {
					audio_play_sound(snd04_21, 0, false, world.sound_vol);
					temp = instance_create_layer(action_obj[0].x, action_obj[0].y + 16, "Player", Hamjung01J6);
					temp.image_xscale = 0;
					temp.image_yscale = 0;
					temp.image_blend = c_red;
					with(action_obj[0]) instance_destroy();
					action_obj[0] = temp;
				}
			} else if (action_obj[0].object_index == Hamjung01J6) {
				patt = min(patt+1, 49);
				
				is_action = true;
				if (patt <= 32) {
					action_obj[0].image_xscale += 1/32;
					action_obj[0].image_yscale = action_obj[0].image_xscale;
					action_obj[0].x -= sprite_get_width(tree_bg) / 2 / 32;
					action_obj[0].y -= sprite_get_height(tree_bg) / 32;
				} else if (patt <= 48) {
					if (patt == 33) {
						if (exists_action_obj(1)) {
							temp = instance_create_layer(action_obj[1].x+16, action_obj[1].y+16, "Player", Hamjung01);
							temp.sprite_index = sprPlayerFall;
							temp.image_speed = 0;
							temp.image_xscale = 0;
							temp.image_yscale = 0;
							action_obj[1].trigger_id = temp;
						}
					}
					
					for(i=1; i<3; i+=1) {
						if (exists_action_obj(i)) {
							if (action_obj[i].trigger_id != -1 && instance_exists(action_obj[i].trigger_id)) {
								action_obj[i].trigger_id.image_xscale += 1/16;
								action_obj[i].trigger_id.image_yscale = action_obj[i].trigger_id.image_xscale;
								if (patt == 48) {
									 if (i == 1) {
										if (!instance_exists(player)) {
											instance_create_depth(action_obj[i].trigger_id.x, action_obj[i].trigger_id.y, -2, player);
											with(action_obj[i].trigger_id) instance_destroy();
											action_obj[i].trigger_id = -1;
										}
									 } else {
										action_obj[i].trigger = 91;
										action_obj[i].trigger_id.collectable = true;
									}
								}
							}
						}
					}
				}
			}
		}
	}
}