patt = 0;
pat = 0;
hspeed = -14;
gravity = 0.3;
gravity_direction = 0;

alarm[0] = 105;
alarm[11] = 2;

audio_play_sound(snd03_1, 0, false, world.sound_vol);
if (instance_exists(player)) vspeed = (player.y-y)*3/140;
else vspeed = -y*3/140;