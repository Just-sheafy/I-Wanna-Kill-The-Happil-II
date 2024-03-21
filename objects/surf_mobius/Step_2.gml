var w, h, cam = view_camera[0];

if (!enable) {instance_destroy(); exit;}
if (!surface_exists(surface)) {
	surface = surface_create(camera_get_view_width(cam), camera_get_view_height(cam));
	view_surface_id[0] = surface;
}

w = camera_get_view_width(cam);
h = camera_get_view_height(cam);

surface_set_target(surface);
gpu_set_blendmode_ext(bm_one,bm_zero);
if (surface_exists(application_surface))
	draw_surface(application_surface,0,0);

gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(1);
draw_rectangle(0,0,w,h,false);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode(bm_normal);
surface_reset_target();