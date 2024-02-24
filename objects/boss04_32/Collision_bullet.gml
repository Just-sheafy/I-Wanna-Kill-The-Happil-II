if ((sprite_index == sprPlayerIdle or sprite_index == sprPlayerRunning) and !death and patt == 0) {
    sprite_index = noone;
    image_index = 0;
    audio_play_sound(sndDeath, 0, false, world.sound_vol);
    death = true;
    with(other) instance_destroy();
    
    with(world) {
        if filePlaying != -1 and curMusic != global.Silent {
            audio_stop_sound(Instance);
            filePlaying = -1;
            curMusic = global.Silent;
            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
        }
    }
    alarm[0] = 20;
	event_perform(ev_alarm, 11);
}