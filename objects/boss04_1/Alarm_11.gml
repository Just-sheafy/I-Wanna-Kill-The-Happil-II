if (world.spr_temp != -1 and sprite_exists(world.spr_temp)) {
	var cam = view_camera[0];
			
	temp = instance_create_depth(0, 0, 0, view_break);
	temp.depth = -20;
	if (world.var_temp == 1) temp.Gravity = false;
	else if (world.var_temp == 2) temp.Gravity = true;
	if (!surface_exists(temp.surf))
		temp.surf = surface_create(camera_get_view_width(cam)/4, camera_get_view_height(cam)/4);
		    
	surface_set_target(temp.surf);
	draw_sprite(world.spr_temp, 0, 0, 0);
	surface_reset_target();
			
	sprite_delete(world.spr_temp);
	world.spr_temp = -1;
            
	with(temp) event_user(0);
	zx = instance_create_depth(0, 0, 0, view_an3);
	zx.asdf = 20;
}