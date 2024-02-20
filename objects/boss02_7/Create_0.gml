if hspeed == 0 and vspeed == 0 {
    hspeed = random_range(4 , -4);
    vspeed = -random_range(2 , 5);
}
gravity = 0.3;
var zx = instance_create_depth(0, 0, 0, view_an2);
zx.asdf = 8;
audio_play_sound(snd02_2, 0, false);