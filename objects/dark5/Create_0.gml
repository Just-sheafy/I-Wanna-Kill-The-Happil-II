var cam = view_camera[0];

image_xscale=32;
image_yscale=32;
x=camera_get_view_x(cam);
y=camera_get_view_y(cam);
image_alpha = random_range(1/3, 2/3);
alarm[0] = 25;

depth = -10;