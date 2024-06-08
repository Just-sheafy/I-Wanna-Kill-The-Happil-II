var zx;

patt = 0;
pat = 0;
rat = 0;
qwer = 16;
Instance = -1;
depth = 2;
alarm[2] = 100;
instance_create_depth(x, y, 2, Boss02_2);
instance_create_depth(x, y, 1, Boss02_3);
with(Boss02_2) {sprite_index = sprBoss02_4; crazy = 1;}
with(Boss02_3) {crazy = 1;}

if (layer_exists("Tiles")) 
	layer_set_visible(layer_get_id("Tiles"), false);

beat_exor = false;
beat_boshy = false;
beat_darkboshy = false;

block.image_index = 0;

if (world.HEALTH_ok) {
	if (room == Stage02Bs3) {
		zx = instance_create_depth(0, 0, -49, playerHealth);
		if (world.hp_before != -1) zx.hp = min(3, world.hp_before);
		else zx.hp = 3;
		zx.hpm = 3;
		if (zx.hp < zx.hpm) {
			zx = instance_create_layer(400, 524, "Player", objHealthItem2);
			zx.time = 150;
		}
		world.hp_before = -1;
	} else {
		zx = instance_create_depth(0, 0, -49, playerHealth);
		if (world.hp_before != -1) zx.hp = min(2, world.hp_before);
		else zx.hp = 2;
		zx.hpm = 2;
		if (zx.hp < zx.hpm) {
			zx = instance_create_layer(400, 524, "Player", objHealthItem1);
			zx.time = 200;
		}
		world.hp_before = -1;
	}
}

if (global.practice >= 0) {
	global.practice -= 200;
}

if (room == Stage02Bs4) {
    patt = -1;
    alarm[2] = 0;
    alarm[3] = 1;
    
    if (world.c) {
        world.c = 0;
		patt = -6;
		alarm[3] = 1;
		
        audio_play_sound(snd02_14, 0, false, world.sound_vol);
        instance_create_depth(0, 0, -100, light);
        zx = instance_create_depth(0, 0, 0, view_an2);
        zx.asdf = 16;
        
        zx = instance_create_depth(0, 0, 0, soundEx2);
        zx.M2 = world.Instance;
        zx.M1 = audio_play_sound(global.stage02Bs1, 10, true, world.music_vol);
        zx.Vol = 0;
        zx.ang = 0;
        audio_sound_set_track_position(zx.M1, 120.070);
        audio_sound_gain(zx.M1, world.music_vol, 0);
        with(world) {filePlaying = 6; curMusic = global.stage02Bs1; Instance = soundEx2.M1;}
    }
}