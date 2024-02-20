var zx;

if (patt == 1) {
	audio_play_sound(snd04_31, 0, false);
    patt += 1;
    alarm[0] = 80;
} else if (patt == 2) {
	audio_play_sound(snd04_32, 0, false);
    patt += 1;
    alarm[0] = 120;
} else if (patt == 3) {
    if (!instance_exists(player)) exit;
	
    zx = instance_create_depth(0, 0, 0, soundEx2);
    zx.M2 = world.Instance;
    zx.M1 = audio_play_sound(global.Difficulty, 10, true);
    zx.Vol = 0;
    zx.ang = 0;
    audio_sound_gain(zx.M1, world.music_vol, 0);
    with(world) {filePlaying = 0.3;
        Instance = soundEx2.M1; curMusic = global.Difficulty;}
    patt += 1;
    alarm[0] = 20;
} else if (patt == 4) {
    instance_create_depth(400, 304, -4, Boss04_32);
    patt += 1;
}