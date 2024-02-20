var xx, yy, w, h, cam = view_camera[0];

if (!surface_exists(surface)) exit;

xx = camera_get_view_x(cam);
yy = camera_get_view_y(cam);
w = camera_get_view_width(cam);
h = camera_get_view_height(cam);

draw_clear_alpha(c_black, 0);
draw_surface_ext(surface, xx, yy, 1, 1, 0, c_white, 1);

draw_surface_ext(surface, round(xx/800)*800 + (xx-round(xx/800)*800)*(1/2), round(yy/608)*608 + (yy-round(yy/608)*608)*(1/2), 1, 1, 0, c_white, 5/6);
draw_surface_ext(surface, xx + (xx-round(xx/800)*800)*(1/2), yy + (yy-round(yy/608)*608)*(1/2), 1, 1, 0, c_white, 5/6);

draw_surface_ext(surface, round(xx/800)*800, round(yy/608)*608, 1, 1, 0, c_white, 4/6);
draw_surface_ext(surface, xx + (xx-round(xx/800)*800)*(2/2), yy + (yy-round(yy/608)*608)*(2/2), 1, 1, 0, c_white, 4/6);

draw_surface_ext(surface, round(xx/800)*800 - (xx-round(xx/800)*800)*(1/2), round(yy/608)*608 - (yy-round(yy/608)*608)*(1/2), 1, 1, 0, c_white, 3/6);
draw_surface_ext(surface, xx + (xx-round(xx/800)*800)*(3/2), yy + (yy-round(yy/608)*608)*(3/2), 1, 1, 0, c_white, 3/6);

draw_surface_ext(surface, round(xx/800)*800 - (xx-round(xx/800)*800)*(2/2), round(yy/608)*608 - (yy-round(yy/608)*608)*(2/2), 1, 1, 0, c_white, 2/6);
draw_surface_ext(surface, xx + (xx-round(xx/800)*800)*(4/2), yy + (yy-round(yy/608)*608)*(4/2), 1, 1, 0, c_white, 2/6);

draw_surface_ext(surface, round(xx/800)*800 - (xx-round(xx/800)*800)*(3/2), round(yy/608)*608 - (yy-round(yy/608)*608)*(3/2), 1, 1, 0, c_white, 1/6);
draw_surface_ext(surface, xx + (xx-round(xx/800)*800)*(5/2), yy + (yy-round(yy/608)*608)*(5/2), 1, 1, 0, c_white, 1/6);