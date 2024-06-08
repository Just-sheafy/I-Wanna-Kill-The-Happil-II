vspeed = -24;
friction = 0.6;
patt = 0;
a = 0;
b = 0;
c = 0;
d = 0;
e = 0;
f = 0;
ox = 0;
canhit = 1;
nothit = 1;
alarm[0] = 15;
if (global.practice <= 1) {
	instance_create_depth(64, 236, 0, Boss03_3);
	instance_create_depth(736, 236, 0, Boss03_3);
	audio_play_sound(snd03_1, 0, false, world.sound_vol);
}
if (global.practice < 0) {
	var zx = instance_create_depth(800, 0, -2000, StageGet);
	zx.image_index = 44;
}
zx = instance_create_depth(x, y, -10, Boss03_n);
zx.sid = id;
zx.image_alpha = 1;
zx.a = -1;
zx = instance_create_depth(0, 0, 0, view_an3);
zx.asdf = 20;