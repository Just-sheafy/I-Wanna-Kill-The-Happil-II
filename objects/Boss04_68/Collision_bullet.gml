with(other) {instance_destroy();}
if (!canhit) {exit;}
if !world.items[2] or !world.WASP_ok {
    canhit = false;
    alarm[11] = 8;
}

with(Boss04_h3) {
	if (armor == 0) {
		hp -= 20;
		armor += Boss04_57.defence;
		audio_play_sound(sndBossHit, 0, false, world.sound_vol);
		audio_play_sound(sndArmorEquip, 0, false, world.sound_vol);
	} else {
		b = 10;
		armor -= 1;
		if (armor > 0) audio_play_sound(sndArmorHit, 0, false, world.sound_vol);
		else {
			armor = 0;
			audio_play_sound(sndArmorBreak, 0, false, world.sound_vol);
		}
	}
}