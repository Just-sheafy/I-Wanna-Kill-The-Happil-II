if x < 400 {
    image_xscale = 2;
    hspeed = 12;
} else {
    image_xscale = -2;
    hspeed = -12;
}
image_speed = 1/2;
image_yscale = 2;
a = 0;
var zx = instance_create_depth(x, y, -10, Boss03_n);
zx.image_index = 10;
zx.sid = id;
audio_play_sound(snd03_25, 0, false, world.sound_vol);