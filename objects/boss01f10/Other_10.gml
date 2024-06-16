/// @description Redraw

surface_set_target(surf);
draw_clear_alpha(c_black, 1);
gpu_set_blendmode_ext(bm_zero, bm_zero);
draw_primitive_begin(pr_trianglefan);
var x1,x2,y1,y2;
var x3,x4,y3,y4;
if(idx == 0)
{
	x1 = 623;
	y1 = 0;
	x2 = 670;
	y2 = 0;
	x3 = 0;
	y3 = 453;
	x4 = 0;
	y4 = 216;			
}

else if(idx == 1)
{
	x1 = 130;
	y1 = 0;
	x2 = 176;
	y2 = 0;
	x3 = 800;
	y3 = 216;
	x4 = 800;
	y4 = 452;			
}
else //if(idx == 2)
{
	x1 = 312;
	y1 = 0;
	x2 = 482;
	y2 = 0;
	x3 = 572;
	y3 = 608;
	x4 = 228;
	y4 = 608;			
}

draw_vertex(x1, y1);	
draw_vertex(x2, y2);	
draw_vertex(x3, y3);	
draw_vertex(x4, y4);	
draw_primitive_end();
gpu_set_blendmode(bm_normal);
draw_set_color(c_dkgray);
draw_line_width(x1, y1, x4, y4, 5);
draw_line_width(x2, y2, x3, y3, 5);
draw_set_color(c_white);
surface_reset_target();