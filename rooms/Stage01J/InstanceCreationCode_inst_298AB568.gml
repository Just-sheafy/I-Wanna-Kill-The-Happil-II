var i;

patt = 0;
trigger = 20;
total = 32;
for(i=16; i<total; i+=1) {
	action_obj[i] = -1;
}

action_obj[1] = inst_6552CFAA;
action_obj[2] = inst_5807A7E8;
action_obj[3] = inst_1B86434B;
action_obj[4] = inst_2F6D28E4;
action_obj[5] = inst_3BBEA03F;
action_obj[6] = inst_3AC314B3;

ftn_temp_remove = function(i) {
	if (exists_action_obj(i)) {
		action_obj[i].y += 2;
		action_obj[i].image_yscale -= 1/16;
		if (action_obj[i].image_yscale <= 0) {
			with(action_obj[i]) instance_destroy();
			action_obj[i] = -1;
		}
	}
};

ftn_trigger = function(triggered, triggered_obj) {
	var i, temp;
	
	if (triggered) {
	    if (triggered_obj == Hamjung01J4) {
	        if (!exists_action_obj(0)) {
	            temp = instance_create_layer(480-28, 2336, "Player", block);
	            temp.image_xscale = 56 / 32;
	            action_obj[0] = temp;
	        }
			
			if (exists_action_obj(4)) action_obj[4].active = false;
	        return;
	    }
	}
    
	remove_action_obj(0);
	if (!is_action && exists_action_obj(4)) action_obj[4].active = true;
}

trigger_activate = function(obj_index, spr_index) {
	var temp;
	
	if (trigger == 21 || trigger == 22) {
		if (!is_action) {
			if (obj_index == Hamjung01J3) {
				audio_play_sound(sndChark, 0, false, world.sound_vol);
				if (spr_index != sprHamjung01J8)
					temp = instance_create_layer(528, 2384, "Player", obj_index);
				else temp = instance_create_layer(464, 2352, "Player", obj_index);
		        temp.sprite_index = spr_index;
		        trigger_id = temp;
				return true;
		    } else if (obj_index == Hamjung01J4) {
				audio_play_sound(sndChark, 0, false, world.sound_vol);
		        temp = instance_create_layer(480, 2352, "Player", obj_index);
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
	if (trigger_id != -1 && instance_exists(trigger_id) &&
		(trigger_id.object_index == Hamjung01J4 || trigger_id.sprite_index == sprHamjung01J8)) {
		// stop water to bottom
		if (exists_action_obj(5)) {
			is_action = true;
			action_obj[5].y += 2;
			action_obj[5].image_yscale -= 1/16;
			if (action_obj[5].image_yscale <= 0) {
				with(action_obj[5]) instance_destroy();
				action_obj[5] = -1;
			}
		} else if (exists_action_obj(6)) {
			is_action = true;
			action_obj[6].y += 4;
			action_obj[6].image_yscale -= 1/8;
			if (action_obj[6].image_yscale <= 0) {
				with(action_obj[6]) instance_destroy();
				action_obj[6] = -1;
				if (exists_action_obj(1)) action_obj[1].trigger = 1;
			}
		} else if (exists_action_obj(1)) {
			action_obj[1].trigger = 1;
			is_action = action_obj[1].is_action;
		}
		
		// FLOOD!!
		patt = min(patt+1, 16*11+1);
		is_action = (patt <= 16*11);
		
		if (exists_action_obj(2)) {
			if (action_obj[2].trigger != 32) action_obj[2].trigger = 31;
			action_obj[2].is_action = is_action;
		}
		if (exists_action_obj(3)) {
			if (action_obj[3].trigger != 44 && action_obj[3].trigger != 45) {
				if (action_obj[3].trigger == 40) action_obj[3].trigger = 42;
				else if (action_obj[3].trigger == 41) action_obj[3].trigger = 43;
			}
			action_obj[3].is_action = is_action;
		}
		
		if (patt <= 16) {
			if (patt == 1) {
				if (exists_action_obj(2) && action_obj[2].trigger_id != -1 && instance_exists(action_obj[2].trigger_id)) {
					temp = action_obj[2].trigger_id;
					if (temp.object_index == Hamjung01J5) {
						with(action_obj[2]) {
							trigger_id.collectable = false;
							action_obj[1] = trigger_id;
							trigger = 32;
							trigger_id = -1;
						}
					}
				}
			}
			
			if (!exists_action_obj(7)) {
				temp = instance_create_layer(608, 2368, "Player", water);
				temp.image_yscale = 0;
				action_obj[7] = temp;
			}
			if (!exists_action_obj(8)) {
				temp = instance_create_layer(640, 2368, "Player", water);
				temp.image_xscale = 4;
				temp.image_yscale = 0;
				action_obj[8] = temp;
			}
			
			action_obj[7].y -= 2;
			action_obj[7].image_yscale += 1/16;
			action_obj[8].y -= 2;
			action_obj[8].image_yscale += 1/16;
		} else if (patt <= 16 * 2) {
			if (!exists_action_obj(9)) {
				temp = instance_create_layer(192, 2336, "Player", water);
				temp.image_xscale = 8;
				temp.image_yscale = 0;
				action_obj[9] = temp;
			}
			
			action_obj[8].y -= 2;
			action_obj[8].image_yscale += 1/16;
			action_obj[9].y -= 2;
			action_obj[9].image_yscale += 1/16;
		} else if (patt <= 16 * 3) {
			if (!exists_action_obj(10)) {
				temp = instance_create_layer(448, 2304, "Player", water);
				temp.image_xscale = 3;
				temp.image_yscale = 0;
				action_obj[10] = temp;
			}
			
			action_obj[8].y -= 2;
			action_obj[8].image_yscale += 1/16;
			action_obj[9].y -= 2;
			action_obj[9].image_yscale += 1/16;
			action_obj[10].y -= 2;
			action_obj[10].image_yscale += 1/16;
		} else if (patt <= 16 * 4) {
			if (!exists_action_obj(11)) {
				temp = instance_create_layer(32, 2272, "Player", water);
				temp.image_xscale = 3.5;
				temp.image_yscale = 0;
				action_obj[11] = temp;
			}
			if (!exists_action_obj(12)) {
				temp = instance_create_layer(176, 2272, "Player", water);
				temp.image_xscale = 0.5;
				temp.image_yscale = 0;
				action_obj[12] = temp;
			}
			
			action_obj[8].y -= 2;
			action_obj[8].image_yscale += 1/16;
			action_obj[9].y -= 2;
			action_obj[9].image_yscale += 1/16;
			action_obj[10].y -= 2;
			action_obj[10].image_yscale += 1/16;
			action_obj[11].y -= 2;
			action_obj[11].image_yscale += 1/16;
			action_obj[12].y -= 2;
			action_obj[12].image_yscale += 1/16;
		} else if (patt <= 16 * 5) {
			if (!exists_action_obj(13)) {
				temp = instance_create_layer(32, 2240, "Player", water);
				temp.image_xscale = 9;
				temp.image_yscale = 0;
				action_obj[13] = temp;
			}
			if (!exists_action_obj(14)) {
				temp = instance_create_layer(544, 2240, "Player", water);
				temp.image_xscale = 3;
				temp.image_yscale = 0;
				action_obj[14] = temp;
			}
			
			action_obj[8].y -= 2;
			action_obj[8].image_yscale += 1/16;
			action_obj[10].y -= 2;
			action_obj[10].image_yscale += 1/16;
			action_obj[13].y -= 2;
			action_obj[13].image_yscale += 1/16;
			action_obj[14].y -= 2;
			action_obj[14].image_yscale += 1/16;
		} else if (patt <= 16 * 6) {
			if (!exists_action_obj(15)) {
				temp = instance_create_layer(320, 2208, "Player", water);
				temp.image_xscale = 3;
				temp.image_yscale = 0;
				action_obj[15] = temp;
			}
			
			if (!exists_action_obj(16)) {
				temp = instance_create_layer(448, 2208, "Player", water);
				temp.image_xscale = 2;
				temp.image_yscale = 0;
				action_obj[16] = temp;
			}
			
			action_obj[8].y -= 2;
			action_obj[8].image_yscale += 1/16;
			action_obj[13].y -= 2;
			action_obj[13].image_yscale += 1/16;
			action_obj[14].y -= 2;
			action_obj[14].image_yscale += 1/16;
			action_obj[15].y -= 2;
			action_obj[15].image_yscale += 1/16;
			action_obj[16].y -= 2;
			action_obj[16].image_yscale += 1/16;
			
			if (trigger == 21) {
				if (!exists_action_obj(17)) {
					temp = instance_create_layer(512, 2208, "Player", water);
					temp.image_yscale = 0;
					action_obj[17] = temp;
				}
				
				action_obj[17].y -= 2;
				action_obj[17].image_yscale += 1/16;
			}
		} else if (patt <= 16 * 7) {
			action_obj[13].y -= 2;
			action_obj[13].image_yscale += 1/16;
			action_obj[14].y -= 2;
			action_obj[14].image_yscale += 1/16;
			action_obj[15].y -= 2;
			action_obj[15].image_yscale += 1/16;
		} else if (patt <= 16 * 8) {
			if (!exists_action_obj(18)) {
				temp = instance_create_layer(352, 2144, "Player", water);
				temp.image_xscale = 2;
				temp.image_yscale = 0;
				action_obj[18] = temp;
			}
			if (!exists_action_obj(19)) {
				temp = instance_create_layer(544, 2144, "Player", water);
				temp.image_xscale = 2;
				temp.image_yscale = 0;
				action_obj[19] = temp;
			}
			
			action_obj[18].y -= 2;
			action_obj[18].image_yscale += 1/16;
			action_obj[19].y -= 2;
			action_obj[19].image_yscale += 1/16;
		} else if (patt <= 16 * 9) {
			if (!exists_action_obj(20)) {
				temp = instance_create_layer(608, 2112, "Player", water);
				temp.image_yscale = 0;
				action_obj[20] = temp;
			}
			
			action_obj[18].y -= 2;
			action_obj[18].image_yscale += 1/16;
			action_obj[19].y -= 2;
			action_obj[19].image_yscale += 1/16;
			action_obj[20].y -= 2;
			action_obj[20].image_yscale += 1/16;
		} else if (patt <= 16 * 10) {
			action_obj[18].y -= 2;
			action_obj[18].image_yscale += 1/16;
			action_obj[20].y -= 2;
			action_obj[20].image_yscale += 1/16;
		} else if (patt <= 16 * 11) {
			if (!exists_action_obj(21)) {
				temp = instance_create_layer(416, 2048, "Player", water);
				temp.image_xscale = 2;
				temp.image_yscale = 0;
				action_obj[21] = temp;
			}
			
			if (!exists_action_obj(22)) {
				temp = instance_create_layer(640, 2048, "Player", water);
				temp.image_xscale = 4;
				temp.image_yscale = 0;
				action_obj[22] = temp;
			}
			
			action_obj[18].y -= 2;
			action_obj[18].image_yscale += 1/16;
			action_obj[20].y -= 2;
			action_obj[20].image_yscale += 1/16;
			action_obj[21].y -= 2;
			action_obj[21].image_yscale += 1/16;
			action_obj[22].y -= 2;
			action_obj[22].image_yscale += 1/16;
			
			if (trigger == 22) {
				if (patt == 16 * 10 + 1) {
					if (exists_action_obj(3) && action_obj[3].trigger_id != -1 && instance_exists(action_obj[3].trigger_id)) {
						temp = action_obj[3].trigger_id;
						if (temp.object_index == Hamjung01J5) {
							with(action_obj[3]) {
								trigger_id.collectable = false;
								action_obj[0] = trigger_id;
								trigger = 44;
								trigger_id = -1;
							}
						}
					}
				}
				
				if (!exists_action_obj(23)) {
					temp = instance_create_layer(512, 2048, "Player", water);
					temp.image_yscale = 0;
					action_obj[23] = temp;
				}
				
				action_obj[23].y -= 2;
				action_obj[23].image_yscale += 1/16;
			}
		}
	} else {
		// give water to bottom
		if (exists_action_obj(5)) {
			if (action_obj[5].image_xscale < 2) {
				is_action = true;
				action_obj[5].image_xscale += 1/8;
			} else {
				if (exists_action_obj(6)) {
					if (action_obj[6].image_yscale < 5) {
						is_action = true;
						action_obj[6].image_yscale += 1/8;
						if (action_obj[6].image_yscale >= 5 && exists_action_obj(1)) {
							action_obj[1].trigger = 0;
						}
					} else if (exists_action_obj(1)) {
						action_obj[1].trigger = 0;
						is_action = action_obj[1].is_action;
					}
				} else {
					is_action = true;
					temp = instance_create_layer(512, 2368, "Player", water);
					temp.image_yscale = 1/8;
					action_obj[6] = temp;
				}
			}
		} else {
			is_action = true;
			temp = instance_create_layer(480, 2336, "Player", water);
			temp.image_xscale = 1/8;
			action_obj[5] = temp;
		}
		
		// !!DOOLF
		patt = max(patt-1, 0);
		is_action = (patt > 0);
		
		if (exists_action_obj(2)) {
			if (action_obj[2].trigger != 32) action_obj[2].trigger = 30 + is_action;
			action_obj[2].is_action = is_action;
		}
		if (exists_action_obj(3)) {
			if (action_obj[3].trigger != 44 && action_obj[3].trigger != 45) {
				if (action_obj[3].trigger == 42) action_obj[3].trigger = 40;
				else if (action_obj[3].trigger == 43) action_obj[3].trigger = 41;
			}
			action_obj[3].is_action = is_action;
		}
		
		if (patt > 16 * 10) {
			ftn_temp_remove(18);
			ftn_temp_remove(20);
			ftn_temp_remove(21);
			ftn_temp_remove(22);
			ftn_temp_remove(23);
		} else if (patt > 16 * 9) {
			ftn_temp_remove(18);
			ftn_temp_remove(20);
		} else if (patt > 16 * 8) {
			ftn_temp_remove(18);
			ftn_temp_remove(19);
			ftn_temp_remove(20);
		} else if (patt > 16 * 7) {
			ftn_temp_remove(18);
			ftn_temp_remove(19);
		} else if (patt > 16 * 6) {
			ftn_temp_remove(13);
			ftn_temp_remove(14);
			ftn_temp_remove(15);
		} else if (patt > 16 * 5) {
			ftn_temp_remove(8);
			ftn_temp_remove(13);
			ftn_temp_remove(14);
			ftn_temp_remove(15);
			ftn_temp_remove(16);
			ftn_temp_remove(17);
		} else if (patt > 16 * 4) {
			ftn_temp_remove(8);
			ftn_temp_remove(10);
			ftn_temp_remove(13);
			ftn_temp_remove(14);
		} else if (patt > 16 * 3) {
			ftn_temp_remove(8);
			ftn_temp_remove(9);
			ftn_temp_remove(10);
			ftn_temp_remove(11);
			ftn_temp_remove(12);
		} else if (patt > 16 * 2) {
			ftn_temp_remove(8);
			ftn_temp_remove(9);
			ftn_temp_remove(10);
		} else if (patt > 16 * 1) {
			ftn_temp_remove(8);
			ftn_temp_remove(9);
		} else if (patt > 16 * 0) {
			ftn_temp_remove(7);
			ftn_temp_remove(8);
		}
	}
}