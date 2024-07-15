ftn_trigger = function(trigger) {
	if (trigger == 0) audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
}

ftn_step = function() {
	if (trig[0]) {
		time += 1;
		if (time <= 30) {
			trigger_id[0].x = 432+lengthdir_x(32, time*12-90)+lengthdir_x(16*sqrt(2), time*12+135);
			trigger_id[0].y = 496+lengthdir_y(32, time*12-90)+lengthdir_y(16*sqrt(2), time*12+135);
			trigger_id[0].image_angle = time*12;
		} else {
			trigger_id[0].x = 416;
			trigger_id[0].y = 512;
			trigger_id[0].image_angle = 0;
			instance_destroy();
		}
	}
};