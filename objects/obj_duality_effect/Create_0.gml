///Init variables

col1 = c_red; //Left side (invert value)
col2 = c_aqua; //Right side (invert value)

col_light = c_white; //White part will be drawn
col_dark = c_gray; //Black part will be unchanged


//Create surface and then draw mask
surf = surface_create(400, 640);

surface_set_target(surf);
draw_rectangle_color(0, 0, 400, 640, col_dark, col_light, col_light, col_dark, false);
surface_reset_target()