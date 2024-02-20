var xx, yy, w, h, cam = view_camera[0];

xx = camera_get_view_x(cam);
yy = camera_get_view_y(cam);
w = camera_get_view_width(cam);
h = camera_get_view_height(cam);

gpu_set_texfilter(true);

if(surface_exists(blur_1X) && surface_exists(blur_2X))
	draw_surface(blur_2X,xx,yy);

gpu_set_texfilter(false);


draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_alpha((amount/10)*.5)
draw_set_color(0)
draw_set_font(pauseFont24)
draw_text(w/2+2+xx,h/2+2-16+yy,"game paused");
draw_set_font(pauseFont12)
draw_text(w/2+2+xx,h/2+2+16+yy,"press enter");

draw_set_alpha(amount/10)
draw_set_color(c_white)
draw_set_font(pauseFont24)
scr_draw_text_outline_grad(w/2+xx, h/2-16+yy, "GAME PAUSED", c_white, c_gray, c_black);
// draw_text(w/2+xx,h/2-16+yy,'GAME PAUSED')
draw_set_font(pauseFont12)
scr_draw_text_outline_grad(w/2+xx, h/2+16+yy, "Press Enter", c_white, c_gray, c_black);
// draw_text(w/2+xx,h/2+16+yy,'press enter')
draw_set_font(pauseFont24)

draw_set_halign(fa_left)
scr_draw_text_outline_grad(xx+32, yy+520, "Deaths: "+string(world.deaths[0]), c_white, c_gray, c_black);
//draw_text(xx+32, yy+520, 'Deaths: '+string(world.deaths))
scr_draw_text_outline_grad(xx+32, yy+560, "Time: "+string(world.h)+":"+string(world.m)+":"+string(world.s),
	c_white, c_gray, c_black);
// draw_text(xx+32, yy+560, 'Time: '+string(world.h)+':'+string(world.m)+':'+string(world.s))
draw_set_alpha(1);