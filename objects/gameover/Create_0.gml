image_alpha = 0;
alarm[0] = 90;
a = 0;
b = 0;
c = 0;
d = 0;
h = 8;
mode = 0;
if !instance_exists(Hamjung02Bs3) {a = 1;}

event = 0;
if (room == Stage04Bs7) {
	event = 1;
	patt = 0;
	vol = 0;
	Instance = audio_play_sound(snd02_1, 0, true, vol*world.sound_vol);
	
	var zx = instance_create_depth(0, 0, 0, soundEx);
    zx.M2 = world.Instance;
    zx.M1 = audio_play_sound(global.Silent, 10, true, world.music_vol);
    zx.Vol = 0;
    zx.ang = 0;
	zx.arck = false;
	zx.time_max = 100;
    audio_sound_gain(zx.M1, world.music_vol, 0);
    with(world) {filePlaying = -1; curMusic = global.Silent; Instance = soundEx.M1;}
}