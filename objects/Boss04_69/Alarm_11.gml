var dir, temp;

if (patt < 2) {
	audio_play_sound(snd04_48, 0, false, world.sound_vol);
	dir = random(360);
	if (instance_exists(player)) {
			temp = instance_create_depth(player.x+lengthdir_x(1200, dir), player.y+lengthdir_y(1200, dir), -10, Boss04_69);
		} else temp = instance_create_depth(lengthdir_x(1200, dir), lengthdir_y(1200, dir), -10, Boss04_69);
	temp.image_angle = dir+180;
	
	patt += 1;
	alarm[11] = time;
}