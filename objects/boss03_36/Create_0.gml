if x < 400 {
    image_xscale = 2;
    hspeed = 12;
} else {
    image_xscale = -2;
    hspeed = -12;
}
image_yscale = 2;
image_speed = 1/2;
a = 0;
var zx = instance_create_depth(x, y, -10, Boss03_n);
zx.image_index = 11;
zx.sid = id;
audio_play_sound(snd03_17, 0, false, world.sound_vol);