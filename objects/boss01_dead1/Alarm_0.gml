visible = false;
speed = 0;
instance_create_depth(0, 0, -100, light);
instance_create_depth(316, 215, -11, Boss01_15);
var a = instance_create_depth(x, y, 0, bloodSquirt);
a.xx = x; a.yy = y; a.Gravity = 1;
if (layer_exists("Tiles3"))
	layer_set_visible(layer_get_id("Tiles3"), true);
audio_play_sound(snd01_5, 0, false);
audio_play_sound(sndDeath, 0, false);
var zx = instance_create_depth(0, 0, 0, view_an3);
zx.asdf = 30;
alarm[1] = 180;