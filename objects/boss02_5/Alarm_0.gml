if !instance_exists(player) {exit;}
var a = instance_create_depth(x, y, 0, Boss02_6);
a.image_angle = image_angle;
a.direction = image_angle;
if x > 400 {a.image_yscale = -1;}
a.speed = 6;
alarm[0] = 200;

if (x < room_width/2) audio_play_sound(snd02_6, 0, false);