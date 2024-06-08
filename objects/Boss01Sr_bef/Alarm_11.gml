var i, temp;

global.practice -= 150;
with(world) {
	if filePlaying != 3.95 and curMusic != global.stage01Sr2 {
	    audio_stop_sound(Instance);
	    filePlaying = 3.95;
	    curMusic = global.stage01Sr2;
		audio_sound_loop_start(curMusic, 18.11);
	    Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
		audio_sound_set_track_position(Instance, 9.65);
	}
}

if (world.HEALTH_ok) {
	temp = instance_create_depth(0, 0, -49, playerHealth);
	temp.hp = 3;
	temp.hpm = 3;
}

temp = instance_create_depth(0, 0, -8, Boss01Sr_1);
temp.index = index;
temp.skip = false;
temp.ready = true;
temp.ox = 400;
temp.oy = 512;
temp.CX = 400;
temp.CY = 512;

with(temp) { generate(); generate(); }

temp = instance_create_depth(0, 0, 1, Hamjung03Bs3);
temp.sprite_index = sprBoss04_47;
temp.oy = 512;
temp.spd = 2/3;

if (global.practice == 1) {
	// 16 ~ 128
	
	instance_create_depth(800, 0, -5, Boss01Sr_2);
} else if (global.practice == 2) {
	// 256 ~ 512
	
	temp = instance_create_depth(800, 0, -5, Boss01Sr_2);
	with(temp) {
		nothit = true;
		repeat(4) event_perform(ev_collision, Boss01Sr_3);
		nothit = false;
	}
} else if (global.practice == 3) {
	// 2048
	
	temp = instance_create_depth(800, 0, -5, Boss01Sr_2);
	with(temp) {
		nothit = true;
		repeat(6) event_perform(ev_collision, Boss01Sr_3);
		nothit = false;
	}
}
instance_destroy();