var i, r;

r = 96*(5-(floor(t)-5*floor(t/5)))/5;
for(i=0; i<5; i+=1) {
	draw_sprite_ext(sprBoss01Sr_8, floor(t)-4*floor(t/4),
		x+lengthdir_x(r, i*72+18), y+lengthdir_y(r, i*72+18), 2, 2, 0, c_white, 1);
}