var i, temp;

global.practice -= 200;
with(world) {
	if filePlaying != 6 and curMusic != global.stage02Bs1 {
        audio_stop_sound(Instance);
        filePlaying = 6;
        curMusic = global.stage02Bs1;
		audio_sound_loop_start(curMusic, 0.06);
        Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
    }
}

if (world.HEALTH_ok) {
	temp = instance_create_depth(0, 0, -49, playerHealth);
	temp.hp = 4;
	temp.hpm = 4;
}

if (global.practice == 1) {
	// 201: Mario
	with(Boss02_1) event_perform(ev_alarm, 0);
} else if (global.practice == 2) {
	// 202: Intermission between Mario and Zelda
	with(world) { audio_sound_set_track_position(Instance, 62.35); }
	
	with(Boss02_1) {
		instance_create_depth(x, y, 1, Boss02_3);
		patt = 81;
		event_perform(ev_alarm, 0);
	}
    with(Boss02_2) {sprite_index = sprBoss02_4; crazy = 1;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1;}
} else if (global.practice == 3) {
	// 203: Zelda
	with(world) { audio_sound_set_track_position(Instance, 100.66); }
	
	with(Boss02_1) {
		instance_create_depth(x, y, 1, Boss02_3);
		patt = 0;
		event_perform(ev_alarm, 1);
	}
    with(Boss02_2) {sprite_index = sprBoss02_4; crazy = 1;}
    with(Boss02_3) {sprite_index = sprBoss02_2; crazy = 1;}
}
instance_destroy();