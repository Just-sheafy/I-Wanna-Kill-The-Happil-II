if (appear <= 1) {
	if (instance_exists(player)) xx = player.x;
} else {
	xx = (appear == 2)? 1000: -200;
}

if (x <= xx) {
    hspeed = min(hspeed+0.2, 12);
    if (image_xscale < 0) {
        if (sprite_index == sprBoss02_85 and image_index >= 26) {
            sprite_index = sprBoss02_86;
            image_index = 0;
        }
    }
} else {
    hspeed = max(hspeed-0.2, -12);
    if (image_xscale > 0) {
        if (sprite_index == sprBoss02_85 and image_index >= 26) {
            sprite_index = sprBoss02_86;
            image_index = 0;
        }
    }
}

if (x < -200) {
	if (appear <= 1) x = -200;
	else instance_destroy();
}
if (x > 800+200) {
	if (appear <= 1) x = 800+200;
	else instance_destroy();
}

if (sprite_index == sprBoss02_85) {
    if (image_index >= 3 and image_index <= 5) {
        if (!punch) { punch = true; audio_play_sound(snd02_34, 0, false, world.sound_vol); }
    } else if (image_index >= 18 and image_index <= 20) {
        if (!punch) { punch = true; audio_play_sound(snd02_34, 0, false, world.sound_vol); }
    } else {
        punch = false;
        if (image_index >= 27) image_index -= 27;
    }
} else if (sprite_index == sprBoss02_86 and image_index >= 11) {
    sprite_index = sprBoss02_85;
    image_index = 17;
    image_xscale *= -1;
}