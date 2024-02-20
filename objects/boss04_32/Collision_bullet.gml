if ((sprite_index == sprPlayerIdle_guy or sprite_index == sprPlayerRunning_guy) and !death and patt == 0) {
    sprite_index = noone;
    image_index = 0;
    audio_play_sound(sndDeath, 0, false);
    death = true;
    with(other) instance_destroy();
    
    with(world) {
        if filePlaying != -1 and curMusic != global.Silent {
            audio_stop_sound(Instance);
            filePlaying = -1;
            curMusic = global.Silent;
            Instance = audio_play_sound(curMusic, 10, true);
        }
    }
    alarm[0] = 20;
	event_perform(ev_alarm, 11);
}