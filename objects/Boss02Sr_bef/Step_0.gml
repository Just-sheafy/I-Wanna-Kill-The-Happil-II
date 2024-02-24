if instance_exists(SavePoint2) {
    if SavePoint2.saveTimer > 0 {
        with(world) {
            if filePlaying != 5 and curMusic != global.stage02Sr1 {
                audio_stop_sound(Instance);
                filePlaying = 5;
                curMusic = global.stage02Sr1;
                Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
            }
            break;
        }
		
        instance_create_depth(0, 0, -100, light);
        with(StageGet) {audio_stop_sound(Instance); instance_destroy();}
        zx = instance_create_depth(800, 0, -2000, StageGet);
        zx.image_index = 31;
        with(dark1) {instance_destroy();}
        with(CanS) {instance_destroy();}
        instance_destroy();
    }
}