buffer_x += hspd;
buffer_y += vspd;

x += round(buffer_x);
y += round(buffer_y);
buffer_x -= round(buffer_x);
buffer_y -= round(buffer_y);

if (danger == 2) {
	danger_time = min(danger_time+1, danger_time_max);
	if (danger_time == danger_time_max) {
		danger = 3; no_fall = 0;
		grav = 0.5;
		audio_play_sound(sndExplo, 0, false, world.sound_vol);
		instance_create_layer(x, y, "Player", Explo2);
	}
	image_blend = make_color_rgb(255, 255*min(1-danger_time/danger_time_max, 1), 255*min(1-danger_time/danger_time_max, 1));
}

if (!instance_exists(player)) is_riding = false;

if (is_riding) {
	hspd = 0; vspd = 0;
	/*
	if (hspd > 0) hspd = max(hspd-0.3, 0);
	else if (hspd < 0) hspd = min(hspd+0.3, 0);
	if (vspd > 0) vspd = max(vspd-0.3, 0);
	else if (vspd < 0) vspd = min(vspd+0.3, 0);
	*/
	no_fall = 25;
	if (danger == 1) danger = 2;
	if (danger == 3) {
		is_riding = false; no_fall = 0;
		with(player) { is_riding = false; hspd = 0; vspd = -4; grav = 0; }
		exit;
	}
	
    var dir_up = keyboard_check_direct(world.upKey);
	var dir_down = keyboard_check_direct(world.downKey);
	var dir_left = keyboard_check_direct(world.leftKey);
	var dir_right = keyboard_check_direct(world.rightKey);
	
    var h = dir_right;
    var v = dir_down;
    if (!h) h = -dir_left;
    if (!v) v = -dir_up;
	
	xsafe = x;
	ysafe = y;
    with(player) { sprite_index = sprPlayerIdle; image_speed = 1/5;}
    if (!frozen && instance_exists(player)) {
        x += 6*h;
        if (h != 0) {
			image_xscale = h;
			player.xscale = h;
		}
		
		var dir_x = sign(x - xsafe);
		var num = 0, diff = 0, epsilon = 0.001;
		
		player.x = x+image_xscale;
		while ((place_meeting(player.x, player.y, block) or place_meeting(player.x, player.y, platBlock)) && num < 32) {
			num += 1;
	        if (dir_x * (x - xsafe) >= epsilon) {
	            diff = sign(x - xsafe) * min( abs(x - xsafe), 1 );
				x -= diff;
				player.x -= diff;
	        } else {
				break;
			}
	    }
		num = 0;
		
        y += 6*v;
	    var dir_y = sign(y - ysafe);
		player.y = y-20;
		while ((place_meeting(player.x, player.y, block) or place_meeting(player.x, player.y, platBlock)) && num < 32) {
			num += 1;
	        if (dir_y * (y - ysafe) >= epsilon) {
	            diff = sign(y - ysafe) * min( abs(y - ysafe), 1 );
				y -= diff;
				player.y -= diff;
	        } else {
				break;
			}
	    }
		
		with(playerHealth) { x = player.x; y = player.y; }
    }
} else {
	no_fall = max(no_fall-1, 0);
	if (no_fall <= 0) vspd += grav;
	ride_available = max(ride_available-1, 0);
    if (danger != 3 and ride_available <= 0 && place_meeting(x, y, player) &&
		x >= 7 && x <= room_width-7 && y >= 33 && y <= room_height + 12) {
		if (!player.is_riding) {
			is_riding = true;
			hspd = 0; vspd = 0;
			with(player) { is_riding = true; hspd = 0; vspd = 0; grav = 0; }
		}
	}
}

if (y >= room_height + 64 and vspd > 0) {
	if (is_riding) {
		with(player) { is_riding = false; hspd = 0; vspd = 0; grav = 0; }
	}
	instance_destroy();
}