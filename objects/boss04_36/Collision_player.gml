if (!blackhole) { with(other) kill_player(); }
else if world.kill {
	if instance_exists(bullet) {with(bullet) instance_destroy();}
	with(other) { var zx = instance_create_depth(x, y, -11, Boss04_54); zx.image_xscale = image_xscale;
			zx.image_yscale = image_yscale; zx.Gravity = Gravity; zx.GravityH = GravityH; instance_destroy(); }
	with(Boss04_49) { not_recover = true; alarm[0] += 150; }
	with(surf_lens) { not_recover = true; }
	with(Boss04_54) { sid = Boss04_36; length = point_distance(Boss04_36.x, Boss04_36.y, x, y);
		angle = point_direction(Boss04_36.x, Boss04_36.y, x, y); image_angle = angle + 90; }
	audio_play_sound(snd04_43, 0, false, world.sound_vol);
	
	world.deaths[0]++;
	with(world) {saveDeaths();}
}