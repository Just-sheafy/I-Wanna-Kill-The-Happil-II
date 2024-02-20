if (instance_exists(player) || not_recover) {
	if (!but_recover) twist = max(-1, twist-0.01);
	else twist = min(1, twist+0.02);
	
	if (t_inc) t = min(550, t+1);
	else {
		t -= 1;
		if (t <= 0) {
			t_inc = true; alarm[0] = 2000;
		}
	}
} else {
	t = max(0, t-1);
	twist = min(1, twist+0.02);
}
d_exp += 0.1;
d_z += 0.2;

exponent = 0.482 + 0.018*sin(degtorad(d_exp));
zz = -52.5 + 3.5*sin(degtorad(d_z));

if (assault) {
	t2 += 1;
	alpha = 0.4 + 0.2*sin(degtorad(t2*4));

	if (t2 <= 105) {
	    if (t2-15*floor(t2/15) < 10) vis = true;
	    else vis = false;
	} else vis = true;
	if (t2 >= 50) width = min(224, width+8);
}