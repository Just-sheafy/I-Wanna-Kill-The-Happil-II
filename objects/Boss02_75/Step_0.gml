var zx, temp;

if (mode == 0) {
	image_index = 0;
	if (instance_exists(player)) {
		if (x < player.x-4) { x = clamp(min(x+6, player.x), 96, 800-96); }
		else if (x > player.x+4) { x = clamp(max(x-6, player.x), 96, 800-96); }
		else { mode = -1; alarm[0] = 20; }
		if (x <= 96 or x >= 800-96) { mode = -1; alarm[0] = 20; }
	}
} else if (mode == 1) {
	image_index = 1;
	y = min(y+24, 608-32-72);
	if (y >= 608-32-72) {
		mode = 2;
		audio_play_sound(snd02_33, 0, false, world.sound_vol);
		audio_play_sound(snd02_36, 0, false, world.sound_vol);
	    zx = instance_create_depth(0, 0, 0, view_an3);
	    zx.asdf = 15;
		
		temp = instance_create_depth(x, y, depth+1, Boss02_76);
		temp.hspeed = -3;
		temp.vspeed = -3;
		temp.gravity = 0.1;
		temp.image_xscale = 2;
		temp.image_yscale = 2;
		temp = instance_create_depth(x, y, depth+1, Boss02_76);
		temp.hspeed = 3;
		temp.vspeed = -3;
		temp.gravity = 0.1;
		temp.image_xscale = 2;
		temp.image_yscale = 2;
		
		alarm[0] = 30*(2-fast);
	}
} else if (mode == 3) {
	image_index = 0;
	y = max(y-4, 208);
	if (y <= 208) {
		mode = 4;
		alarm[0] = 20*(2-fast);
	}
}