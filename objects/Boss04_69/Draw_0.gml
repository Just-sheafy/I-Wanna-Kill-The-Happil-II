var i, rx, ry;

if (!active) draw_self();
else {
	for(i=0; i<50; i+=1) {
		rx = irandom_range(0, 15); ry = irandom_range(0, 31);
		draw_sprite_general(sprBoss04_65, current_time+i, rx, ry, 48, 32*image_yscale,
			x+48*i*cos(degtorad(image_angle))-16*image_yscale*sin(degtorad(image_angle)),
			y-48*i*sin(degtorad(image_angle))-16*image_yscale*cos(degtorad(image_angle)),
			1, 1, image_angle, c_white, c_white, c_white, c_white, 1);
		draw_line_width_color(x+48*i*cos(degtorad(image_angle))-16*image_yscale*sin(degtorad(image_angle)),
			y-48*i*sin(degtorad(image_angle))-16*image_yscale*cos(degtorad(image_angle)),
			x+48*(i+1)*cos(degtorad(image_angle))-16*image_yscale*sin(degtorad(image_angle)),
			y-48*(i+1)*sin(degtorad(image_angle))-16*image_yscale*cos(degtorad(image_angle)),
			4*image_yscale, c_black, c_black);
		draw_line_width_color(x+48*i*cos(degtorad(image_angle))+16*image_yscale*sin(degtorad(image_angle)),
			y-48*i*sin(degtorad(image_angle))+16*image_yscale*cos(degtorad(image_angle)),
			x+48*(i+1)*cos(degtorad(image_angle))+16*image_yscale*sin(degtorad(image_angle)),
			y-48*(i+1)*sin(degtorad(image_angle))+16*image_yscale*cos(degtorad(image_angle)),
			4*image_yscale, c_black, c_black);
	}
}