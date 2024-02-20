var zx;

if pat == 0 {
    sprite_index = sprBoss02_58;
    image_speed = 0.2;
    image_index = 0;
    audio_play_sound(snd02_24, 0, false);
    if (instance_exists(player)) x = player.x;
	else x = 0;
    y = 0;
    vspeed = 32;
    pat += 1;
    alarm[1] = 18;
} else if pat == 1 {
    vspeed = 0;
    image_index = 7;
    audio_play_sound(snd02_26, 0, false);
    instance_create_depth(x, y, -4, Boss02_71);
    zx = instance_create_depth(0, 0, 0, view_an1);
    zx.asdf = 10;
    pat += 1;
    alarm[1] = 12;
} else if pat == 2 {
    image_speed = 0;
    pat += 1;
    alarm[1] = 15;
} else if pat == 3 {
    sprite_index = sprBoss02_63;
    image_speed = 0.2;
    image_index = 0;
    pat += 1;
    alarm[1] = 15;
} else if pat == 4 {
    vspeed = -16;
    pat += 1;
    alarm[1] = 35;
} else if pat == 5 {
    image_speed = 0;
    pat = 0;
    alarm[1] = 60;
}