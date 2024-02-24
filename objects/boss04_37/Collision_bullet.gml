var temp;

temp = (index == 0 && Boss04_36.hp0 <= Boss04_36.hp1-5) ||
	(index == 1 && Boss04_36.hp1 <= Boss04_36.hp0-5) ||
	(index == 0 && Boss04_36.hp0 <= 0) ||
	(index == 1 && Boss04_36.hp1 <= 0);

if (temp || nothit) { var zx = instance_create_depth(x, y, depth-1, BossB); zx.sid = id; zx.image_xscale = 3; zx.image_yscale = 3; } // BossB
with(other) {instance_destroy();}
if temp or !canhit or nothit {exit;}

if (index == 0) Boss04_36.hp0 -= 1;
else Boss04_36.hp1 -= 1;
with(Boss04_36) {
	if (abs(t_spd) >= 2 && hp0+hp1 <= (hpm0+hpm1) * 2/3) {
		t_spd /= 2;
		with(Boss04_40) { speed /= 2; x -= hspeed; y -= vspeed; }
	}
	if (!bat && hp0+hp1 <= (hpm0+hpm1) * 1/2) {
		bat = true;
		instance_create_depth(x, y, -5, Boss04_50);
		if (world.curMusic == global.stage04Bs3 and audio_sound_get_track_position(world.Instance) < 76.94)
			audio_sound_set_track_position(world.Instance, 76.94);
	}
}
a = 1;

audio_play_sound(sndBossHit, 0, false, world.sound_vol);
if !world.items[2] or !world.WASP_ok {
    canhit = 0;
    alarm[11] = 8;
}