var cam = view_camera[2];

if d <= 90 {
    d += 4;
	camera_set_view_angle(cam, angle+180*sin(degtorad(d)));
} else {
    instance_destroy();
	camera_set_view_angle(cam, angle+180);
}