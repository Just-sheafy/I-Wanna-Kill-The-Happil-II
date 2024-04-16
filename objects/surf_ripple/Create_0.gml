var cam = view_camera[0];

radius = 0; //0 Radius (size)
radius_max = 150;
spd = 7;

if (!world.screen_effect_enable) { buffer_surface = -1; exit; }

buffer_surface = -1;