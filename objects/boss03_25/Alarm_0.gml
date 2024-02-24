var i, zx;

if patt < 5 {
    for(i=0; i<13-a; i+=1) {
        zx = instance_create_depth(64*i+16+32*a, 0, -1, Boss03_24);
        zx.vspeed = 8;
    }
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 10;
    a = !a;
    audio_play_sound(snd03_12, 0, false, world.sound_vol);
    patt += 1;
    alarm[0] = 20;
} else {
    if (instance_exists(player)) y = player.y;
	else y = 304;
    audio_play_sound(snd03_13, 0, false, world.sound_vol);
    visible = true;
    hspeed = 12;
    zx = instance_create_depth(x, y, -10, Boss03_n);
    zx.image_index = 5;
    zx.sid = id;
    zx.oy = -65;
    zx.image_alpha = 1;
    zx.a = -1;
    alarm[11] = 2;
}