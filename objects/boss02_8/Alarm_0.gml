instance_destroy();
var a = instance_create_depth(x, y-32+64*(image_angle == 180), -1, Boss02_12);
a.sprite_index = sprite_index;
if (sprite_index == sprBoss04_20) {
    a.image_speed = 0; a.image_index = 0;
}
a.image_angle = image_angle+180;
a.hspeed = 0; a.vspeed = -5+10*(image_angle == 180);
a.gravity_direction = gravity_direction;
audio_play_sound(snd02_5, 0, false, world.sound_vol);