d += 1.5;

x = ox;
y = oy;

if (!is_dead) {
	alpha = min(1, alpha+0.01);
} else {
	alpha = max(0, alpha-0.02);
	if (alpha <= 0) instance_destroy();
}