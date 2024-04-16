if (patt == 0) {
	audio_play_sound(snd04_57, 0, false, world.sound_vol);
	
	var zx = instance_create_depth(0, 0, 0, view_an1);
	zx.asdf = 270;
    mode = 1;
	patt += 1;
    alarm[0] = 25;
} else if (patt == 1) {
    mode = 2;
	patt += 1;
    alarm[0] = 50;
} else if (patt == 2) {
    mode = 3;
	patt += 1;
    alarm[0] = 25;
} else if (patt <= 5) {
	var w, h, cam = view_camera[0];
	
	w = camera_get_view_width(cam);
	h = camera_get_view_height(cam);
	
	if (patt != 3) {
		if (!surface_exists(surf[patt-3])) {
		    surf[patt-3] = surface_create(w, h);
		}
		
		surface_set_target(surf[patt-3]);
		gpu_set_blendmode_ext(bm_one,bm_zero);
		if (surface_exists(application_surface))
			draw_surface(application_surface,0,0);
	
		gpu_set_colorwriteenable(false,false,false,true);
		draw_set_alpha(1);
		draw_rectangle(0,0,w,h,false);
		gpu_set_colorwriteenable(true,true,true,true);
	
		gpu_set_blendmode(bm_normal);
		surface_reset_target();
	}
	
	patt += 1;
    if (patt == 4) alarm[0] = 80;
	else alarm[0] = 45;
} else if (patt == 6) {
    Instance = audio_play_sound(snd04_1, 0, false, world.sound_vol);
	
	mode = 4;
	depth = -10;
	with(view_an1) instance_destroy();
	with(player) instance_destroy();
	with(Boss04_51) instance_destroy();
	with(Boss04_55) instance_destroy();
	with(Boss04_56) instance_destroy();
	with(objEndCredit) instance_destroy();
	
    patt += 1;
    alarm[0] = 80;
} else if (patt == 7) {
    audio_stop_sound(Instance);
    Instance = audio_play_sound(snd04_2, 0, true, world.sound_vol);
    
    patt += 1;
    alarm[0] = 130;
} else if (patt == 8) {
	noise = true;
	patt += 1;
	alarm[0] = 20;
} else {
	audio_stop_sound(Instance);
	audio_stop_sound(Instance2);
	room_goto(Stage04Bs7);
}