var i, zx;

if patt == 0 {
	audio_play_sound(snd03_23, 0, false, world.sound_vol);
    if instance_exists(player) {
        for(i=0; i<24; i+=1) {
            zx = instance_create_depth(player.x + lengthdir_x(600, 15*i + 180), player.y + lengthdir_y(600, 15*i + 180), -1, Boss03_80);
            zx.ox = player.x; zx.oy = player.y;
			zx.xx = lengthdir_x(600, 15*i + 180);
			zx.yy = lengthdir_y(600, 15*i + 180);
			zx.dir = 15 * i;
            zx.spd = 32;
            zx.image_angle = zx.dir;
        }
    }
    patt += 1;
    alarm[4] = 14;
} else if patt == 1 {
    with(Boss03_80) {spd = 0;}
    instance_create_depth(0, 0, -5, Boss02_70);
	
	i = choose(0, 1, 2);
	if (i == 0) key = world.shootKey;
	else if (i == 1) key = world.jumpKey;
	else key = world.skipKey;
	
	if (instance_exists(player)) {
		spr_before = player.sprite_index;
		img_before = player.image_index;
		player_x = player.x;
		player_y = player.y;
		zx = instance_create_depth(player.x-32-16*(i == 0), player.y, -3, Boss03_81);
		zx.image_index = i;
	}
    with(player) {
        hspd = 0; vspd = 0; grav = 0; image_speed = 0; frozen = true;
    }
    press = 1;
    patt += 1;
    alarm[4] = 40;
} else if patt == 2 {
	with(player) {frozen = false;}
    with(Boss03_80) {spd = 32;}
    with(Boss02_70) {instance_destroy();}
    with(Boss03_81) {instance_destroy();}
    press = 0;
}