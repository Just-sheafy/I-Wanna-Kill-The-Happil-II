var i, zx, temp;

if patt == 1 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[3] = 15;
} else if patt == 2 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_81; visible = true; image_index = 0; image_speed = 0;}
    patt += 1;
    alarm[3] = 30;
} else if patt <= 4 {
	zx = instance_create_depth((patt == 3)? 256:800-256, -120, -2, Boss02_75);
	if (patt == 3) zx.fast = 0;
    patt += 1;
    alarm[3] = 15;
} else if patt == 5 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[3] = 15;
} else if patt == 6 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_80; visible = true;}
    patt += 1;
    alarm[3] = 15;
} else if patt <= 13 {
    instance_create_depth(x, y, -3, Boss02_25);
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 8;
    audio_play_sound(snd02_2, 0, false, world.sound_vol);
    patt += 1;
    alarm[3] = 15;
} else if patt == 14 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[3] = 15;
} else if patt == 15 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    qwer = 7;
    patt += 1;
}
////////////////////////////////////////////////////////////////////
else if patt == 16 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[3] = 15;
} else if patt == 17 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_83; visible = true; image_speed = 1;}
    patt += 1;
    alarm[3] = 30;
} else if patt == 18 {
	for(i=0; i<4; i+=1) {
	    temp = instance_create_depth(160*(i+1), 0, -2, Boss02_77);
		temp.hspeed = choose(2, -2);
		temp.num = (i == 1 || i == 2)? 3:2;
		temp.yy1 = 608+64;
		temp.yy1_spd = (i == 1 || i == 2)? -13:-12;
		temp.yy2 = 608+96;
		temp.yy2_spd = -12;
	}
    patt += 1;
    alarm[3] = 15;
} else if patt == 19 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[3] = 15;
} else if patt == 20 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_84; visible = true;}
    patt += 1;
    alarm[3] = 15;
} else if patt <= 24 {
    instance_create_depth(x, y, -2, Boss02_68);
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 8;
    audio_play_sound(snd02_2, 0, false, world.sound_vol);
    patt += 1;
    alarm[3] = 15;
} else if patt == 25 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[3] = 15;
} else if patt == 26 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_80; visible = true;}
    patt += 1;
    alarm[3] = 15;
} else if patt <= 33 {
    instance_create_depth(x, y, -2, Boss02_25);
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 8;
    audio_play_sound(snd02_2, 0, false, world.sound_vol);
    patt += 1;
    alarm[3] = 15;
} else if patt == 34 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[3] = 15;
} else if patt == 35 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    qwer = 9;
    patt += 1;
}
////////////////////////////////////////////////////////////////////
else if patt == 36 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[3] = 15;
} else if patt == 37 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_85; visible = true; image_speed = 1;}
    patt += 1;
    alarm[3] = 30;
} else if patt == 38 {
	if (instance_exists(player)) {
		if (player.x >= 400) {
			temp = instance_create_depth(-100, 608-32, -3, Boss02_78);
			temp.hspeed = 12;
		} else {
			temp = instance_create_depth(800+100, 608-32, -3, Boss02_78);
			temp.image_xscale *= -1;
			temp.hspeed = -12;
			temp.appear = 1;
		}
	} else {
		temp = instance_create_depth(-100, 608-32, -3, Boss02_78);
		temp.hspeed = 12;
	}
    patt += 1;
    alarm[3] = 15;
} else if patt == 39 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[3] = 15;
} else if patt == 40 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_87; visible = true;}
    patt += 1;
    alarm[3] = 15;
} else if patt == 41 {
    instance_create_depth(850, 608-48-64, -4, Boss02_79);
    patt += 1;
    alarm[3] = 15;
} else if patt == 42 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[3] = 15;
} else if patt == 43 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_80; visible = true;}
    patt += 1;
    alarm[3] = 15;
} else if patt <= 50 {
    instance_create_depth(x, y, -2, Boss02_25);
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 8;
    audio_play_sound(snd02_2, 0, false, world.sound_vol);
    patt += 1;
    alarm[3] = 15;
} else if patt == 51 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[3] = 15;
} else if patt == 52 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    qwer = 11;
    patt += 1;
}