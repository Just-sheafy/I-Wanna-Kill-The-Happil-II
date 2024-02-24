if (!instance_exists(player)) {
    image_index = 0; exit;
}

var i, zx;

if (patt < 3) {
    image_index = patt+1;
    patt += 1;
    alarm[0] = 2;
} else if (patt == 3) {
    image_index = 0;
    for(i=0; i<2; i+=1) {
        zx = instance_create_depth(x+30, y-113, -1, Boss01_26);
        zx.scale = random_range(0.8, 1.2);
        if (instance_exists(player)) zx.direction = point_direction(x+30, y-113, player.x, player.y);
		else zx.direction = point_direction(x+30, y-113, 0, 0);
        zx.image_angle = zx.direction;
        zx.speed = random_range(2, 4);
        zx.gravity_direction = -60+120/3*i+zx.direction+random(120/3);
        zx.gravity = random_range(0, 0.15);
    }
    audio_play_sound(sndShoot, 0, false, world.sound_vol);
    patt = 0;
    if (!patt_end) alarm[0] = 4;
}