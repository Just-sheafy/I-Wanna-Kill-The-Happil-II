var cam = view_camera[0];

direction = point_direction(x, y, camera_get_view_x(cam)+camera_get_view_width(cam)/2,
	camera_get_view_y(cam)+camera_get_view_height(cam)/2);
speed = 40;
ox = x-camera_get_view_x(cam);
oy = y-camera_get_view_y(cam);
alarm[0] = 20;
alarm[11] = 1;
ang = choose(0, 1, 2, 3, 4, 5, 6);
if ang == 1 {sprite_index=sprHappilous2; x+=100; ox+=100;}
if ang == 2 {sprite_index=sprHappilous3; x+=200; ox+=200;}
if ang == 3 {sprite_index=sprHappilous4; x+=100; ox+=100;}
if ang == 4 {sprite_index=sprHappilous5;}
if ang == 5 {sprite_index=sprHappilous6; x+=100; ox+=100;}
if ang == 6 {sprite_index=sprHappilous7; x+=100; ox+=100;}