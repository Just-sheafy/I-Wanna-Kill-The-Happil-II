instance_destroy();
var a = instance_create_depth(x, y-32+64*(image_angle == 180), depth, Boss02_12);
a.sprite_index = sprBoss04_19;
a.image_speed = 0; a.image_index = 4*floor(image_index/4);
a.image_angle = image_angle+180;
a.vspeed = -5+10*(image_angle == 180);
a.gravity_direction = gravity_direction;
audio_play_sound(snd02_5, 0, false);