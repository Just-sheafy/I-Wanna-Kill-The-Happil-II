if (instance_exists(player) || instance_exists(playerMove)) time += 1;
else { xx = min(xx+2, 400); exit; }

if (time <= 300) {
	xx += 0.75;
	alpha = min(alpha+0.004, 0.7);
} else if (time <= 300 + 1028) {
	cam_x += 1;
	if (time > 300 + 400) {
		xx = max(xx-0.75, 100);
		alpha = max(alpha-0.004, 0.7*4/9);
	}
} else if (time <= 300 + 1028 + 194) {
	cam_x -= 2;
	xx = min(xx+1, 225);
	alpha = min(alpha+0.004, 0.7);
} else {
	cam_x = min(cam_x+2, room_width-800);
	if (cam_x >= room_width-800) {
		xx = max(xx-2, 0);
		alpha = max(alpha-0.004, 0);
	}
}