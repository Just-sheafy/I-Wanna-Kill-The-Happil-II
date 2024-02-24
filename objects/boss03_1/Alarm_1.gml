with(world) {
    if filePlaying != 11 and curMusic != global.stage03Bs1 {
        audio_stop_sound(Instance);
        filePlaying = 11;
        curMusic = global.stage03Bs1;
        Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
    }
    break;
}
instance_destroy();
instance_create_depth(0, 0, -100, light);
instance_create_depth(400, 736, -2, Boss03_2);