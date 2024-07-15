// @description Clear!

var cam = view_camera[0];

scale=32;
alpha = 0;
x=camera_get_view_x(cam);
y=camera_get_view_y(cam);

a = 0;
b = 0;
c = 1;
with(MouseC) {instance_destroy();}
Instance = -1;