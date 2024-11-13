var i, w, h, back_id, cam = view_camera[0];

w = camera_get_view_width(cam);
h = camera_get_view_height(cam);


if (surface_exists(application_surface))
	spr__ppp = sprite_create_from_surface(application_surface,0,0,w,h,0,0,0,0);
else
	spr__ppp = noone;

precision=1; //adjust the blur precision (1 : accurate ~ 10 : abstract)
amount=10; //adjust the blur amount

blur_1X = surface_create(w,h);
blur_2X = surface_create(w,h);

surface_set_target(blur_2X);
gpu_set_blendmode_ext(bm_one,bm_zero);
if (surface_exists(application_surface))
	draw_surface(application_surface,0,0);

gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(1);
draw_rectangle(0,0,w,h,false);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode(bm_normal);
surface_reset_target();


instance_deactivate_all(1);
instance_activate_object(world);
// application_surface_enable(false);

audio_pause_sound(world.Instance);

for(i=0; i<8; i+=1) {
    back_hspeed[i] = 0;
    back_vspeed[i] = 0;
	
	if (i > 0) {
		if (!layer_exists("Background" + string(i))) continue;
		back_id = layer_get_id("Background" + string(i));
	} else back_id = layer_get_id("Background");
	
    back_hspeed[i] = layer_get_hspeed(back_id);
    back_vspeed[i] = layer_get_vspeed(back_id);
	layer_hspeed(back_id, 0);
	layer_vspeed(back_id, 0);
}