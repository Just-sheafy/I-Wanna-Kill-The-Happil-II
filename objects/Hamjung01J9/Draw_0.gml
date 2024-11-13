var i;

if (mode == 0) {
	draw_sprite_general(back01J6, 0, 0, 32, 96, 32, x, y, 1, 1, angle, c_white, c_white, c_white, c_white, 1);
	for(i=0; i<num; i+=1) {
		draw_sprite_general(back01J6, 0, 32, 64, 32, 32,
			x + 32 * cos(degtorad(angle)) + 32*(i+1) * sin(degtorad(angle)),
			y - 32 * sin(degtorad(angle)) + 32*(i+1) * cos(degtorad(angle)),
			1, 1, angle, c_white, c_white, c_white, c_white, 1);
	}
	draw_sprite_general(back01J6, 0, 0, 96, 96, 32,
		x + 32*(num+1) * sin(degtorad(angle)), y + 32*(num+1) * cos(degtorad(angle)),
		1, 1, angle, c_white, c_white, c_white, c_white, 1);
} else if (mode == 1) {
	draw_self();
}