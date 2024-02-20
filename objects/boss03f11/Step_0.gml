if (!instance_exists(player)) {
    alarm[0] = 0; alarm[1] = 0; exit;
}

var zx;

patt += 1;

if (patt == 90) {
    instance_create_depth(lx, ly, 0, Boss03F7);
} else if (patt == 255) {
    instance_create_depth(mx, my, 0, Boss03F8);
} else if (patt == 545) {
    instance_create_depth(mx, my, 0, Boss03F8);
} else if (patt == 670) {
    instance_create_depth(rx ,ry, 0, Boss03F9);
} else if (patt == 825) {
    instance_create_depth(mx, my, 0, Boss03F8);
} else if (patt == 1105) {
    instance_create_depth(mx ,my, 0, Boss03F8);
    with(Boss03F7) {instance_destroy();}
    with(Boss03F9) {instance_destroy();}
} else if (patt == 1230) {
    instance_create_depth(mx, my, 0, Boss03F10);
} else if (patt == 1680) {
    with(Boss03F10) {instance_destroy();}
    with(bouncingFruit) {
        instance_destroy();
        var zx = instance_create_depth(x, y, -4, fruit);
        zx.sprite_index = sprFruitC;
        zx.image_index = image_index;
        zx.direction = point_direction(x, y, 400, 304);
        zx.speed = 8;
    }
}

if (world.curMusic = global.dotkid
	and abs(audio_sound_get_track_position(world.Instance)-patt/50) > 0.1) {
	audio_sound_set_track_position(world.Instance, patt/50);
}