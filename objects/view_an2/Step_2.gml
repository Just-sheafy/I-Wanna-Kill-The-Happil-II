var cam = view_camera[0];

if (!world.screen_effect_enable) {
	instance_destroy(); exit;
}

if (instance_exists(Boss04_18)) camera_set_view_angle(cam, 0);

if !zxcv {zxcv = 1; camera_set_view_angle(cam, choose(asdf, -asdf));}
if camera_get_view_angle(cam) < 0 {camera_set_view_angle(cam, camera_get_view_angle(cam)+2);}
if camera_get_view_angle(cam) > 0 {camera_set_view_angle(cam, camera_get_view_angle(cam)-2);}
if abs(camera_get_view_angle(cam)) <= 1 {camera_set_view_angle(cam, 0);
	with(surf_rotate) instance_destroy(); instance_destroy();}