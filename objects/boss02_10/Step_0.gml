if y >= 528 and !a {
    a = 1;
    var b = instance_create_depth(x, 624, -1, Boss02_11);
	b.snd_enable = true;
    b.hspeed = 16;
    b = instance_create_depth(x, 624, -1, Boss02_11);
	b.snd_enable = false;
    b.hspeed = -16;
}