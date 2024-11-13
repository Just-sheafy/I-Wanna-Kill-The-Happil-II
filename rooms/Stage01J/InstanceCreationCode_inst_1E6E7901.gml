trigger_activate = function() {
	var num = 100, cam_y, cam = view_camera[0];
	var surf_temp, inc = Hamjung01J1.inc, shuffle = Hamjung01J1.shuffle, alpha = dark5.alpha;
	
	surf_temp = surface_create(800, 608);
	cam_y = camera_get_view_y(cam);
	
    surface_set_target(surf_temp);
    draw_clear_alpha(c_black, 0);
    gpu_set_blendmode_ext(bm_one,bm_zero);
	if (surface_exists(application_surface))
		draw_surface_ext(application_surface,0,0,1,1,0,c_white,1);
	
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(1);
	draw_rectangle(0,0,800,608,false);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode(bm_normal);
	
	draw_set_color(make_color_rgb(255*(1-alpha), 255*(1-alpha), 255*(1-alpha)));
	draw_sprite(sprHamjung01J7, 2*inc+shuffle, 64+16, 1440+16-cam_y);
	draw_sprite(sprHamjung01J7, 3*inc+shuffle, 192+16, 1440+16-cam_y);
	draw_sprite(sprHamjung01J7, 4*inc+shuffle, 256+16, 1472+16-cam_y);
	draw_sprite(sprHamjung01J7, 5*inc+shuffle, 96+16, 1504+16-cam_y);
	draw_set_color(c_white);
	
    surface_reset_target();
	
	while(file_exists("screenshot" + string(num) + ".png")) num++;
	surface_save(surf_temp, "screenshot" + string(num) + ".png");
	surface_free(surf_temp);
	
	audio_play_sound(sndCamera, 0, false, world.sound_vol);
	instance_create_layer(0, cam_y, "Player", light);
};