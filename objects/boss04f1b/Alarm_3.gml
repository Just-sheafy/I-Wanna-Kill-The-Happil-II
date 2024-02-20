if (!instance_exists(player) && !not_check) {
    world.var_temp = 0;
    with(dark2) instance_destroy();
    with(world) {
        if (surf_temp != -1 and surface_exists(surf_temp)) {
            surface_free(surf_temp);
            surf_temp = -1;
        }
    }
    exit;
}

if (a == -1) {
	instance_create_depth(400, -224, -4, Boss04_60);
	a += 1;
} else if a == 0 {
    if (world.var_temp == 0) world.var_temp = 2; // global.catastrophe
    if (!world.screen_effect_enable || world.var_temp != 2) {
        instance_create_depth(0, 0, -100, dark2);
	} else {
        with(player) visible = false;
        with(world) {
            var w, h, cam = view_camera[0];
			
			w = camera_get_view_width(cam);
			h = camera_get_view_height(cam);
			
            if (surf_temp != -1 and surface_exists(surf_temp)) surface_free(surf_temp);
            surf_temp = surface_create(w/4, h/4);
			
            surface_set_target(surf_temp);
            draw_clear_alpha(c_black, 0);
            gpu_set_blendmode_ext(bm_one,bm_zero);
			if (surface_exists(application_surface))
				draw_surface_ext(application_surface,0,0,1/4,1/4,0,c_white,1);

			gpu_set_colorwriteenable(false,false,false,true);
			draw_set_alpha(1);
			draw_rectangle(0,0,w/4,h/4,false);
			gpu_set_colorwriteenable(true,true,true,true);

			gpu_set_blendmode(bm_normal);
            surface_reset_target();
        }
        with(player) visible = true;
    }
	
	a += 1;
	alarm[3] = 20;
} else {
	audio_play_sound(sndBlockChange, 0, false);
	if (world.var_temp == 2) {
	    with(player) {x = 400; y = 304;}
		with(playerHealth) {world.hp_before = hp;}
	    room_goto(Stage04Bs4);
	} else {
		world.var_temp = 0;
		with(player) {x = 177; y = 279;}
		with(playerHealth) {world.hp_before = hp;}
	    room_goto(Stage04Bs5);
		world.re_nodie = true;
	}
}