var i, temp;

trigger = 40;
total = 30;
patt = 0;

action_obj[1] = inst_3E825882;
action_obj[2] = inst_44968FC7;
action_obj[3] = inst_27AF2076;
action_obj[4] = inst_D0B664E;
action_obj[5] = inst_6DA554CE;
action_obj[6] = inst_11461437;
action_obj[7] = inst_DDC225C;
for(i=8; i<18; i+=1) {
	action_obj[i] = instance_create_layer(352+32*(i-8), 1824, "Player", block);
	action_obj[i].visible = true;
	action_obj[i].sprite_index = block01J;
	action_obj[i].image_index = 0;
	action_obj[i].image_speed = 0;
}
for(i=18; i<20; i+=1) {
	action_obj[i] = instance_create_layer(352+32*(i-18), 1856, "Player", block);
	action_obj[i].visible = true;
	action_obj[i].sprite_index = block01J;
	action_obj[i].image_index = 1;
	action_obj[i].image_speed = 0;
	
	action_obj[i+2] = instance_create_layer(352+32*(i-18), 1888, "Player", block);
	action_obj[i+2].visible = true;
	action_obj[i+2].sprite_index = block01J;
	action_obj[i+2].image_index = 1;
	action_obj[i+2].image_speed = 0;
}
for(i=22; i<29; i+=1) {
	action_obj[i] = instance_create_layer(448+32*(i-22), 1856, "Instances", spikeDown);
}
action_obj[29] = instance_create_depth(512, 1856, 200, Hamjung01J9);
action_obj[29].num = 3;

trigger_activate = function(obj_index, spr_index) {
	var temp;
	
	if (trigger == 41 || trigger == 43) {
		if (!is_action) {
			if (obj_index == Hamjung01J3) {
				audio_play_sound(sndChark, 0, false, world.sound_vol);
		        temp = instance_create_layer(528, 2032, "Player", obj_index);
		        temp.sprite_index = spr_index;
		        trigger_id = temp;
				return true;
		    } else if (trigger == 41 && obj_index == Hamjung01J5) {
				audio_play_sound(sndChark, 0, false, world.sound_vol);
		        temp = instance_create_layer(528, 2032, "Player", obj_index);
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
	
	if (trigger == 44 || trigger == 45) {
		if (exists_action_obj(0)) {
			if (action_obj[0].object_index == Hamjung01J5) {
				action_obj[0].image_xscale -= 1/16;
				action_obj[0].image_yscale = action_obj[0].image_xscale;
				if (action_obj[0].image_xscale <= 0) {
					audio_play_sound(snd04_21, 0, false, world.sound_vol);
					temp = instance_create_layer(action_obj[0].x, action_obj[0].y + 16, "Player", Hamjung01J6);
					temp.image_xscale = 0;
					temp.image_yscale = 0;
					if (trigger == 45) temp.image_blend = c_red;
					with(action_obj[0]) instance_destroy();
					action_obj[0] = temp;
				}
			} else if (action_obj[0].object_index == Hamjung01J6) {
				patt = min(patt+1, 49);
				
				if (patt <= 32) {
					action_obj[0].image_xscale += 1/32;
					action_obj[0].image_yscale = action_obj[0].image_xscale;
					action_obj[0].x -= sprite_get_width(tree_bg) / 2 / 32;
					action_obj[0].y -= sprite_get_height(tree_bg) / 32;
					
					if (patt == 6) {
						audio_play_sound(sndSr01_defeat, 0, false, world.sound_vol);
						with(Hamjung01J9) {
							if (y < 1696) {
								hspeed = random_range(-1.5, 1.5);
								vspeed = random_range(-4, 2);
								gravity = 0.4;
							}
						}
						
						for(i=4; i<8; i+=1) {
							if (exists_action_obj(i)) {
								with(action_obj[i]) instance_destroy();
								action_obj[i] = -1;
							}
						}
						for(i=8; i<18; i+=1) {
							if (exists_action_obj(i)) {
								action_obj[i].x = 704;
								action_obj[i].y = 1728 + 32*(i-8);
								action_obj[i].image_index += 2;
							}
						}
						for(i=18; i<20; i+=1) {
							if (exists_action_obj(i)) {
								action_obj[i].x = 672;
								action_obj[i].y = 1728 + 32*(i-18);
								action_obj[i].image_index += 2;
							}
							
							if (exists_action_obj(i+2)) {
								action_obj[i+2].x = 640;
								action_obj[i+2].y = 1728 + 32*(i-18);
								action_obj[i+2].image_index += 2;
							}
						}
						for(i=22; i<29; i+=1) {
							if (exists_action_obj(i)) {
								with(action_obj[i]) instance_destroy();
								action_obj[i] = instance_create_layer(672, 1824 + 32*(i-22), "Instances", spikeLeft);
							}
						}
						if (exists_action_obj(29)) {
							with(action_obj[29]) {
								x = 704; y = 1920;
								angle = 270;
							}
						}
					}
				} else if (patt <= 48) {
					if (patt == 33) {
						if (trigger == 44) {
							if (exists_action_obj(1)) {
								temp = instance_create_layer(action_obj[1].x+16, action_obj[1].y+16, "Player", Hamjung01J7);
								temp.image_xscale = 0;
								temp.image_yscale = 0;
								temp.collectable = false;
								action_obj[1].trigger_id = temp;
							}
							for(i=2; i<4; i+=1) {
								if (exists_action_obj(i)) {
									temp = instance_create_layer(action_obj[i].x+16, action_obj[i].y+16, "Player", Hamjung01J5);
									temp.image_xscale = 0;
									temp.image_yscale = 0;
									temp.collectable = false;
									action_obj[i].trigger_id = temp;
								}
							}
						} else if (trigger == 45) {
							if (exists_action_obj(2)) {
								temp = instance_create_layer(action_obj[2].x+16, action_obj[2].y+16, "Player", Hamjung01);
								temp.sprite_index = sprPlayerFall;
								temp.image_speed = 0;
								temp.image_xscale = 0;
								temp.image_yscale = 0;
								action_obj[2].trigger_id = temp;
							}
						}
					}
					
					for(i=1; i<4; i+=1) {
						if (exists_action_obj(i)) {
							if (action_obj[i].trigger_id != -1 && instance_exists(action_obj[i].trigger_id)) {
								action_obj[i].trigger_id.image_xscale += 1/16;
								action_obj[i].trigger_id.image_yscale = action_obj[i].trigger_id.image_xscale;
								if (patt == 48) {
									if (trigger == 44) {
										action_obj[i].trigger = 51;
										action_obj[i].trigger_id.collectable = true;
									} else if (trigger == 45) {
										if (!instance_exists(player)) {
											instance_create_depth(action_obj[i].trigger_id.x, action_obj[i].trigger_id.y, -2, player);
											with(action_obj[i].trigger_id) instance_destroy();
											action_obj[i].trigger_id = -1;
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
}