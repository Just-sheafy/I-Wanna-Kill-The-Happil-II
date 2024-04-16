var r, theta, temp;

if (patt == 0) {	
	with(Boss04_56) {
		t_spd = 1;
		t2_spd = 1;
		number = 2;
		
		col[0] = 0.52;
		col[1] = 0.2;
		col[2] = 0.1;
		col2[0] = 0.0;
		col2[1] = 0.2;
		col2[2] = 0.9;
		col3[0] = 0.2;
		col3[1] = 0.9;
		col3[2] = 0.45;
	}
	
	if (instance_exists(player)) {
		mode = 1;
	    mode_time = 0;
	    hp_var.mode = 1;
		
		temp = instance_create_layer(-32, -32, "Player", objHealthItem2);
		temp.image_xscale = 1;
		temp.image_yscale = 1;
		temp.troll = true;
		temp.time = 500;
		
	    r = random_range(250, 350);
		theta = random(360);
		
	    _r = sprite_get_height(sprite_index)*image_xscale*2/3;
	    _theta = theta;
		
	    xx_to = room_width / 2 + lengthdir_x(r, theta);
	    yy_to = room_height / 2 - lengthdir_y(r, theta);
	    zz_to = 225;
	}
    
	scale = 4;
	zz = 100;
	image_angle = 0;
    
	patt += 1;
    if (instance_exists(player)) alarm[0] = 30;
} else if (patt == 1) {
    mode = 2;
    mode_time = 0;
    hp_var.mode = 2;
	hp_var.is_effect = true;
	hp_var.kill_block.kill = true;
    audio_play_sound(snd04_46, 0, false, world.sound_vol);
    
    xx_from = xx;
    yy_from = yy;
    zz_from = zz;
    
	if (instance_exists(player)) {
		xx_to = player.x;
		yy_to = player.y;
	} else {
		xx_to = 0;
		yy_to = 0;
	}
    zz_to = -5;
    
    patt += 1;
    alarm[0] = floor(12/acc);
} else if (patt == 2) {
    hp_var.reflect = !hp_var.reflect;
    
    patt += 1;
    alarm[0] = floor(13/acc);
} else if (patt == 3) {
    mode = 3;
    mode_time = 0;
    mode_time_v = 0;
	acc = 2;
    hp_var.is_effect = false;
	hp_var.kill_block.kill = false;
    
	if (pat < 3) {
	    r = random_range(250, 350);
		if (instance_exists(player))
			theta = -point_direction(room_width/2, room_height/2, player.x, player.y) + 180;
		else
			theta = -point_direction(room_width/2, room_height/2, 0, 0) + 180;
    
	    _r = sprite_get_height(sprite_index)*image_xscale*2/3;
	    _theta = theta;
    
	    xx_to = room_width / 2 + lengthdir_x(r, theta);
	    yy_to = room_height / 2 - lengthdir_y(r, theta);
	    zz_to = 225;
		
	    patt += 1;
	    if (instance_exists(player)) alarm[0] = floor(60/acc);
	} else {
        with(hp_var) {
            var dir;
            
            mode = 3;
            dir = point_direction(room_width/2, room_height/2, xx1_to, yy1_to);
            xx1_to = room_width/2 + lengthdir_x(800, dir);
            yy1_to = room_width/2 + lengthdir_y(800, dir);
            dir = point_direction(room_width/2, room_height/2, xx2_to, yy2_to);
            xx2_to = room_width/2 + lengthdir_x(1200, dir);
            yy2_to = room_width/2 + lengthdir_y(1200, dir);
        }
		patt = 0;
		pat = 0;
		
		image_speed = 0.5;
    
	    xx_to = room_width / 2;
	    yy_to = room_height / 2;
	    zz_to = 240;
		
		if (instance_exists(player)) alarm[1] = 30;
	}
    
    xx_from = xx;
    yy_from = yy;
    zz_from = zz;
} else if (patt == 4) {
    mode = 2;
    mode_time = 0;
    hp_var.mode = 2;
	hp_var.is_effect = true;
	hp_var.kill_block.kill = true;
    audio_play_sound(snd04_46, 0, false, world.sound_vol);
    
    xx_from = xx;
    yy_from = yy;
    zz_from = zz;
    
	if (instance_exists(player)) {
		xx_to = player.x;
		yy_to = player.y;
	} else {
		xx_to = 0;
		yy_to = 0;
	}
    zz_to = -5;
    
    patt += 1;
    alarm[0] = floor(12/acc);
} else if (patt == 5) {
    hp_var.reflect = !hp_var.reflect;
    
    patt += 1;
    alarm[0] = floor(13/acc);
} else {
    mode = 3;
    mode_time = 0;
    mode_time_v = 0;
    hp_var.is_effect = false;
	hp_var.kill_block.kill = false;
    
    xx_from = xx;
    yy_from = yy;
    zz_from = zz;
    
    patt = 1;
    pat += 1;
    
    if (pat < 3) {
		acc = 1;
		if (pat == 1) acc = 1.5;
	    r = random_range(250, 350);
		theta = random(360);
		
	    _r = sprite_get_height(sprite_index)*image_xscale*2/3;
	    _theta = theta;
		
	    xx_to = room_width / 2 + lengthdir_x(r, theta);
	    yy_to = room_height / 2 - lengthdir_y(r, theta);
	    zz_to = 225;
		
        if (instance_exists(player)) alarm[0] = floor(65/acc);
    } else {
        acc = 2;
	    r = random_range(250, 350);
		if (instance_exists(player))
			theta = -point_direction(room_width/2, room_height/2, player.x, player.y) + 180;
		else
			theta = -point_direction(room_width/2, room_height/2, 0, 0) + 180;
    
	    _r = sprite_get_height(sprite_index)*image_xscale*2/3;
	    _theta = theta;
    
	    xx_to = room_width / 2 + lengthdir_x(r, theta);
	    yy_to = room_height / 2 - lengthdir_y(r, theta);
	    zz_to = 225;
		
        if (instance_exists(player)) alarm[0] = floor(60/acc);
    }
}