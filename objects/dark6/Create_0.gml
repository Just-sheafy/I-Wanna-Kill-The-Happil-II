var cam = view_camera[0];

patt = 0;
radius = 1200;
alpha = 0;

surf = surface_create(camera_get_view_width(cam), camera_get_view_height(cam));
Instance = -1;

with(MouseC) {instance_destroy();}

depth = -15;