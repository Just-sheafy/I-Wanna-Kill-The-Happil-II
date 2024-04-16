var i, xxx, yyy, tt, tt2;

time += 1;
if (!destroy) radius = 216 + 8*sin(degtorad(time*1.5));
else {
	destroy_time += 1;
	radius += destroy_time/10;
	if (destroy_time == 125) {
		with(num1) instance_destroy();
		with(num2) instance_destroy();
	}
}
angle -= angle_dir*0.85;
if (angle_dir == 1) tt = time-floor(time/720)*720;
else tt = (360-time)-floor((360-time)/720)*720;
tt2 = time-floor(time/500)*500;

if (tt <= 180 or tt >= 540) {
    xxx = room_width/2 + 320*power(abs(cos(degtorad(tt/2))), 1.5)*cos(degtorad(tt/2));
    yyy = room_height/2 - 320*power(abs(cos(degtorad(tt/2))), 1.5)*sin(degtorad(tt/2));
} else {
    xxx = room_width/2 + 320*power(abs(cos(degtorad(tt/2))), 1.5)*cos(degtorad(-tt/2));
    yyy = room_height/2 - 320*power(abs(cos(degtorad(tt/2))), 1.5)*sin(degtorad(-tt/2));
}

if (time <= 250) {
    i = power(time/250, 2);
    xx = xxx * i + ((angle_dir == 1)? room_width+180:-180)*(1-i);
    yy = yyy * i + (room_height/2)*(1-i);
} else {
    xx = xxx;
    yy = yyy;
}

x = xx;
y = yy;

if (tt2 >= 250 and tt2 <= 375) {
	if (enable) {
		if (destroy and instance_exists(Boss04_57)) {
			x = Boss04_57.xx;
			y = Boss04_57.yy;
		}
	    if (tt2 == 250) {
	        if (destroy or time == 250) {
				audio_play_sound(snd04_52, 0, false, world.sound_vol);
				with(Boss04_56) {
					col[0] = 1;
					col[1] = 0;
					col[2] = 0;
					col2[0] = 0;
					col2[1] = 0;
					col2[2] = 1;
					col3[0] = 0;
					col3[1] = 1;
					col3[2] = 0;
				}
			}
	        visible = true;
	        if (!destroy) { image_index = 0; image_speed = 20 / 50; }
			else {
				image_index = -1;
				image_speed = -20 / 50;
			}
	        image_alpha = 0;
	        scale = 50;
	    }
	    if (tt2 - floor(tt2/15)*15 == 0) audio_play_sound(snd04_53, 0, false, world.sound_vol);
	    if (tt2 < 375) {
	        if (!destroy) scale = 50-42*sqrt((tt2-250)/125);
			else scale = 2+18.5*sqrt((tt2-250)/125);
	    } else if (tt2 == 375) {
	        audio_play_sound(snd04_54, 0, false, world.sound_vol);
	        visible = false;
			if (destroy) instance_destroy();
		
			instance_create_depth(0, 0, -100, light);
		    zx = instance_create_depth(0, 0, 0, view_an3);
		    zx.asdf = 20;
		
			if (instance_exists(player)) {
				if ((destroy and point_distance(x, y, player.x, player.y) < 480) or point_distance(x, y, player.x, player.y) > 72) {
					if ((destroy or time == 375) and world.kill) {
						var temp, zx, cam_w, cam_h, cam = view_camera[0];
					
						with(player) kill_player(true);
				
						cam_w = camera_get_view_width(cam);
						cam_h = camera_get_view_height(cam);
				
						temp = instance_create_depth(0, 0, 0, view_break);
						temp.depth = -20;
				
						if (!surface_exists(temp.surf))
							temp.surf = surface_create(cam_w/4, cam_h/4);
				
						surface_set_target(temp.surf);
						draw_clear_alpha(c_black, 0);
						gpu_set_blendmode_ext(bm_one,bm_zero);
						if (surface_exists(application_surface))
							draw_surface_ext(application_surface,0,0,1/4,1/4,0,c_white,1);
				
						gpu_set_colorwriteenable(false,false,false,true);
						draw_set_alpha(1);
						draw_rectangle(0,0,cam_w/4,cam_h/4,false);
						gpu_set_colorwriteenable(true,true,true,true);
				
						gpu_set_blendmode(bm_normal);
						surface_reset_target();
				
						with(temp) event_user(0);
						zx = instance_create_depth(0, 0, 0, view_an3);
						zx.asdf = 20;
						zx.not_check = true;
					} else {
						with(player) kill_player();
					}
				}
			}
	    }
	}
} else {
	if (!instance_exists(player)) enable = false;
}

// background effect
with(Boss04_56) {
	t_spd = max(t_spd-0.1, 1);
	t2_spd = max(t2_spd-0.04, 1);
	number = max(number-0.12, 2);
	
	col[0] = max(col[0]-(1-0.52)/50, 0.52);
	col[1] = min(col[1]-(0-0.2)/50, 0.2);
	col[2] = min(col[2]-(0-0.1)/50, 0.1);
	col2[0] = max(col2[0]-(0-0.0)/50, 0.0);
	col2[1] = min(col2[1]-(0-0.2)/50, 0.2);
	col2[2] = max(col2[2]-(1-0.9)/50, 0.9);
	col3[0] = min(col3[0]-(0-0.2)/50, 0.2);
	col3[1] = max(col3[1]-(1-0.9)/50, 0.9);
	col3[2] = min(col3[2]-(0-0.45)/50, 0.45);
}