if x < -160 {instance_destroy();}
if x < 0 {exit;}
if x-48*floor(x/48) == 16 {
    var zx = instance_create_depth(x, y, -1, Boss02_11);
    zx.alarm[0] = 0;
    zx.vspeed = -15;
    zx.gravity = 0.3;
	audio_play_sound(snd02_3, 0, false);
}