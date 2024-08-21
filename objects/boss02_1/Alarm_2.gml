var i, zx;

if patt == 3 {
	instance_create_depth(0, 0, -1, Boss02_22);
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[2] = 15;
} else if patt == 4 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_9; visible = true;}
    patt += 1;
    alarm[2] = 30;
} else if patt <= 6 {
    instance_create_depth(x, y, -1, Boss02_8);
    zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 8;
    audio_play_sound(snd02_2, 0, false, world.sound_vol);
    patt += 1;
    alarm[2] = 15;
} else if patt == 7 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[2] = 15;
} else if patt == 8 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_14; visible = true; image_index = 0; image_speed = 0;}
    patt += 1;
    alarm[2] = 30;
} else if patt <= 10 {
    zx = instance_create_depth(x, y, -1, Boss02_7);
    zx.sprite_index = sprBoss02_14;
	if (patt == 9) zx.hspeed = -abs(zx.hspeed);
	else zx.hspeed = abs(zx.hspeed);
    zx.image_speed = 1/5;
    zx.image_xscale = 2;
    zx.image_yscale = 2;
    patt += 1;
    alarm[2] = 15;
} else if patt == 11 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[2] = 15;
} else if patt == 12 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_7; visible = true; image_index = 0; image_speed = 0;}
    patt += 1;
    alarm[2] = 15;
} else if patt == 13 {
    zx = instance_create_depth(x, y, -1, Boss02_7);
    zx.sprite_index = sprBoss02_7;
    zx.image_speed = 1/5;
    zx.image_xscale = 4;
    zx.image_yscale = 4;
    patt += 1;
    alarm[2] = 15;
} else if patt == 14 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[2] = 15;
} else if patt == 15 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    qwer = 1;
    patt += 1;
}
////////////////////////////////////////////////////////////////////
else if patt == 16 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[2] = 15;
} else if patt == 17 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_12; visible = true;}
    patt += 1;
    alarm[2] = 15;
} else if patt == 18 {
    instance_create_depth(x, y, -2, Boss02_10);
    patt += 1;
    alarm[2] = 15;
} else if patt == 19 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[2] = 15;
} else if patt == 20 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    patt += 1;
    alarm[2] = 15;
} else if patt == 21 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[2] = 15;
} else if patt == 22 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_34; visible = true; image_speed = 0.3;}
    patt += 1;
    alarm[2] = 30;
} else if patt == 23 {
    instance_create_depth(400, 304, -1, Boss02_31);
    patt += 1;
    alarm[2] = 15;
} else if patt == 24 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[2] = 15;
} else if patt == 25 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_29; visible = true; image_speed = 0.3;}
    patt += 1;
    alarm[2] = 30;
} else if patt <= 29 {
    instance_create_depth(x, y, -2, Boss02_26);
    patt += 1;
    alarm[2] = 15;
} else if patt == 30 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[2] = 15;
} else if patt == 31 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_7; visible = true; image_index = 0; image_speed = 0;}
    patt += 1;
    alarm[2] = 15;
} else if patt <= 37 {
    zx = instance_create_depth(x, y, -1, Boss02_7);
    zx.sprite_index = sprBoss02_7;
    zx.image_speed = 1/5;
    patt += 1;
    alarm[2] = 15;
} else if patt == 38 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[2] = 15;
} else if patt == 39 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    qwer = 3;
    patt += 1;
}
////////////////////////////////////////////////////////////////////
 else if patt == 40 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[2] = 15;
} else if patt == 41 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_18; visible = true;}
    patt += 1;
    alarm[2] = 30;
} else if patt <= 43 {
    zx = instance_create_depth(x, y, -1, Boss02_16);
	if (hammer_left >= 1) zx.hspeed = 3;
	else if (hammer_right >= 1) zx.hspeed = -3;
	else if (choose(0, 1)) {
		zx.hspeed = 3;
		hammer_right += 1;
	} else {
		zx.hspeed = -3;
		hammer_left += 1;
	}
    patt += 1;
    alarm[2] = 15;
} else if patt == 44 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false; crazy = 0;}
    patt += 1;
    alarm[2] = 15;
} else if patt == 45 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_33; visible = true; image_speed = 0.3;}
    patt += 1;
    alarm[2] = 30;
} else if patt == 46 {
    for(i=0; i<7; i+=1) {instance_create_depth(x, 640, -1, Boss02_30);}
    patt += 1;
    alarm[2] = 15;
} else if patt == 47 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[2] = 15;
} else if patt == 48 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_7; visible = true; image_index = 0; image_speed = 0;}
    patt += 1;
    alarm[2] = 15;
} else if patt <= 53 {
    zx = instance_create_depth(x, y, -1, Boss02_7);
    zx.sprite_index = sprBoss02_7;
    zx.image_speed = 1/5;
    patt += 1;
    alarm[2] = 15;
} else if patt == 54 {
    Instance = audio_play_sound(snd02_1, 0, true, world.sound_vol);
    with(Boss02_2) {sprite_index = sprBoss02_3;}
    with(Boss02_3) {visible = false;}
    patt += 1;
    alarm[2] = 15;
} else if patt == 55 {
    audio_stop_sound(Instance);
    with(Boss02_2) {sprite_index = sprBoss02_4;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1; visible = true;}
    qwer = 5;
    patt = 76;
}