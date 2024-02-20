image_speed = 8/50;
audio_play_sound(sndSr03_1, 0, false);
if Boss03Sr_1.crazy {speed = 8;} else {speed = 4;}
direction = choose(0, 90, 180, 270);
if Boss03Sr_1.crazy {alarm[0] = 4;} else {alarm[0] = 8;}
alarm[1] = 150;
var zx = instance_create_depth(x, y, -5, Explo6);
zx.depth = -1;
zx.image_xscale = 1/4;
zx.image_yscale = 1/4;
zx.image_angle = random(360);
hp = 3;
nodie = 1;
revive = false;