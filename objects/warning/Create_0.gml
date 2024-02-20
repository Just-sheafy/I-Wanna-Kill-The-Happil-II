var cam = view_camera[0];

direction = point_direction(x, y, camera_get_view_x(cam)+ camera_get_view_width(cam)/2+random_range(-150,150),
	camera_get_view_y(cam)+ camera_get_view_height(cam)/2+random_range(-100,100));
image_angle = direction+180;
if image_angle >= 360 {image_angle -= 360;}
speed = 40;
a = 255; d = 0;
ox = x-camera_get_view_x(cam);
oy = y-camera_get_view_y(cam);
alarm[0] = 20;