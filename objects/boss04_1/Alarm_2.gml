var temp, zx, xxx, yyy;

if (patt == 0) {
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 15;
    
    audio_play_sound(snd04_3, 0, false, world.sound_vol);
    
    xxx = xx - room_width/2;
    yyy = yy - room_height/2;
    instance_create_depth(room_width/2 + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125),
        room_height/2 + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125), -10, Boss04_21);
    
    patt += 1;
    alarm[2] = 45;
} else if (patt == 1) {
    audio_play_sound(snd04_23, 0, false, world.sound_vol);
    instance_create_depth(400, 304, 8, Boss04_19);
    
    patt += 1;
    alarm[2] = 15;
} else if (patt == 2) {
    temp = instance_create_depth(0, 0, -100, Boss04_18);
    temp.alarm[0] = 165;
    temp.radius = 350;
    temp = instance_create_depth(0, 0, 0, view_an5);
    temp.asdf = 165;
    temp.amplitude = 8;
    
    patt += 1;
    alarm[2] = 75;
} else if (patt == 3) {
    if (!instance_exists(player)) exit;
    if (player.Gravity) next_avoidance = 2;
    else next_avoidance = 1;
    
    with(player) {
        instance_destroy(); zx = instance_create_depth(x, y, depth, Boss02_60);
        zx.direction = point_direction(x, y, 400, 304); zx.speed = point_distance(x, y, 400, 304)/47;
    }
	with(playerHealth) {not_check = true;}
	
	if (world.items[0] && world.BH_ok) {
		audio_play_sound(sndBlockFall, 0, false, world.sound_vol);
		with(Boss04_h) {
			sprite_index = sprBoss04_h3;
			var temp = instance_create_depth(x+219, y, 9, Boss04_52);
			temp.hspeed = 1;
		}
		with(Boss04_h2) {
			sprite_index = sprBoss04_h4;
			var temp = instance_create_depth(x-219, y, 9, Boss04_52);
			temp.image_index = 1;
			temp.hspeed = -1;
		}
	}
	
    with(Boss04_18) not_check = true;
    with(view_an5) not_check = true;
    
    patt += 1;
    alarm[2] = 45;
} else if (patt == 4) {
    with(Boss02_60) {instance_destroy();}
    patt += 1;
    alarm[2] = 10;
} else if (patt == 5) {
    if (next_avoidance == 1) {
        zx = instance_create_depth(0, 0, 0, soundEx);
        zx.M1 = world.Instance;
        zx.M2 = audio_play_sound(global.contrary, 10, false, world.sound_vol);
        zx.nope = 1;
        zx.arck = 0;
		world.Instance = zx.M1;
        with(world) {filePlaying = 19; curMusic = global.contrary;}
    } else {
        zx = instance_create_depth(0, 0, 0, soundEx);
        zx.M1 = world.Instance;
        zx.M2 = audio_play_sound(global.catastrophe, 10, false, world.sound_vol);
        zx.nope = 1;
        zx.arck = 0;
		world.Instance = zx.M1;
        with(world) {filePlaying = 20; curMusic = global.catastrophe;}
    }
    
    patt += 1;
    alarm[2] = 15;
} else if (patt == 6) {
    instance_create_depth(0, 0, -100, dark2);
    patt += 1;
    alarm[2] = 20;
} else {
	with(playerHealth) {world.hp_before = hp;}
	world.var_temp = 0;
    if (next_avoidance == 1)
        room_goto(Stage04Bs2);
    else
        room_goto(Stage04Bs3);
}