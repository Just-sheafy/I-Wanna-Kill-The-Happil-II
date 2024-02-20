if instance_exists(SavePoint2) {
    if SavePoint2.saveTimer > 0 {
        with(world) {
            if filePlaying != 10 and curMusic != global.stage03Wait {
                audio_stop_sound(Instance);
                filePlaying = 10;
                curMusic = global.stage03Wait;
                Instance = audio_play_sound(curMusic, 10, false);
            }
            break;
        }
        instance_create_depth(400, 658, 2, Boss03_1);
        instance_create_depth(0, 0, -100, light);
        instance_create_depth(0, 0, 1, Hamjung03Bs3);
        with(StageGet) {audio_stop_sound(Instance); instance_destroy();}
        with(dark1) {instance_destroy();}
        instance_destroy();
    }
}