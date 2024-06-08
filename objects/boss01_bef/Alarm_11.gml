var i, temp;

global.practice -= 100;
with(world) {
	if (global.practice <= 3) {
	    if filePlaying != 3 and curMusic != global.stage01Bs1 {
	        audio_stop_sound(Instance);
	        filePlaying = 3;
	        curMusic = global.stage01Bs1;
	        Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	    } else {
			audio_sound_set_track_position(Instance, 0);
		}
	} else {
		if filePlaying != 3.5 and curMusic != global.stage01Bs2 {
		    audio_stop_sound(Instance);
		    filePlaying = 3.5;
		    curMusic = global.stage01Bs2;
		    Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
		}
	}
}

if (world.HEALTH_ok) {
	temp = instance_create_depth(0, 0, -49, playerHealth);
	temp.hp = 3;
	temp.hpm = 3;
}

if (global.practice == 1) {
	// ~ Crazy Spike
	with(player) { x = 64 + 17; y = 416 + 23; }
	
	instance_create_depth(736, 0, -2, Boss01_1);
} else if (global.practice == 2) {
	// Green Apple ~ just before Sticky Keys
	with(player) { x = 384 + 17; y = 544 + 23; }
	with(world) { audio_sound_set_track_position(Instance, 20.56); }
	
	temp = instance_create_depth(64, 448, -2, Boss01_1);
	temp.image_xscale = -1;
	temp.vspeed = 0;
	temp.nothit = true;
	temp.patt = 18;
	temp.alarm[0] = 0;
	with(temp) event_perform(ev_alarm, 0);
} else if (global.practice == 3) {
	// Sticky Keys
	with(player) { x = 384 + 17; y = 544 + 23; }
	with(world) { audio_sound_set_track_position(Instance, 39.56); }
	
	temp = instance_create_depth(192, 576, -2, Boss01_1);
	temp.image_xscale = -1;
	temp.vspeed = 0;
	temp.patt = 6;
	temp.alarm[0] = 0;
	with(temp) event_perform(ev_alarm, 1);
} else if (global.practice == 4) {
	// Phase 1-2 beginning ~ Tyson
	with(player) { x = 64 + 17; y = 416 + 23; }
	
	instance_create_depth(320, 0, -2, Boss01_17);
} else if (global.practice == 5) {
	// Blue Cat
	with(player) { x = 64 + 17; y = 416 + 23; }
	with(world) { audio_sound_set_track_position(Instance, 12.52); }
	
	temp = instance_create_depth(736, 448, -2, Boss01_17);
	temp.image_xscale = 1;
	temp.vspeed = 0;
	temp.patt = 15;
	temp.alarm[0] = 0;
	with(temp) event_perform(ev_alarm, 0);
}
instance_destroy();