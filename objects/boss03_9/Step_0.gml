if place_meeting(x, y+vspeed, block) and a {
    vspeed = 0;
    a = 0;
	if (snd_enable) audio_play_sound(snd03_4, 0, false, world.sound_vol);
    var zx = instance_create_depth(0, 0, 0, view_an1);
    zx.asdf = 20;
    alarm[0] = b;
}
if y < 0 and vspeed < 0 {instance_destroy();}