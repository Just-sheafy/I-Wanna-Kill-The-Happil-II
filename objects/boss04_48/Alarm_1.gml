patt = 2;
alpha = 0;
alpha_aim = 0;

image_speed = 0;
image_index = 0;
gravity = 0.2;
if (image_angle == 0) {
    vspeed = -5;
    gravity_direction = 270;
} else if (image_angle == 90) {
    hspeed = -5;
    gravity_direction = 0;
} else if (image_angle == 180) {
    vspeed = 5;
    gravity_direction = 90;
} else if (image_angle == 270) {
    hspeed = 5;
    gravity_direction = 180;
}
audio_play_sound(snd04_40, 0, false, world.sound_vol);