//Keep "cleaning the surface"
var w, h, cam = view_camera[0];

if (!world.screen_effect_enable) {
	instance_destroy(); exit;
}

w = camera_get_view_width(cam);
h = camera_get_view_height(cam);

if (!surface_exists(buffer_surface)) {
    buffer_surface = surface_create(w, h);
}

surface_set_target(buffer_surface);
draw_clear(c_black);
gpu_set_blendmode_ext(bm_one,bm_zero);
if (surface_exists(application_surface))
	draw_surface(application_surface,0,0);

gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(1);
draw_rectangle(0,0,w,h,false);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode(bm_normal);
surface_reset_target();