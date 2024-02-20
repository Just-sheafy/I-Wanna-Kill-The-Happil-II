if !instance_exists(player) {exit;}
var zx = instance_create_depth(x, y, -2, Boss02_21);
zx.direction = point_direction(x, y, player.x, player.y);
zx.speed = 8;
audio_play_sound(snd02_13, 0, false);
alarm[0] = 65;