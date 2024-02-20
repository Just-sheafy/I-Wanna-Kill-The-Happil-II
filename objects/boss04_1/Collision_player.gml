if (abs(zz) <= 10) {
	if (!world.screen_effect_enable) {
		with(other) kill_player();
	} else if world.kill {
		if instance_exists(bullet) {with(bullet) instance_destroy();}
		with(other) { var zx = instance_create_depth(x, y, -11, Boss04_35); zx.image_xscale = image_xscale;
			zx.image_yscale = image_yscale; zx.Gravity = Gravity; instance_destroy(); }
		audio_play_sound(snd03_24, 0, false);
		
		var xxx = xx - room_width/2;
	    var yyy = yy - room_height/2;
	    Boss04_35.ox = 2*Boss04_35.x - room_width/2 + xxx*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125);
	    Boss04_35.oy = 2*Boss04_35.y - room_height/2 + yyy*125/(zz+sqrt(xxx*xxx+yyy*yyy)/8+125);
		Boss04_35.ox = clamp(Boss04_35.ox, 0, 800);
		Boss04_35.oy = clamp(Boss04_35.ox, 0, 608);
		Boss04_35.hspeed = (Boss04_35.ox-Boss04_35.x)/25;
		Boss04_35.vspeed = (Boss04_35.oy-Boss04_35.y)/25;
		Boss04_35.alarm[0] = 25;
		
		world.deaths[0]++;
		with(world) {saveDeaths();}
	}
}