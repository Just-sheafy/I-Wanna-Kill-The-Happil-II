var i;

if (alpha > 0) {
	for(i=0; i<num; i+=1) {
		draw_sprite_ext(sprBoss04_39, bl[i].index, bl[i]._x, bl[i]._y, 1, 1, 0, c_white, bl[i].alpha * alpha);
	}
}