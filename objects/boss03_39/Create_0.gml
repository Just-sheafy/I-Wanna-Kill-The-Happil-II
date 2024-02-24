if (instance_exists(player) and x < player.x) {image_xscale = -1;}
audio_play_sound(snd03_15, 0, false, world.sound_vol);
vspeed = -13;
gravity = 0.2;
var zx = instance_create_depth(x, y, -10, Boss03_n);
zx.image_index = 12;
zx.sid = id;
zx.oy = 151;
zx.image_alpha = 1;
zx.a = -1;