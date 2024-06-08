if (!instance_exists(player)) exit;

var i, temp;

patt += 1;

if (patt == 150) {
    for(i=0; i<24; i+=1) {
        temp = instance_create_depth(hx1, hy1, -4, fruit);
        temp.speed = 12;
        temp.direction = 15*i;
    }
} else if (patt == 175) {
    for(i=0; i<24; i+=1) {
        temp = instance_create_depth(hx2, hy2, -4, fruit);
        temp.sprite_index = sprFruitO;
        temp.speed = 12;
        temp.direction = 15*i + point_direction(hx2, hy2, player.x, player.y);
    }
} else if (patt == 196) {
    for(i=0; i<24; i+=1) {
        temp = instance_create_depth(hx1, hy1, -4, fruit);
        temp.speed = 12;
        temp.direction = 15*i;
    }
} else if (patt == 220) {
    for(i=0; i<24; i+=1) {
        temp = instance_create_depth(hx2, hy2, -4, fruit);
        temp.sprite_index = sprFruitO;
        temp.speed = 12;
        temp.direction = 15*i + point_direction(hx2, hy2, player.x, player.y);
    }
} else if (patt == 242) {
    instance_create_depth(400, 480, 0, Boss04F2);
} else if (patt == 288) {
    with(Boss04F2) {
        for(i=0; i<ds_list_size(fruit_list); i+=1) {
            temp = ds_list_find_value(fruit_list, i);
            temp.speed = point_distance(x, y, temp.x, temp.y)/12.5;
            temp.direction = point_direction(x, y, temp.x, temp.y);
        }
        instance_destroy();
    }
} else if (patt == 334) {
    for(i=0; i<24; i+=1) {
        temp = instance_create_depth(0, 0, -4, fruit);
        temp.speed = 12;
        temp.direction = 15*i;
    }
} else if (patt == 351) {
    for(i=0; i<24; i+=1) {
        temp = instance_create_depth(800, 0, -4, fruit);
        temp.sprite_index = sprFruitY;
        temp.speed = 12;
        temp.direction = 15*i;
    }
} else if (patt == 378) {
    for(i=0; i<24; i+=1) {
        temp = instance_create_depth(0, 608, -4, fruit);
        temp.sprite_index = sprFruitB;
        temp.speed = 12;
        temp.direction = 15*i;
    }
} else if (patt == 395) {
    for(i=0; i<24; i+=1) {
        temp = instance_create_depth(800, 608, -4, fruit);
        temp.sprite_index = sprFruitG;
        temp.speed = 12;
        temp.direction = 15*i;
    }
} else if (patt == 424) {
    instance_create_depth(400, 304, 0, Boss04F2);
} else if (patt == 470) {
    with(Boss04F2) {
		var temp2;
		
        for(i=0; i<ds_list_size(fruit_list); i+=1) {
            temp = ds_list_find_value(fruit_list, i);
            temp.speed = 8;
            temp.direction = 0;
            for(j=0; j<5; j+=1) {
                temp2 = instance_create_depth(temp.x, temp.y, -4, fruit);
                temp2.sprite_index = temp.sprite_index;
				if (temp2.sprite_index == sprFruitG) temp2.depth -= 1;
                temp2.image_xscale = temp.image_xscale;
                temp2.image_yscale = temp.image_yscale;
                temp2.speed = 8;
                temp2.direction = 60*(j+1);
            }
        }
        instance_destroy();
    }
} else if (patt == 500) {
    i = 0;
    while(16+64*i < 608) {
        temp = instance_create_depth(0, 16+64*i, -4, fruit);
        temp.hspeed = 8;
        i += 1;
    }
} else if (patt == 525) {
    i = 0;
    while(48+64*i < 608) {
        temp = instance_create_depth(800, 48+64*i, -4, fruit);
        temp.sprite_index = sprFruitY;
        temp.hspeed = -8;
        i += 1;
    }
} else if (patt == 545) {
    i = 0;
    while(16+64*i < 800) {
        temp = instance_create_depth(16+64*i, 0, -4, fruit);
        temp.sprite_index = sprFruitG;
        temp.vspeed = 8;
        i += 1;
    }
} else if (patt == 571) {
    i = 0;
    while(48+64*i < 800) {
        temp = instance_create_depth(48+64*i, 608, -4, fruit);
        temp.sprite_index = sprFruitB;
        temp.vspeed = -8;
        i += 1;
    }
} else if (patt == 602) {
    var lx, ly, j, k, kk, xx, yy;
    
    temp = instance_create_depth(400, 128, 0, Boss04F2);
    
    lx = ds_list_create();
    ly = ds_list_create();
    ds_list_add(lx, 0); ds_list_add(ly, 128-200*sqrt(3));
    ds_list_add(lx, 200); ds_list_add(ly, 128-200*sqrt(3));
    ds_list_add(lx, 400); ds_list_add(ly, 128-200*sqrt(3));
    ds_list_add(lx, 600); ds_list_add(ly, 128-200*sqrt(3));
    ds_list_add(lx, 800); ds_list_add(ly, 128-200*sqrt(3));
    ds_list_add(lx, 100); ds_list_add(ly, 128-100*sqrt(3));
    ds_list_add(lx, 300); ds_list_add(ly, 128-100*sqrt(3));
    ds_list_add(lx, 500); ds_list_add(ly, 128-100*sqrt(3));
    ds_list_add(lx, 700); ds_list_add(ly, 128-100*sqrt(3));
    ds_list_add(lx, 0); ds_list_add(ly, 128);
    ds_list_add(lx, 200); ds_list_add(ly, 128);
    ds_list_add(lx, 400); ds_list_add(ly, 128);
    ds_list_add(lx, 600); ds_list_add(ly, 128);
    ds_list_add(lx, 800); ds_list_add(ly, 128);
    ds_list_add(lx, 100); ds_list_add(ly, 128+100*sqrt(3));
    ds_list_add(lx, 300); ds_list_add(ly, 128+100*sqrt(3));
    ds_list_add(lx, 500); ds_list_add(ly, 128+100*sqrt(3));
    ds_list_add(lx, 700); ds_list_add(ly, 128+100*sqrt(3));
    ds_list_add(lx, 0); ds_list_add(ly, 128+200*sqrt(3));
    ds_list_add(lx, 200); ds_list_add(ly, 128+200*sqrt(3));
    ds_list_add(lx, 400); ds_list_add(ly, 128+200*sqrt(3));
    ds_list_add(lx, 600); ds_list_add(ly, 128+200*sqrt(3));
    ds_list_add(lx, 800); ds_list_add(ly, 128+200*sqrt(3));
    ds_list_add(lx, 100); ds_list_add(ly, 128+300*sqrt(3));
    ds_list_add(lx, 300); ds_list_add(ly, 128+300*sqrt(3));
    ds_list_add(lx, 500); ds_list_add(ly, 128+300*sqrt(3));
    ds_list_add(lx, 700); ds_list_add(ly, 128+300*sqrt(3));
    ds_list_add(lx, 0); ds_list_add(ly, 128+400*sqrt(3));
    ds_list_add(lx, 200); ds_list_add(ly, 128+400*sqrt(3));
    ds_list_add(lx, 400); ds_list_add(ly, 128+400*sqrt(3));
    ds_list_add(lx, 600); ds_list_add(ly, 128+400*sqrt(3));
    ds_list_add(lx, 800); ds_list_add(ly, 128+400*sqrt(3));
    
    for(i=0; i<ds_list_size(lx); i+=1) {
        for(j=0; j<10; j+=1) {
            for(k=0; k<6; k+=1) {
                kk = k + 1; if (kk >= 6) kk = 0;
                xx = ds_list_find_value(lx, i) + (ds_list_find_value(vertex_x, k)*(10-j)
                    + ds_list_find_value(vertex_x, kk)*j)/10;
                yy = ds_list_find_value(ly, i) + (ds_list_find_value(vertex_y, k)*(10-j)
                    + ds_list_find_value(vertex_y, kk)*j)/10;
                instance_create_depth(xx, yy, -2, Boss04F3);
            }
        }
    }
    
    ds_list_destroy(lx);
    ds_list_destroy(ly);
} else if (patt == 650) {
    with (Boss04F2) patt += 1;
} else if (patt == 667) {
    with(Boss04F2) patt += 1;
    with(Boss04F3) instance_destroy();
} else if (patt == 834) {
	if (global.practice == 2) {
		with(player) { instance_destroy(); }
		with(world) {
			warn = 0;
			hp_before = -1;
			var_temp = 0;
			audio_stop_channel(1);
			audio_stop_channel(2);
			music_speed = 1;
			music_sp = 1;
			audio_resume_sound(Instance);
		}
		room_goto(Stage04Bs);
		exit;
	}
	
    instance_create_depth(0, 0, -100, light);
    if (layer_exists("Background")) {
		layer_background_sprite(layer_background_get_id(layer_get_id("Background")), back04Bs6);
	}
	with(block) sprite_index = block04Bs7;
	
    image_index = 1;
    
    if (instance_exists(player)) {
		y = 608-y;
		image_yscale *= -1;
		with(objTime1) y = 608-y;
		
		with(player) {
			var temp = jump_left;
	        flip_grav();
			jump_left = temp;
	    }
		
        fruit1 = instance_create_depth(0, 0, -2, Boss04F5);
        fruit1.sprite_index = sprFruit;
        fruit1.image_xscale = 2; fruit1.image_yscale = 2;
        fruit1.speed = 6;
        fruit1.direction = point_direction(0, 0, player.x, player.y);
        
        fruit2 = instance_create_depth(800, 0, -2, Boss04F5);
        fruit2.sprite_index = sprFruitY;
        fruit2.image_xscale = 2; fruit2.image_yscale = 2;
        fruit2.speed = 6;
        fruit2.direction = point_direction(800, 0, player.x, player.y);
        
        fruit3 = instance_create_depth(800, 608, -2, Boss04F5);
        fruit3.sprite_index = sprFruitB;
        fruit3.image_xscale = 2; fruit3.image_yscale = 2;
        fruit3.speed = 6;
        fruit3.direction = point_direction(800, 608, player.x, player.y);
        
        fruit4 = instance_create_depth(0, 608, -2, Boss04F5);
        fruit4.sprite_index = sprFruitG;
        fruit4.image_xscale = 2; fruit4.image_yscale = 2;
        fruit4.speed = 6;
        fruit4.direction = point_direction(0, 608, player.x, player.y);
    }
} else if (patt == 856) {
    with(fruit1) event_perform(ev_alarm, 0);
} else if (patt == 901) {
    with(fruit2) event_perform(ev_alarm, 0);
} else if (patt == 947) {
    with(fruit3) event_perform(ev_alarm, 0);
} else if (patt == 988) {
    with(fruit4) event_perform(ev_alarm, 0);
} else if (patt == 1038) {
    with(fruit1) event_perform(ev_alarm, 0);
    with(fruit2) event_perform(ev_alarm, 0);
} else if (patt == 1084) {
    with(fruit3) event_perform(ev_alarm, 0);
    with(fruit4) event_perform(ev_alarm, 0);
} else if (patt == 1129) {
    with(fruit1) event_perform(ev_alarm, 0);
    with(fruit3) event_perform(ev_alarm, 0);
} else if (patt == 1174) {
    with(fruit2) {patt = -2; event_perform(ev_alarm, 0);}
    with(fruit4) {patt = -2; event_perform(ev_alarm, 0);}
} else if (patt == 1209) {
    if (instance_exists(player)) {		
        with(fruit1) {direction = point_direction(x, y, player.x, player.y);}
        with(fruit2) {direction = point_direction(x, y, player.x, player.y);}
        with(fruit3) {direction = point_direction(x, y, player.x, player.y);}
        with(fruit4) {direction = point_direction(x, y, player.x, player.y);}
    }
} else if (patt == 1220) {
    with(fruit1) event_perform(ev_alarm, 0);
    with(fruit2) event_perform(ev_alarm, 0);
    with(fruit3) event_perform(ev_alarm, 0);
} else if (patt == 1265) {
    with(fruit1) event_perform(ev_alarm, 0);
    with(fruit2) event_perform(ev_alarm, 0);
    with(fruit4) event_perform(ev_alarm, 0);
} else if (patt == 1311) {
    with(fruit1) event_perform(ev_alarm, 0);
    with(fruit3) event_perform(ev_alarm, 0);
    with(fruit4) event_perform(ev_alarm, 0);
} else if (patt == 1356) {
    with(fruit2) event_perform(ev_alarm, 0);
    with(fruit3) event_perform(ev_alarm, 0);
    with(fruit4) event_perform(ev_alarm, 0);
} else if (patt == 1401) {
    with(fruit1) event_perform(ev_alarm, 0);
    with(fruit2) event_perform(ev_alarm, 0);
    with(fruit3) event_perform(ev_alarm, 0);
    with(fruit4) event_perform(ev_alarm, 0);
} else if (patt == 1447) {
    with(fruit1) event_perform(ev_alarm, 0);
    with(fruit2) event_perform(ev_alarm, 0);
    with(fruit3) event_perform(ev_alarm, 0);
    with(fruit4) event_perform(ev_alarm, 0);
} else if (patt == 1490) {
    with(fruit1) event_perform(ev_alarm, 0);
    with(fruit2) event_perform(ev_alarm, 0);
    with(fruit3) event_perform(ev_alarm, 0);
    with(fruit4) event_perform(ev_alarm, 0);
} else if (patt == 1538) {
    with(fruit1) {patt = -3; event_perform(ev_alarm, 0);}
    with(fruit2) {patt = -3; event_perform(ev_alarm, 0);}
    with(fruit3) {patt = -3; event_perform(ev_alarm, 0);}
    with(fruit4) {patt = -3; event_perform(ev_alarm, 0);}
} else if (patt == 1583) {
    instance_create_depth(0, 0, -100, light);
	
	y = 608-y;
	image_yscale *= -1;
	with(objTime1) y = 608-y;
		
	with(player) {
		var temp = jump_left;
	    flip_grav();
		jump_left = temp;
	}
	
    with(fruit1) {direction = point_direction(x, y, 0, 0); as = 0.8;}
    with(fruit2) {direction = point_direction(x, y, 800, 0); as = 0.8;}
    with(fruit3) {direction = point_direction(x, y, 800, 608); as = -0.8;}
    with(fruit4) {direction = point_direction(x, y, 0, 608); as = -0.8;}
    
    with(fruit1) event_perform(ev_alarm, 0);
} else if (patt == 1629) {
    with(fruit2) event_perform(ev_alarm, 0);
} else if (patt == 1674) {
    with(fruit3) event_perform(ev_alarm, 0);
} else if (patt == 1720) {
    with(fruit4) event_perform(ev_alarm, 0);
} else if (patt == 1765) {
    with(fruit1) event_perform(ev_alarm, 0);
    with(fruit2) event_perform(ev_alarm, 0);
} else if (patt == 1811) {
    with(fruit3) event_perform(ev_alarm, 0);
    with(fruit4) event_perform(ev_alarm, 0);
} else if (patt == 1856) {
    with(fruit1) event_perform(ev_alarm, 0);
    with(fruit3) event_perform(ev_alarm, 0);
} else if (patt == 1899) {
    with(fruit2) {patt = -2; event_perform(ev_alarm, 0);}
    with(fruit4) {patt = -2; event_perform(ev_alarm, 0);}
} else if (patt == 1947) {
    with(fruit1) event_perform(ev_alarm, 0);
    with(fruit4) event_perform(ev_alarm, 0);
} else if (patt == 1992) {
    with(fruit2) event_perform(ev_alarm, 0);
    with(fruit3) event_perform(ev_alarm, 0);
} else if (patt == 2038) {
    with(fruit1) event_perform(ev_alarm, 0);
    with(fruit2) event_perform(ev_alarm, 0);
    with(fruit3) event_perform(ev_alarm, 0);
} else if (patt == 2083) {
    with(fruit1) event_perform(ev_alarm, 0);
    with(fruit2) event_perform(ev_alarm, 0);
    with(fruit4) event_perform(ev_alarm, 0);
} else if (patt == 2128) {
    with(fruit1) event_perform(ev_alarm, 0);
    with(fruit3) event_perform(ev_alarm, 0);
    with(fruit4) event_perform(ev_alarm, 0);
} else if (patt == 2173) {
    with(fruit2) event_perform(ev_alarm, 0);
    with(fruit3) event_perform(ev_alarm, 0);
    with(fruit4) event_perform(ev_alarm, 0);
} else if (patt == 2220) {
    with(fruit1) event_perform(ev_alarm, 0);
    with(fruit2) event_perform(ev_alarm, 0);
    with(fruit3) event_perform(ev_alarm, 0);
    with(fruit4) event_perform(ev_alarm, 0);
} else if (patt == 2265) {
    with(fruit1) {
        for(i=0; i<16; i+=1) {
            temp = instance_create_depth(x, y, -4, fruit);
            temp.sprite_index = sprite_index;
            temp.speed = 8;
            temp.direction = 22.5*i;
        }
        instance_destroy();
    }
    with(fruit2) {
        for(i=0; i<16; i+=1) {
            temp = instance_create_depth(x, y, -4, fruit);
            temp.sprite_index = sprite_index;
            temp.speed = 8;
            temp.direction = 22.5*i;
        }
        instance_destroy();
    }
    with(fruit3) {
        for(i=0; i<16; i+=1) {
            temp = instance_create_depth(x, y, -4, fruit);
            temp.sprite_index = sprite_index;
            temp.speed = 8;
            temp.direction = 22.5*i;
        }
        instance_destroy();
    }
    with(fruit4) {
        for(i=0; i<16; i+=1) {
            temp = instance_create_depth(x, y, -4, fruit);
            temp.sprite_index = sprite_index;
            temp.speed = 8;
            temp.direction = 22.5*i;
        }
        instance_destroy();
    }
} else if (patt == 2311) {
    with(fruit) {
        speed = 16;
        direction = point_direction(player.x, player.y, x, y);
    }
}

if (world.curMusic = global.contrary
	and abs(audio_sound_get_track_position(world.Instance)-0.7-patt/50) > 0.1) {
	audio_sound_set_track_position(world.Instance, 0.7+patt/50);
}