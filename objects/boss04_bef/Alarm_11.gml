var i, temp;

global.practice -= 400;
with(world) {
	if filePlaying != 18 and curMusic != global.stage04Bs1 {
	    audio_stop_sound(Instance);
	    filePlaying = 18;
	    curMusic = global.stage04Bs1;
	    Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	}
}

if (world.HEALTH_ok) {
	var zx = instance_create_depth(0, 0, -49, playerHealth);
	zx.hp = 3;
	zx.hpm = 3;
}

if (global.practice == 1) {
	// Phase 1-1
	with(player) { x = 384 + 17; y = 544 + 23; }
	
	instance_create_depth(room_width/2, room_height/2, 10, Boss04_1);
	temp = instance_create_depth(-192, 288, -5, Boss04_2);
	temp.xx = 192; temp.type = 0;
	temp = instance_create_depth(1024, 288, -5, Boss04_3);
	temp.xx = 640; temp.type = 0;
}
instance_destroy();