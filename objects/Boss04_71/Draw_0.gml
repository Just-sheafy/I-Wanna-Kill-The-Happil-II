var i, rx, ry;

draw_sprite_pos(sprBoss04_65, current_time, x, y,
	x+48*cos(degtorad(image_angle))-16/2*image_yscale*sin(degtorad(image_angle)),
	y-48*sin(degtorad(image_angle))-16/2*image_yscale*cos(degtorad(image_angle)),
	x+48*cos(degtorad(image_angle))+16/2*image_yscale*sin(degtorad(image_angle)),
	y-48*sin(degtorad(image_angle))+16/2*image_yscale*cos(degtorad(image_angle)),
	x, y, 1);
draw_set_color(c_black);
draw_primitive_begin(pr_trianglelist);
draw_set_alpha(1);
draw_vertex(x, y);
draw_vertex(x+48*cos(degtorad(image_angle))-16/2*image_yscale*sin(degtorad(image_angle)),
	y-48*sin(degtorad(image_angle))-16/2*image_yscale*cos(degtorad(image_angle)));
draw_set_alpha(0);
draw_vertex(x+48*cos(degtorad(image_angle))-8/2*image_yscale*sin(degtorad(image_angle)),
	y-48*sin(degtorad(image_angle))-8/2*image_yscale*cos(degtorad(image_angle)));
draw_set_alpha(1);
draw_vertex(x, y);
draw_vertex(x+48*cos(degtorad(image_angle))+16/2*image_yscale*sin(degtorad(image_angle)),
	y-48*sin(degtorad(image_angle))+16/2*image_yscale*cos(degtorad(image_angle)));
draw_set_alpha(0);
draw_vertex(x+48*cos(degtorad(image_angle))+8/2*image_yscale*sin(degtorad(image_angle)),
	y-48*sin(degtorad(image_angle))+8/2*image_yscale*cos(degtorad(image_angle)));
draw_primitive_end();
draw_set_color(c_white);
/*
draw_line_width_color(x, y,
	x+48*cos(degtorad(image_angle))-16/2*image_yscale*sin(degtorad(image_angle)),
	y-48*sin(degtorad(image_angle))-16/2*image_yscale*cos(degtorad(image_angle)),
	image_yscale, c_black, c_black);
draw_line_width_color(x, y,
	x+48*cos(degtorad(image_angle))+16/2*image_yscale*sin(degtorad(image_angle)),
	y-48*sin(degtorad(image_angle))+16/2*image_yscale*cos(degtorad(image_angle)),
	image_yscale, c_black, c_black);
*/

draw_sprite_pos(sprBoss04_65, current_time,
	x+48*cos(degtorad(image_angle))-16/2*image_yscale*sin(degtorad(image_angle)),
	y-48*sin(degtorad(image_angle))-16/2*image_yscale*cos(degtorad(image_angle)),
	x+48*2*cos(degtorad(image_angle))-16*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))-16*5/6*image_yscale*cos(degtorad(image_angle)),
	x+48*2*cos(degtorad(image_angle))+16*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))+16*5/6*image_yscale*cos(degtorad(image_angle)),
	x+48*cos(degtorad(image_angle))+16/2*image_yscale*sin(degtorad(image_angle)),
	y-48*sin(degtorad(image_angle))+16/2*image_yscale*cos(degtorad(image_angle)), 1);
draw_set_color(c_black);
draw_primitive_begin(pr_trianglelist);
draw_set_alpha(1);
draw_vertex(x+48*cos(degtorad(image_angle))-16/2*image_yscale*sin(degtorad(image_angle)),
	y-48*sin(degtorad(image_angle))-16/2*image_yscale*cos(degtorad(image_angle)));
draw_vertex(x+48*2*cos(degtorad(image_angle))-16*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))-16*5/6*image_yscale*cos(degtorad(image_angle)));
draw_set_alpha(0);
draw_vertex(x+48*2*cos(degtorad(image_angle))-8*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))-8*5/6*image_yscale*cos(degtorad(image_angle)));
draw_vertex(x+48*2*cos(degtorad(image_angle))-8*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))-8*5/6*image_yscale*cos(degtorad(image_angle)));
draw_vertex(x+48*cos(degtorad(image_angle))-8/2*image_yscale*sin(degtorad(image_angle)),
	y-48*sin(degtorad(image_angle))-8/2*image_yscale*cos(degtorad(image_angle)));
draw_set_alpha(1);
draw_vertex(x+48*cos(degtorad(image_angle))-16/2*image_yscale*sin(degtorad(image_angle)),
	y-48*sin(degtorad(image_angle))-16/2*image_yscale*cos(degtorad(image_angle)));

draw_vertex(x+48*cos(degtorad(image_angle))+16/2*image_yscale*sin(degtorad(image_angle)),
	y-48*sin(degtorad(image_angle))+16/2*image_yscale*cos(degtorad(image_angle)));
draw_vertex(x+48*2*cos(degtorad(image_angle))+16*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))+16*5/6*image_yscale*cos(degtorad(image_angle)));
draw_set_alpha(0);
draw_vertex(x+48*2*cos(degtorad(image_angle))+8*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))+8*5/6*image_yscale*cos(degtorad(image_angle)));
draw_vertex(x+48*2*cos(degtorad(image_angle))+8*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))+8*5/6*image_yscale*cos(degtorad(image_angle)));
draw_vertex(x+48*cos(degtorad(image_angle))+8/2*image_yscale*sin(degtorad(image_angle)),
	y-48*sin(degtorad(image_angle))+8/2*image_yscale*cos(degtorad(image_angle)));
draw_set_alpha(1);
draw_vertex(x+48*cos(degtorad(image_angle))+16/2*image_yscale*sin(degtorad(image_angle)),
	y-48*sin(degtorad(image_angle))+16/2*image_yscale*cos(degtorad(image_angle)));
draw_primitive_end();
draw_set_color(c_white);
/*
draw_line_width_color(x+48*cos(degtorad(image_angle))-16/2*image_yscale*sin(degtorad(image_angle)),
	y-48*sin(degtorad(image_angle))-16/2*image_yscale*cos(degtorad(image_angle)),
	x+48*2*cos(degtorad(image_angle))-16*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))-16*5/6*image_yscale*cos(degtorad(image_angle)),
	image_yscale, c_black, c_black);
draw_line_width_color(x+48*cos(degtorad(image_angle))+16/2*image_yscale*sin(degtorad(image_angle)),
	y-48*sin(degtorad(image_angle))+16/2*image_yscale*cos(degtorad(image_angle)),
	x+48*2*cos(degtorad(image_angle))+16*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))+16*5/6*image_yscale*cos(degtorad(image_angle)),
	image_yscale, c_black, c_black);
*/

draw_sprite_pos(sprBoss04_65, current_time,
	x+48*2*cos(degtorad(image_angle))-16*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))-16*5/6*image_yscale*cos(degtorad(image_angle)),
	x+48*3*cos(degtorad(image_angle))-16*image_yscale*sin(degtorad(image_angle)),
	y-48*3*sin(degtorad(image_angle))-16*image_yscale*cos(degtorad(image_angle)),
	x+48*3*cos(degtorad(image_angle))+16*image_yscale*sin(degtorad(image_angle)),
	y-48*3*sin(degtorad(image_angle))+16*image_yscale*cos(degtorad(image_angle)),
	x+48*2*cos(degtorad(image_angle))+16*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))+16*5/6*image_yscale*cos(degtorad(image_angle)), 1);
draw_set_color(c_black);
draw_primitive_begin(pr_trianglelist);
draw_set_alpha(1);
draw_vertex(x+48*2*cos(degtorad(image_angle))-16*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))-16*5/6*image_yscale*cos(degtorad(image_angle)));
draw_vertex(x+48*3*cos(degtorad(image_angle))-16*image_yscale*sin(degtorad(image_angle)),
	y-48*3*sin(degtorad(image_angle))-16*image_yscale*cos(degtorad(image_angle)));
draw_set_alpha(0);
draw_vertex(x+48*3*cos(degtorad(image_angle))-8*image_yscale*sin(degtorad(image_angle)),
	y-48*3*sin(degtorad(image_angle))-8*image_yscale*cos(degtorad(image_angle)));
draw_vertex(x+48*3*cos(degtorad(image_angle))-8*image_yscale*sin(degtorad(image_angle)),
	y-48*3*sin(degtorad(image_angle))-8*image_yscale*cos(degtorad(image_angle)));
draw_vertex(x+48*2*cos(degtorad(image_angle))-8*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))-16*5/6*image_yscale*cos(degtorad(image_angle)));
draw_set_alpha(1);
draw_vertex(x+48*2*cos(degtorad(image_angle))-16*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))-16*5/6*image_yscale*cos(degtorad(image_angle)));

draw_vertex(x+48*2*cos(degtorad(image_angle))+16*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))+16*5/6*image_yscale*cos(degtorad(image_angle)));
draw_vertex(x+48*3*cos(degtorad(image_angle))+16*image_yscale*sin(degtorad(image_angle)),
	y-48*3*sin(degtorad(image_angle))+16*image_yscale*cos(degtorad(image_angle)));
draw_set_alpha(0);
draw_vertex(x+48*3*cos(degtorad(image_angle))+8*image_yscale*sin(degtorad(image_angle)),
	y-48*3*sin(degtorad(image_angle))+8*image_yscale*cos(degtorad(image_angle)));
draw_vertex(x+48*3*cos(degtorad(image_angle))+8*image_yscale*sin(degtorad(image_angle)),
	y-48*3*sin(degtorad(image_angle))+8*image_yscale*cos(degtorad(image_angle)));
draw_vertex(x+48*2*cos(degtorad(image_angle))+8*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))+16*5/6*image_yscale*cos(degtorad(image_angle)));
draw_set_alpha(1);
draw_vertex(x+48*2*cos(degtorad(image_angle))+16*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))+16*5/6*image_yscale*cos(degtorad(image_angle)));
draw_primitive_end();
draw_set_color(c_white);
/*
draw_line_width_color(x+48*2*cos(degtorad(image_angle))-16*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))-16*5/6*image_yscale*cos(degtorad(image_angle)),
	x+48*3*cos(degtorad(image_angle))-16*image_yscale*sin(degtorad(image_angle)),
	y-48*3*sin(degtorad(image_angle))-16*image_yscale*cos(degtorad(image_angle)),
	image_yscale, c_black, c_black);
draw_line_width_color(x+48*2*cos(degtorad(image_angle))+16*5/6*image_yscale*sin(degtorad(image_angle)),
	y-48*2*sin(degtorad(image_angle))+16*5/6*image_yscale*cos(degtorad(image_angle)),
	x+48*3*cos(degtorad(image_angle))+16*image_yscale*sin(degtorad(image_angle)),
	y-48*3*sin(degtorad(image_angle))+16*image_yscale*cos(degtorad(image_angle)),
	image_yscale, c_black, c_black);
*/

for(i=3; i<30; i+=1) {
	rx = irandom_range(0, 47); ry = 0; // ry = random_range(-4, 4);
	draw_sprite_general(sprBoss04_65, current_time+i, rx, 0, 16, 64,
		x+32*i*cos(degtorad(image_angle))-(16*image_yscale+ry)*sin(degtorad(image_angle)),
		y-32*i*sin(degtorad(image_angle))-(16*image_yscale+ry)*cos(degtorad(image_angle)),
		2, image_yscale/2, image_angle, c_white, c_white, c_white, c_white, 1);
	draw_set_color(c_black);
	draw_primitive_begin(pr_trianglelist);
	draw_set_alpha(1);
	draw_vertex(x+32*i*cos(degtorad(image_angle))-(16*image_yscale+ry)*sin(degtorad(image_angle)),
		y-32*i*sin(degtorad(image_angle))-(16*image_yscale+ry)*cos(degtorad(image_angle)));
	draw_vertex(x+32*(i+1)*cos(degtorad(image_angle))-(16*image_yscale+ry)*sin(degtorad(image_angle)),
		y-32*(i+1)*sin(degtorad(image_angle))-(16*image_yscale+ry)*cos(degtorad(image_angle)));
	draw_set_alpha(0);
	draw_vertex(x+32*(i+1)*cos(degtorad(image_angle))-(8*image_yscale+ry)*sin(degtorad(image_angle)),
		y-32*(i+1)*sin(degtorad(image_angle))-(8*image_yscale+ry)*cos(degtorad(image_angle)));
	draw_vertex(x+32*(i+1)*cos(degtorad(image_angle))-(8*image_yscale+ry)*sin(degtorad(image_angle)),
		y-32*(i+1)*sin(degtorad(image_angle))-(8*image_yscale+ry)*cos(degtorad(image_angle)));
	draw_vertex(x+32*i*cos(degtorad(image_angle))-(8*image_yscale+ry)*sin(degtorad(image_angle)),
		y-32*i*sin(degtorad(image_angle))-(8*image_yscale+ry)*cos(degtorad(image_angle)));
	draw_set_alpha(1);
	draw_vertex(x+32*i*cos(degtorad(image_angle))-(16*image_yscale+ry)*sin(degtorad(image_angle)),
		y-32*i*sin(degtorad(image_angle))-(16*image_yscale+ry)*cos(degtorad(image_angle)));
	
	draw_vertex(x+32*i*cos(degtorad(image_angle))+(16*image_yscale+ry)*sin(degtorad(image_angle)),
		y-32*i*sin(degtorad(image_angle))+(16*image_yscale+ry)*cos(degtorad(image_angle)));
	draw_vertex(x+32*(i+1)*cos(degtorad(image_angle))+(16*image_yscale+ry)*sin(degtorad(image_angle)),
		y-32*(i+1)*sin(degtorad(image_angle))+(16*image_yscale+ry)*cos(degtorad(image_angle)));
	draw_set_alpha(0);
	draw_vertex(x+32*(i+1)*cos(degtorad(image_angle))+(8*image_yscale+ry)*sin(degtorad(image_angle)),
		y-32*(i+1)*sin(degtorad(image_angle))+(8*image_yscale+ry)*cos(degtorad(image_angle)));
	draw_vertex(x+32*(i+1)*cos(degtorad(image_angle))+(8*image_yscale+ry)*sin(degtorad(image_angle)),
		y-32*(i+1)*sin(degtorad(image_angle))+(8*image_yscale+ry)*cos(degtorad(image_angle)));
	draw_vertex(x+32*i*cos(degtorad(image_angle))+(8*image_yscale+ry)*sin(degtorad(image_angle)),
		y-32*i*sin(degtorad(image_angle))+(8*image_yscale+ry)*cos(degtorad(image_angle)));
	draw_set_alpha(1);
	draw_vertex(x+32*i*cos(degtorad(image_angle))+(16*image_yscale+ry)*sin(degtorad(image_angle)),
		y-32*i*sin(degtorad(image_angle))+(16*image_yscale+ry)*cos(degtorad(image_angle)));
	draw_primitive_end();
	draw_set_color(c_white);
	/*
	draw_line_width_color(x+32*i*cos(degtorad(image_angle))-(16*image_yscale+ry)*sin(degtorad(image_angle)),
		y-32*i*sin(degtorad(image_angle))-(16*image_yscale+ry)*cos(degtorad(image_angle)),
		x+32*(i+1)*cos(degtorad(image_angle))-(16*image_yscale+ry)*sin(degtorad(image_angle)),
		y-32*(i+1)*sin(degtorad(image_angle))-(16*image_yscale+ry)*cos(degtorad(image_angle)),
		image_yscale, c_black, c_black);
	draw_line_width_color(x+32*i*cos(degtorad(image_angle))+(16*image_yscale+ry)*sin(degtorad(image_angle)),
		y-32*i*sin(degtorad(image_angle))+(16*image_yscale+ry)*cos(degtorad(image_angle)),
		x+32*(i+1)*cos(degtorad(image_angle))+(16*image_yscale+ry)*sin(degtorad(image_angle)),
		y-32*(i+1)*sin(degtorad(image_angle))+(16*image_yscale+ry)*cos(degtorad(image_angle)),
		image_yscale, c_black, c_black);
	*/
}