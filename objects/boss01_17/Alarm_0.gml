var a, zx;

if patt == 0 {
    a = instance_create_depth(x, y-64, -1, Boss01_18);
    a.direction = point_direction(x, y-64, 400, 576);
    a.speed = 12;
    patt += 1;
    alarm[0] = 30;
} else if patt == 1 {
    vspeed = 0;
    patt += 1;
    alarm[0] = 40;
} else if patt == 2 {
    zx = instance_create_depth(x, y-64, -1, Boss01_21);
    zx.vspeed = -10;
    zx.friction = 0.5;
    with(zx) {
        var zx = instance_create_depth(x, y, -10, Boss01_n);
        zx.image_index = 8;
        zx.sid = id;
    }
    patt += 1;
    alarm[0] = 20;
} else if patt == 3 {
    hspeed = 8;
    patt += 1;
    alarm[10] = 2;
    alarm[0] = 44;
} else if patt == 4 {
    hspeed = 0;
    vspeed = -8;
    audio_play_sound(snd01_1, 0, false, world.sound_vol);
    a = instance_create_depth(0, 0, 0, view_an1);
    a.asdf = 10;
    patt += 1;
    alarm[0] = 16;
} else if patt == 5 {
    vspeed = 0;
    hspeed = 8;
    patt += 1;
    alarm[0] = 8;
} else if patt == 6 {
    hspeed = 0;
    image_xscale = 1;
    alarm[10] = 0;
    patt += 1;
    alarm[0] = 52;
} else if patt == 7 {
	zx = instance_create_depth(-96, 0, -3, Boss01_41);
	zx.index = choose(0, 1, 2);
	zx.sid1 = instance_create_depth(-96-192, 0, -4, Boss01_41);
	zx.sid1.sprite_index = sprBoss01_37;
	zx.sid1.image_index = zx.index;
	if (zx.index == 1) {
		zx.sid1.image_xscale = -3.5;
		zx.sid1.image_yscale = 3.5;
	}
	zx.sid1.hspeed = 0;
	zx.sid1.vspeed = 0;
	zx.sid1.gravity = 0;
	zx.sid1.bump = true;
	zx.sid1.alarm[0] = 0;
	zx.sid1.alarm[11] = 0;
	zx.oy1 = -192;
	
	zx.sid2 = instance_create_depth(-96, 0, -4, Boss01_41);
	zx.sid2.sprite_index = sprBoss01_38;
	zx.sid2.image_speed = 1/2;
	zx.sid2.hspeed = 0;
	zx.sid2.vspeed = 0;
	zx.sid2.gravity = 0;
	zx.sid2.bump = true;
	zx.sid2.alarm[0] = 0;
	zx.sid2.alarm[11] = 0;
	
    with(Boss01_19) {friction = 0; speed = 6; gravity_direction = direction; gravity = 0.1;}
    patt += 1;
    alarm[0] = 30;
} else if patt == 8 {
    a = instance_create_depth(x, y-64, -1, Boss01_18);
    a.direction = point_direction(x, y-64, 400, 576);
    a.speed = 12;
    a = instance_create_depth(x, y-64, -1, Boss01_18);
    a.vspeed = -12;
    a.gravity = 0.3;
    audio_play_sound(snd01_11, 0, false, world.sound_vol);
    patt += 1;
    alarm[0] = 60;
} else if patt <= 10 {
    zx = instance_create_depth(x, y-64, -2, Boss01_20);
    if (instance_exists(player)) zx.direction = point_direction(x, y-64, player.x, player.y);
	else zx.direction = point_direction(x, y-64, 0, 0);
    zx.speed = 16;
	audio_play_sound(sndSpikeTrap, 0, false, world.sound_vol);
    a = instance_create_depth(0, 0, 0, view_an1);
    a.asdf = 10;
    patt += 1;
    alarm[0] = 30;
} else if patt == 11 {
    zx = instance_create_depth(x, y-64, -1, Boss01_21);
    zx.vspeed = -10;
    zx.friction = 0.5;
    patt += 1;
    alarm[0] = 20;
} else if patt == 12 {
    if (instance_exists(player)) instance_create_depth(player.x, 608, -2, Boss01_22);
    patt += 1;
    alarm[10] = 2;
    alarm[0] = 120;
} else if patt == 13 {
    with(Boss01_19) {friction = 0; speed = 6; gravity_direction = direction; gravity = 0.1;}
    patt += 1;
    alarm[10] = 0;
    alarm[0] = 30;
} else if patt == 14 {
    zx = instance_create_depth(x, y-64, 0, Boss01_23);
    zx.alarm[0] = 60;
    
    patt += 1;
    alarm[0] = 90;
} else if patt == 15 {
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
		room_goto(Stage01Bs);
		exit;
	}
	
    zx = instance_create_depth(x, y-64, -2, Boss01_25);
    zx.vspeed = -10;
    zx.friction = 0.5;
    vspeed = -8;
    with(zx) {
        var zx = instance_create_depth(x, y, -10, Boss01_n);
        zx.image_index = 9;
        zx.sid = id;
        zx.ox = -91;
    }
    
    zx = instance_create_depth(-74, 448, -2, Boss01_40);
    zx.hspeed = 7;
    zx.friction = 0.2;
    zx.alarm[0] = 25;
    zx.alarm[1] = 250;
    
    patt += 1;
    alarm[0] = 250;
} else if patt == 16 {
    vspeed = 0;
    patt += 1;
    alarm[0] = 90;
} else if patt == 17 {
    zx = instance_create_depth(800, 592, -1, Boss01_27);
    with(zx) {
        var zx = instance_create_depth(x, y, -10, Boss01_n);
        zx.image_index = 11;
        zx.ox = 240;
        zx.oy = -240;
        zx.sid = id;
        zx.image_alpha = 1;
        zx.a = -1;
    }
    patt = 0;
}