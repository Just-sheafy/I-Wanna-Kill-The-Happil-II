var cam = view_camera[0];

radius = 0; //0 Radius (size)
radius_max = 150;
spd = 7;

if (!world.screen_effect_enable) { buffer_surface = -1; exit; }

buffer_surface = surface_create(camera_get_view_width(cam), camera_get_view_height(cam));
// Create a surface to fit the room. 

surface_set_target(buffer_surface); // Set the target to the buffer-surface
draw_clear(c_black);
surface_reset_target();