if (!error) draw_self();
else {
	var i, j, rx, ry;
	
	for(i=0; i<608/64; i+=1) {
		for(j=0; j<800/64; j+=1) {
            rx = irandom_range(0, 31); ry = irandom_range(0, 31);
            draw_sprite_part_ext(sprBoss04_65, current_time+i+j, rx, ry, 32, 32, x+64*j, y+64*i, 2, 2, c_white, 1);
        }
	}
}