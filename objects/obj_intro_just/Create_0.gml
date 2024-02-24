///Set scale

image_speed = 0;
image_index = 0;

image_xscale = 12;
image_yscale = 12;

image_alpha = 0;

t = 0;

with(world) {
    if filePlaying != 0 and curMusic != global.title {
		audio_stop_channel(0);
        filePlaying = 0;
        curMusic = global.title;
        Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
    }
}