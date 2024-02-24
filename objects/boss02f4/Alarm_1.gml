var zx;
// zx = instance_create_depth(-32, random(608), -1, Boss02F3);
// zx.hspeed = random_range(2.5, 3);
zx = instance_create_depth(832, random(608), -1, Boss02F3);
zx.hspeed = -random_range(2.5, 3);
alarm[1] = 12;