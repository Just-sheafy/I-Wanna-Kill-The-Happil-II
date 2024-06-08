var i, temp;

global.practice -= 300;
with(world) {
	if filePlaying != 11 and curMusic != global.stage03Bs1 {
		audio_stop_sound(Instance);
		filePlaying = 11;
		curMusic = global.stage03Bs1;
		Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	}
}

if (world.HEALTH_ok) {
	var zx = instance_create_depth(0, 0, -49, playerHealth);
	zx.hp = 3;
	zx.hpm = 3;
}

if (global.practice == 1) {
	// ~ before Mario
	with(player) { x = 256 + 17; y = 544 + 23; }
	
	instance_create_depth(0, 0, 1, Hamjung03Bs3);
	instance_create_depth(400, 736, -2, Boss03_2);
} else if (global.practice == 2) {
	// Mario ~ before Jick
	with(player) { x = 384 + 17; y = 496 + 23; }
	with(world) { audio_sound_set_track_position(Instance, 14.56); }
	
	instance_create_depth(0, 0, 1, Hamjung03Bs3);
	temp = instance_create_depth(640, 736, -2, Boss03_2);
	temp.ox = temp.x;
	temp.y -= 480 - 24;
	temp.vspeed = 0;
	temp.d = 5 * 14.56 * 50;
	temp.f = 4 * 14.56 * 50;
	temp.patt = 18;
	with(temp) event_perform(ev_alarm, 0);
	
	with(block) instance_destroy();
	temp = instance_create_depth(400, 528, 1, Hamjung03Bs5);
	temp.sprite_index = sprHamjung03Bs3;
	temp = instance_create_depth(0, 0, 0, Boss03_16);
	with(temp) event_perform(ev_alarm, 0);
} else if (global.practice == 3) {
	// Jick
	with(player) { x = 384 + 17; y = 496 + 23; }
	with(world) { audio_sound_set_track_position(Instance, 38.96); }
	
	instance_create_depth(0, 0, 1, Hamjung03Bs3);
	temp = instance_create_depth(400, 35, 3, Boss03_26);
	temp.vspeed = 0;
	
	temp = instance_create_depth(640, 736, -2, Boss03_2);
	temp.ox = temp.x;
	temp.y -= 480 + 750 - 24 - 30;
	temp.vspeed = 0;
	temp.d = 5 * 38.96 * 50;
	temp.f = 4 * 38.96 * 50;
	temp.patt = 30;
	with(temp) event_perform(ev_alarm, 0);
	
	with(block) instance_destroy();
	temp = instance_create_depth(400, 528, 1, Hamjung03Bs5);
	temp.sprite_index = sprHamjung03Bs3;
	temp = instance_create_depth(0, 0, 0, Boss03_16);
	with(temp) event_perform(ev_alarm, 0);
}
instance_destroy();