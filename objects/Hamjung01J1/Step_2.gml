var temp;

if (!instance_exists(player)) {
    collected = false; holding = -1; trigger_id = -1; exit;
}

if (mouse_check_button_pressed(mb_left)) {
    if (!collected) {
        if (!firstTouch) {
            var i, cam = view_camera[0];
            
            if (holding == -1) {
                for(i=0; i<NUM_ITEM; i+=1) {
                    if (point_distance(mouse_x, mouse_y, camera_get_view_x(cam) + 96 + 112*i, camera_get_view_y(cam) + 528) <= 48) {
                        if (items[holding] != -1) holding = i;
                        break;
                    }
                }
            } else {
                if (trigger_id != -1 && trigger_id.trigger_id == -1) {
                    var xx, yy;
                    
                    xx = trigger_id.x + 16*trigger_id.image_xscale;
                    yy = trigger_id.y + 16*trigger_id.image_yscale;
                    
                    if (point_distance(xx, yy, player.x, player.y) < 96 - 56 * (trigger_id.trigger >= 60 && trigger_id.trigger < 70)) {
						if (trigger_id.trigger_activate(items[holding], items_spr[holding])) {
							items[holding] = -1;
                            items_spr[holding] = -1;
						}
                    }
                } else if (items[holding] == Hamjung01J7) {
					var __holding = -1;
					
					for(i=0; i<NUM_ITEM; i+=1) {
	                    if (point_distance(mouse_x, mouse_y, camera_get_view_x(cam) + 96 + 112*i, camera_get_view_y(cam) + 528) <= 48) {
	                        __holding = i;
	                        break;
	                    }
	                }
					if (__holding != -1 && items[__holding] == Hamjung01J3) {
						audio_play_sound(sndChark, 0, false, world.sound_vol);
                        items_spr[__holding] = sprHamjung01J8;
						items[holding] = -1;
                        items_spr[holding] = -1;
					}
				}
                holding = -1;
            }
        }
    }
}

collected = false;
trigger_id = -1;