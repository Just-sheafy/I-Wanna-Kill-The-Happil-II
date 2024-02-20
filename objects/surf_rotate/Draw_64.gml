if (!surface_exists(surface2)) exit;

var cam = view_camera[0], angle;

angle = camera_get_view_angle(cam);

draw_clear_alpha(c_black, 0);
draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle)+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle)+304, 1, 1, angle, c_white, 1);

draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle*(4/5))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle*(4/5))+304, 1, 1, angle*(4/5), c_white, 5/6);
draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle*(6/5))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle*(6/5))+304, 1, 1, angle*(6/5), c_white, 5/6);

draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle*(3/5))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle*(3/5))+304, 1, 1, angle*(3/5), c_white, 4/6);
draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle*(7/5))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle*(7/5))+304, 1, 1, angle*(7/5), c_white, 4/6);

draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle*(2/5))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle*(2/5))+304, 1, 1, angle*(2/5), c_white, 3/6);
draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle*(8/5))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle*(8/5))+304, 1, 1, angle*(8/5), c_white, 3/6);

draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle*(1/5))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle*(1/5))+304, 1, 1, angle*(1/5), c_white, 2/6);
draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle*(9/5))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle*(9/5))+304, 1, 1, angle*(9/5), c_white, 2/6);

draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304))+304, 1, 1, 0, c_white, 1/6);
draw_surface_ext(surface2, -lengthdir_x(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle*(10/5))+400, -lengthdir_y(point_distance(0, 0, 400, 304), point_direction(0, 0, 400, 304)+angle*(10/5))+304, 1, 1, angle*(10/5), c_white, 1/6);