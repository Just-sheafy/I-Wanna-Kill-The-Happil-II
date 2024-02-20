if (instance_exists(t)) {
	if (x > t.x+16) x -= 0.5;
	if (x < t.x+16) x += 0.5;
	if (y > t.y+16) y -= 0.5;
	if (y < t.y+16) y += 0.5;
}