if instance_exists(SavePoint2) {
    if SavePoint2.saveTimer > 0 {
		var zx;
		
        with(world) {
            if filePlaying != 3 and curMusic != global.stage01Bs1 {
                audio_stop_sound(Instance);
                filePlaying = 3;
                curMusic = global.stage01Bs1;
                Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
            }
            break;
        }
        instance_create_depth(736, 0, -2, Boss01_1);
		
		if (world.HEALTH_ok) {
			zx = instance_create_depth(0, 0, -49, playerHealth);
			zx.hp = 3;
			zx.hpm = 3;
		}
		
        instance_create_depth(0, 0, -100, light);
        with(StageGet) {audio_stop_sound(Instance); instance_destroy();}
        zx = instance_create_depth(800, 0, -2000, StageGet);
        zx.image_index = 11;
        with(dark1) {instance_destroy();}
        instance_destroy();
    }
}