if (!instance_exists(player)) {
    alarm[0] = 0; alarm[1] = 0; exit;
}

var i, ii, j, temp, xx, yy;

patt += 1;

if (patt == 94) {
	with(player) {
		audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
		max_hspd = 6;
	}
	
    for(i=0; i<ds_list_size(star_x); i+=1) {
        ii = i+1;
        if (ii == ds_list_size(star_x)) ii = 0;
        
        for(j=0; j<12; j+=1) {
            xx = (ds_list_find_value(star_x, i)*(12-j)+ds_list_find_value(star_x, ii)*j)/12;
            yy = (ds_list_find_value(star_y, i)*(12-j)+ds_list_find_value(star_y, ii)*j)/12;
            temp = instance_create_depth(x, y, -4, fruit);
            temp.sprite_index = sprFruit;
            temp.speed = sqrt(xx*xx+yy*yy)*1/10;
            temp.direction = point_direction(0, 0, xx, yy)-10;
        }
    }
    
    temp = instance_create_depth(mx, my, -2, Boss04F6);
    temp.sprite_index = sprFruitC;
    temp.vspeed = 0.5;
} else if (patt == 108) {
    for(i=0; i<ds_list_size(star_x); i+=1) {
        ii = i+1;
        if (ii == ds_list_size(star_x)) ii = 0;
        
        for(j=0; j<12; j+=1) {
            xx = (ds_list_find_value(star_x, i)*(12-j)+ds_list_find_value(star_x, ii)*j)/12;
            yy = (ds_list_find_value(star_y, i)*(12-j)+ds_list_find_value(star_y, ii)*j)/12;
            temp = instance_create_depth(hx, hy, -4, fruit);
            temp.sprite_index = sprFruitW;
            temp.speed = sqrt(xx*xx+yy*yy)*1/10;
            temp.direction = point_direction(0, 0, xx, yy)+10;
        }
    }
} else if (patt == 125) {
    for(i=0; i<ds_list_size(star_x); i+=1) {
        ii = i+1;
        if (ii == ds_list_size(star_x)) ii = 0;
        
        for(j=0; j<12; j+=1) {
            xx = (ds_list_find_value(star_x, i)*(12-j)+ds_list_find_value(star_x, ii)*j)/12;
            yy = (ds_list_find_value(star_y, i)*(12-j)+ds_list_find_value(star_y, ii)*j)/12;
            temp = instance_create_depth(x, y, -4, fruit);
            temp.sprite_index = sprFruit;
            temp.speed = sqrt(xx*xx+yy*yy)*1/10;
            temp.direction = point_direction(0, 0, xx, yy)-10;
        }
    }
} else if (patt == 140) {
    for(i=0; i<ds_list_size(star_x); i+=1) {
        ii = i+1;
        if (ii == ds_list_size(star_x)) ii = 0;
        
        for(j=0; j<12; j+=1) {
            xx = (ds_list_find_value(star_x, i)*(12-j)+ds_list_find_value(star_x, ii)*j)/12;
            yy = (ds_list_find_value(star_y, i)*(12-j)+ds_list_find_value(star_y, ii)*j)/12;
            temp = instance_create_depth(hx, hy, -4, fruit);
            temp.sprite_index = sprFruitG;
            temp.speed = sqrt(xx*xx+yy*yy)*1/10;
            temp.direction = point_direction(0, 0, xx, yy)+10;
        }
    }
} else if (patt == 155) {
    with(Boss04F6) event_perform(ev_alarm, 1);
} else if (patt == 260) {
    for(i=0; i<ds_list_size(square_x); i+=1) {
        ii = i+1;
        if (ii == ds_list_size(square_x)) ii = 0;
        
        for(j=0; j<11; j+=1) {
            xx = (ds_list_find_value(square_x, i)*(11-j)+ds_list_find_value(square_x, ii)*j)/11;
            yy = (ds_list_find_value(square_y, i)*(11-j)+ds_list_find_value(square_y, ii)*j)/11;
            temp = instance_create_depth(mx, my, -4, fruit);
            temp.sprite_index = sprFruit;
            temp.speed = sqrt(xx*xx+yy*yy)*1/10;
            temp.direction = point_direction(0, 0, xx, yy)-25;
        }
    }
} else if (patt == 275) {
    for(i=0; i<ds_list_size(square_x); i+=1) {
        ii = i+1;
        if (ii == ds_list_size(square_x)) ii = 0;
        
        for(j=0; j<11; j+=1) {
            xx = (ds_list_find_value(square_x, i)*(11-j)+ds_list_find_value(square_x, ii)*j)/11;
            yy = (ds_list_find_value(square_y, i)*(11-j)+ds_list_find_value(square_y, ii)*j)/11;
            temp = instance_create_depth(mx, my, -4, fruit);
            temp.sprite_index = sprFruitG;
            temp.speed = sqrt(xx*xx+yy*yy)*1/10;
            temp.direction = point_direction(0, 0, xx, yy)+25;
        }
    }
} else if (patt == 320) {
    for(i=0; i<24; i+=1) {
        temp = instance_create_depth(0, 0, -4, fruit);
        temp.sprite_index = choose(sprFruit, sprFruitO, sprFruitY, sprFruitG, sprFruitB);
        temp.speed = 6;
        temp.direction = 15*i;
        temp.gravity = 0.2;
        temp.gravity_direction = 15*i;
    }
} else if (patt == 333) {
    for(i=0; i<24; i+=1) {
        temp = instance_create_depth(800, 0, -4, fruit);
        temp.sprite_index = choose(sprFruit, sprFruitO, sprFruitY, sprFruitG, sprFruitB);
        temp.speed = 6;
        temp.direction = 15*i;
        temp.gravity = 0.2;
        temp.gravity_direction = 15*i;
    }
} else if (patt == 358) {
    for(i=0; i<24; i+=1) {
        temp = instance_create_depth(0, 608, -4, fruit);
        temp.sprite_index = choose(sprFruit, sprFruitO, sprFruitY, sprFruitG, sprFruitB);
        temp.speed = 6;
        temp.direction = 15*i;
        temp.gravity = 0.2;
        temp.gravity_direction = 15*i;
    }
} else if (patt == 372) {
    for(i=0; i<24; i+=1) {
        temp = instance_create_depth(800, 608, -4, fruit);
        temp.sprite_index = choose(sprFruit, sprFruitO, sprFruitY, sprFruitG, sprFruitB);
        temp.speed = 6;
        temp.direction = 15*i;
        temp.gravity = 0.2;
        temp.gravity_direction = 15*i;
    }
} else if (patt == 388) {
    for(i=0; i<10; i+=1) {
        temp = instance_create_depth(mx, my, -4, fruit);
        temp.sprite_index = sprFruitBw;
        temp.speed = i+5;
        temp.direction = point_direction(mx, my, player.x, player.y);
        
        temp = instance_create_depth(mx, my, -4, fruit);
        temp.sprite_index = sprFruitW;
        temp.speed = i+5;
        temp.direction = point_direction(mx, my, player.x, player.y)+15;
        temp.as = -0.5;
        
        temp = instance_create_depth(mx, my, -4, fruit);
        temp.sprite_index = sprFruitW;
        temp.speed = i+5;
        temp.direction = point_direction(mx, my, player.x, player.y)-15;
        temp.as = 0.5;
    }
} else if (patt == 460) {
    with(Boss04F6) alarm[1] = 0;
} else if (patt == 493) {
    for(i=0; i<ds_list_size(star_x); i+=1) {
        ii = i+1;
        if (ii == ds_list_size(star_x)) ii = 0;
        
        for(j=0; j<12; j+=1) {
            xx = (ds_list_find_value(star_x, i)*(12-j)+ds_list_find_value(star_x, ii)*j)/12;
            yy = (ds_list_find_value(star_y, i)*(12-j)+ds_list_find_value(star_y, ii)*j)/12;
            temp = instance_create_depth(mx, my, -4, fruit);
            temp.sprite_index = sprFruit;
            temp.speed = sqrt(xx*xx+yy*yy)*1/6;
            temp.direction = point_direction(0, 0, xx, yy);
            temp.as = 0.8;
        }
    }
} else if (patt == 575) {
    for(i=0; i<ds_list_size(triangle_x); i+=1) {
        ii = i+1;
        if (ii == ds_list_size(triangle_x)) ii = 0;
        
        for(j=0; j<11; j+=1) {
            xx = (ds_list_find_value(triangle_x, i)*(11-j)+ds_list_find_value(triangle_x, ii)*j)/11;
            yy = (ds_list_find_value(triangle_y, i)*(11-j)+ds_list_find_value(triangle_y, ii)*j)/11;
            temp = instance_create_depth(x, y, -4, fruit);
            temp.sprite_index = sprFruit;
            temp.speed = sqrt(xx*xx+yy*yy)*1/10;
            temp.direction = point_direction(0, 0, xx, yy)-10;
        }
    }
} else if (patt == 588) {
    for(i=0; i<ds_list_size(square_x); i+=1) {
        ii = i+1;
        if (ii == ds_list_size(square_x)) ii = 0;
        
        for(j=0; j<11; j+=1) {
            xx = (ds_list_find_value(square_x, i)*(11-j)+ds_list_find_value(square_x, ii)*j)/11;
            yy = (ds_list_find_value(square_y, i)*(11-j)+ds_list_find_value(square_y, ii)*j)/11;
            temp = instance_create_depth(hx, hy, -4, fruit);
            temp.sprite_index = sprFruitW;
            temp.speed = sqrt(xx*xx+yy*yy)*1/10;
            temp.direction = point_direction(0, 0, xx, yy)+10;
        }
    }
} else if (patt == 605) {
    for(i=0; i<ds_list_size(pentagon_x); i+=1) {
        ii = i+1;
        if (ii == ds_list_size(pentagon_x)) ii = 0;
        
        for(j=0; j<11; j+=1) {
            xx = (ds_list_find_value(pentagon_x, i)*(11-j)+ds_list_find_value(pentagon_x, ii)*j)/11;
            yy = (ds_list_find_value(pentagon_y, i)*(11-j)+ds_list_find_value(pentagon_y, ii)*j)/11;
            temp = instance_create_depth(x, y, -4, fruit);
            temp.sprite_index = sprFruitGr;
            temp.speed = sqrt(xx*xx+yy*yy)*1/10;
            temp.direction = point_direction(0, 0, xx, yy)-10;
        }
    }
} else if (patt == 620) {
    for(i=0; i<ds_list_size(hexagon_x); i+=1) {
        ii = i+1;
        if (ii == ds_list_size(hexagon_x)) ii = 0;
        
        for(j=0; j<11; j+=1) {
            xx = (ds_list_find_value(hexagon_x, i)*(11-j)+ds_list_find_value(hexagon_x, ii)*j)/11;
            yy = (ds_list_find_value(hexagon_y, i)*(11-j)+ds_list_find_value(hexagon_y, ii)*j)/11;
            temp = instance_create_depth(hx, hy, -4, fruit);
            temp.sprite_index = sprFruitBw;
            temp.speed = sqrt(xx*xx+yy*yy)*1/10;
            temp.direction = point_direction(0, 0, xx, yy)+10;
        }
    }
} else if (patt == 635) {
    with(Boss04F6) event_perform(ev_alarm, 1);
    
    for(i=0; i<30; i+=1) {
        temp = instance_create_depth(400, 304, -4, fruit);
        temp.sprite_index = sprFruitW;
        temp.direction = 12*i;
        temp.speed = 10;
        temp.friction = 0.3;
    }
} else if (patt == 678) {
    for(i=0; i<30; i+=1) {
        temp = instance_create_depth(400, 304, -4, fruit);
        temp.sprite_index = choose(sprFruitW, sprFruitGr);
        temp.direction = 12*i-3;
        temp.speed = 9;
        temp.friction = 0.3;
    }
} else if (patt == 693) {
    for(i=0; i<30; i+=1) {
        temp = instance_create_depth(400, 304, -4, fruit);
        temp.sprite_index = choose(sprFruitGr, sprFruitBw);
        temp.direction = 12*i-6;
        temp.speed = 8;
        temp.friction = 0.3;
    }
} else if (patt == 730) {
    for(i=0; i<30; i+=1) {
        temp = instance_create_depth(400, 304, -4, fruit);
        temp.sprite_index = sprFruitBw;
        temp.direction = 12*i-9;
        temp.speed = 6.7;
        temp.friction = 0.3;
    }
} else if (patt == 755) {
    with(fruit) {
        if (sprite_index != sprFruitC) sprite_index = sprFruitBw;
        image_speed = 0;
    }
} else if (patt == 784) {
    with(fruit) {
        if (sprite_index != sprFruitC) {
            friction = 0;
            speed = 12; gravity = 0.2;
            direction = point_direction(x, y, 400, 304);
            gravity_direction = 270;
        }
    }
} else if (patt == 815) {
    with(Boss04F6) dist = true;
} else if (patt == 874) {
    with(fruit) {
        sprite_index = sprFruitBw;
        speed = 1; as = 0; gravity = 0;
        direction = point_direction(x, y, player.x, player.y);
    }
} else if (patt == 994) {
    with(fruit) {
        speed = 16;
        direction = point_direction(player.x, player.y, x, y);
    }
} else if (patt == 1055) {
	if (global.practice == 4) {
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
	
    for(i=0; i<ds_list_size(square_x); i+=1) {
        ii = i+1;
        if (ii == ds_list_size(square_x)) ii = 0;
        
        for(j=0; j<10; j+=1) {
            xx = (ds_list_find_value(square_x, i)*(10-j)+ds_list_find_value(square_x, ii)*j)/10;
            yy = (ds_list_find_value(square_y, i)*(10-j)+ds_list_find_value(square_y, ii)*j)/10;
            temp = instance_create_depth(x, y, -2, Boss04F7);
            temp.sprite_index = sprFruit;
            temp.sp = sqrt(xx*xx+yy*yy)*1/10;
            temp.dir = point_direction(0, 0, xx, yy)+45;
            temp.as = 1;
            temp.alarm[0] = 800;
        }
    }
} else if (patt == 1069) {
    for(i=0; i<ds_list_size(square_x); i+=1) {
        ii = i+1;
        if (ii == ds_list_size(square_x)) ii = 0;
        
        for(j=0; j<10; j+=1) {
            xx = (ds_list_find_value(square_x, i)*(10-j)+ds_list_find_value(square_x, ii)*j)/10;
            yy = (ds_list_find_value(square_y, i)*(10-j)+ds_list_find_value(square_y, ii)*j)/10;
            temp = instance_create_depth(hx, hy, -2, Boss04F7);
            temp.sprite_index = sprFruitG;
            temp.sp = sqrt(xx*xx+yy*yy)*1/10;
            temp.dir = point_direction(0, 0, xx, yy)+45;
            temp.as = -1;
            temp.alarm[0] = 800;
        }
    }
} else if (patt == 1084) {
    for(i=0; i<ds_list_size(square_x); i+=1) {
        ii = i+1;
        if (ii == ds_list_size(square_x)) ii = 0;
        
        for(j=0; j<10; j+=1) {
            xx = (ds_list_find_value(square_x, i)*(10-j)+ds_list_find_value(square_x, ii)*j)/10;
            yy = (ds_list_find_value(square_y, i)*(10-j)+ds_list_find_value(square_y, ii)*j)/10;
            temp = instance_create_depth(x, y, -2, Boss04F7);
            temp.sprite_index = sprFruitB;
            temp.sp = sqrt(xx*xx+yy*yy)*1/10;
            temp.dir = point_direction(0, 0, xx, yy)+45;
            temp.as = 1;
            temp.alarm[0] = 800;
        }
    }
} else if (patt == 1100) {
    for(i=0; i<ds_list_size(square_x); i+=1) {
        ii = i+1;
        if (ii == ds_list_size(square_x)) ii = 0;
        
        for(j=0; j<10; j+=1) {
            xx = (ds_list_find_value(square_x, i)*(10-j)+ds_list_find_value(square_x, ii)*j)/10;
            yy = (ds_list_find_value(square_y, i)*(10-j)+ds_list_find_value(square_y, ii)*j)/10;
            temp = instance_create_depth(hx, hy, -2, Boss04F7);
            temp.sprite_index = sprFruitBw;
            temp.sp = sqrt(xx*xx+yy*yy)*1/10;
            temp.dir = point_direction(0, 0, xx, yy)+45;
            temp.as = -1;
            temp.alarm[0] = 800;
        }
    }
} else if (patt == 1115) {
	with(player) {
		audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
		max_hspd = 3;
		jump_height = [10, 9];
		grav_amount = 0.5;
	}
	
    alarm[0] = 3;
} else if (patt == 1122) {
    for(i=0; i<ds_list_size(triangle_x); i+=1) {
        ii = i+1;
        if (ii == ds_list_size(triangle_x)) ii = 0;
        
        for(j=0; j<10; j+=1) {
            xx = (ds_list_find_value(triangle_x, i)*(10-j)+ds_list_find_value(triangle_x, ii)*j)/10;
            yy = (ds_list_find_value(triangle_y, i)*(10-j)+ds_list_find_value(triangle_y, ii)*j)/10;
            temp = instance_create_depth(x, y, -2, Boss04F7);
            temp.sprite_index = sprFruit;
            temp.sp = -sqrt(xx*xx+yy*yy)*1/10;
            temp.dist = -temp.sp*200;
            temp.dir = point_direction(0, 0, xx, yy)+45;
            temp.as = 1;
            temp.alarm[0] = 1600;
            
            temp.x = temp.center_x + temp.dist*cos(degtorad(temp.dir));
            temp.y = temp.center_y - temp.dist*sin(degtorad(temp.dir));
        }
    }
    
    for(i=0; i<ds_list_size(square_x); i+=1) {
        ii = i+1;
        if (ii == ds_list_size(square_x)) ii = 0;
        
        for(j=0; j<10; j+=1) {
            xx = (ds_list_find_value(square_x, i)*(10-j)+ds_list_find_value(square_x, ii)*j)/10;
            yy = (ds_list_find_value(square_y, i)*(10-j)+ds_list_find_value(square_y, ii)*j)/10;
            temp = instance_create_depth(hx, hy, -2, Boss04F7);
            temp.sprite_index = sprFruitG;
            temp.sp = -sqrt(xx*xx+yy*yy)*1/10;
            temp.dist = -temp.sp*215;
            temp.dir = point_direction(0, 0, xx, yy)+45;
            temp.as = 1;
            temp.alarm[0] = 1600;
            
            temp.x = temp.center_x + temp.dist*cos(degtorad(temp.dir));
            temp.y = temp.center_y - temp.dist*sin(degtorad(temp.dir));
        }
    }
    
    for(i=0; i<ds_list_size(pentagon_x); i+=1) {
        ii = i+1;
        if (ii == ds_list_size(pentagon_x)) ii = 0;
        
        for(j=0; j<10; j+=1) {
            xx = (ds_list_find_value(pentagon_x, i)*(10-j)+ds_list_find_value(pentagon_x, ii)*j)/10;
            yy = (ds_list_find_value(pentagon_y, i)*(10-j)+ds_list_find_value(pentagon_y, ii)*j)/10;
            temp = instance_create_depth(x, y, -2, Boss04F7);
            temp.sprite_index = sprFruitB;
            temp.sp = -sqrt(xx*xx+yy*yy)*1/10;
            temp.dist = -temp.sp*230;
            temp.dir = point_direction(0, 0, xx, yy)+45;
            temp.as = 1;
            temp.alarm[0] = 1600;
            
            temp.x = temp.center_x + temp.dist*cos(degtorad(temp.dir));
            temp.y = temp.center_y - temp.dist*sin(degtorad(temp.dir));
        }
    }
} else if (patt == 1295) {
    alarm[0] = 0;
} else if (patt == 1380) {
    alarm[1] = 8;
} else if (patt == 1527) {
    alarm[1] = 0;
} else if (patt == 1593) {
    temp = instance_create_depth(hx, hy, -2, Boss04F8);
    temp.speed = 16;
    temp.direction = point_direction(hx, hy, player.x, player.y);
    with(temp) event_perform(ev_alarm, 0);
} else if (patt == 1648) {
    with(Boss04F8) sprite_index = sprFruitBw;
} else if (patt == 1865) {
    instance_create_depth(400, 304, -4, fruit);
} else if (patt == 1955) {
    with(fruit) temp_var = 1;
    
    with(fruit) {
        if (temp_var == 1) {
            for(i=0; i<4; i+=1) {
                temp = instance_create_depth(x, y, -4, fruit);
                temp.sprite_index = choose(sprFruit, sprFruitO, sprFruitY, sprFruitG,
                    sprFruitC, sprFruitB, sprFruitGr, sprFruitW, sprFruitBw);
                temp.speed = 4;
                temp.direction = 90*i;
            }
            instance_destroy();
        }
    }
} else if (patt == 1977) {
    with(fruit) temp_var = 1;
    
    with(fruit) {
        if (temp_var == 1) {
            for(i=0; i<8; i+=1) {
                temp = instance_create_depth(x, y, -4, fruit);
                temp.sprite_index = choose(sprFruit, sprFruitO, sprFruitY, sprFruitG,
                    sprFruitC, sprFruitB, sprFruitGr, sprFruitW, sprFruitBw);
                temp.speed = 4;
                temp.direction = 45*i;
            }
            instance_destroy();
        }
    }
} else if (patt == 2000) {
    with(fruit) temp_var = 1;
    
    with(fruit) {
        if (temp_var == 1) {
            for(i=0; i<8; i+=1) {
                temp = instance_create_depth(x, y, -4, fruit);
                temp.sprite_index = choose(sprFruit, sprFruitO, sprFruitY, sprFruitG,
                    sprFruitC, sprFruitB, sprFruitGr, sprFruitW, sprFruitBw);
                temp.speed = 8;
                temp.direction = 45*i;
            }
            instance_destroy();
        }
    }
} else if (patt == 2175) {
    for(i=0; i<60; i+=1) {
        temp = instance_create_depth(mx, my, -4, fruit);
        temp.sprite_index = choose(sprFruit, sprFruitO, sprFruitY, sprFruitG,
            sprFruitC, sprFruitB, sprFruitGr, sprFruitW, sprFruitBw);
        temp.speed = 1;
        temp.direction = 6*i;
        temp.gravity = 0.2;
        temp.gravity_direction = 6*i;
    }
}

if (world.curMusic = global.catastrophe
	and abs(audio_sound_get_track_position(world.Instance)-0.7-patt/50) > 0.1) {
	audio_sound_set_track_position(world.Instance, 0.7+patt/50);
}