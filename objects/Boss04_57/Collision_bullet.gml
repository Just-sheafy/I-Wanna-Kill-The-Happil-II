if (zz >= 20 or zz <= -10) exit;

with(other) {instance_destroy();}
if (!canhit or nothit) {exit;}
if !world.items[2] or !world.WASP_ok {
    canhit = 0;
    alarm[11] = 8;
}

with(Boss04_h3) {
	if (armor == 0) {
		hp -= 10;
		audio_play_sound(sndBossHit, 0, false, world.sound_vol);
		if (hp > 0) {
			armor += Boss04_57.defence;
			audio_play_sound(sndArmorEquip, 0, false, world.sound_vol);
		}
	} else {
		b = 10;
		armor -= (Boss04_57.mode <= 4)? 4 : 1;
		if (armor > 0) audio_play_sound(sndArmorHit, 0, false, world.sound_vol);
		else {
			armor = 0;
			audio_play_sound(sndArmorBreak, 0, false, world.sound_vol);
		}
	}
}