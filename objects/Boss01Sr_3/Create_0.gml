angle = 0;
scale = 1;
dis = false;
canhit = true;
canhit_warp = false;

mode = 0;
num = 0;
col = c_white;

surf = -1;


function draw_hexagon(x, y, r, angle, outline) {
	var i;
	
	if (!outline) {
		for(i=0; i<6; i+=1) {
			draw_triangle(x, y, x+lengthdir_x(r, i*60+angle), y+lengthdir_y(r, i*60+angle),
				x+lengthdir_x(r, (i+1)*60+angle), y+lengthdir_y(r, (i+1)*60+angle), false);
		}
	} else {
		for(i=0; i<6; i+=1) {
			draw_line(x+lengthdir_x(r, i*60+angle), y+lengthdir_y(r, i*60+angle),
				x+lengthdir_x(r, (i+1)*60+angle), y+lengthdir_y(r, (i+1)*60+angle));
		}
	}
}