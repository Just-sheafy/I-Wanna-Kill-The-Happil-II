// @description Clear!

var cam = view_camera[0];

image_xscale=32;
image_yscale=32;
image_alpha = 0;
x=camera_get_view_x(cam);
y=camera_get_view_y(cam);

a = 0;
b = 0;
c = 1;
with(MouseC) {instance_destroy();}
Instance = -1;