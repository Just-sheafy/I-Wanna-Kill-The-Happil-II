var cam = view_camera[0];

x=camera_get_view_x(cam);
y=camera_get_view_y(cam);

if b == 0 {
    if alpha < a {alpha += 0.01;}
} else {
    if alpha > 0 {alpha -= 0.01;} else {instance_destroy();}
}