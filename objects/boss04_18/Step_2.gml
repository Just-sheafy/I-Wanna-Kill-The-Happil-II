if (!world.screen_effect_enable) exit;

var i, j, ii, jj, xx, yy, xxx, yyy, rr, w, h;
var cam_w, cam_h, cam = view_camera[0];

cam_w = camera_get_view_width(cam);
cam_h = camera_get_view_height(cam);

if (!surface_exists(surf)) {
    surf = surface_create(cam_w, cam_h);
	// view_surface_id[0] = surf;
}

surface_set_target(surf);
gpu_set_blendmode_ext(bm_one,bm_zero);
if (surface_exists(application_surface))
	draw_surface(application_surface,0,0);

gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(1);
draw_rectangle(0,0,cam_w,cam_h,false);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode(bm_normal);
surface_reset_target();