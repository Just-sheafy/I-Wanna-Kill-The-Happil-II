vspeed = 0;
instance_create_depth(x, 575, -2, Boss02_34);
var zx = instance_create_depth(x, 624, -1, Boss02_11);
zx.snd_enable = (x < room_width/2);
zx.hspeed = 16;
zx = instance_create_depth(x, 624, -1, Boss02_11);
zx.snd_enable = !(x < room_width/2);
zx.hspeed = -16;
zx = instance_create_depth(0, 0, 0, view_an1);
zx.asdf = 10;
alarm[1] = 180;
if Boss02_h.hp <= 10 {if a < 2 {a += 1; alarm[1] = 30;} else {a = 0;}}