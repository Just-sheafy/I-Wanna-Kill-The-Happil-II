if (abs(hp-shp) <= 0.02) shp = hp;
if hp > shp {
    shp += max((hp - shp) / 10, 0.02);
} else if hp < shp {
    shp += min((hp - shp) / 10, -0.02);
}
if (hp > hpm) hp = hpm;

if (changed) {
	t += 1;
	if (t <= 100*(1+(hp <= 1))) {
		alpha = min(1, alpha+0.1);
	} else {
		alpha = max(0, alpha-0.1);
		if (alpha <= 0) {
			changed = false; t = 0;
		}
	}
}

if (hp == 1 and (type == 1 or changed)) {
	t_danger += 1;
	if (t_danger <= 10) {
		alpha2 -= 0.1;
		scale2 += 0.025*(2-(type == 0));
	} else if (t_danger >= 20) {
		alpha2 = 1;
		scale2 = 1;
		t_danger = 0;
	}
} else {
	alpha2 = 1;
	scale2 = 1;
	t_danger = 0;
}