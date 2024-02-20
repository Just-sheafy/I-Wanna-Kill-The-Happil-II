var __screen, mouse_sonic, mouse_in_window, old_mouse_x, old_mouse_y, new_mouse_x, new_mouse_y, mouse_dir, dist, cam;

__screen = window_get_fullscreen();
cam = view_camera[0];

if (__screen) {
	old_mouse_x = mouse_x;
	old_mouse_y = mouse_y;
} else {
	old_mouse_x = display_mouse_get_x() - window_get_x();
	old_mouse_y = display_mouse_get_y() - window_get_y();
}
mouse_in_window = (old_mouse_x > camera_get_view_x(cam) && old_mouse_x < (800 + camera_get_view_x(cam)) // Horizontal
                    && old_mouse_y > camera_get_view_y(cam) && old_mouse_y < (608 + camera_get_view_y(cam))) // Vertical
mouse_sonic = (room == Stage04Bs6);

if (instance_exists(MouseC) && (mouse_sonic || mouse_in_window) && !world.items[1]) {
    mouse_dir = point_direction(old_mouse_x - buffer_x, old_mouse_y - buffer_y, x, y); // Direction to following object
	
	if (!mouse_sonic || __screen) {
	    dist = min(1.5, point_distance(x, y, old_mouse_x - buffer_x, old_mouse_y - buffer_y)); // Snap to object if too close
	    new_mouse_x = window_mouse_get_x() + lengthdir_x(dist, mouse_dir); // Real new position
	    new_mouse_y = window_mouse_get_y() + lengthdir_y(dist, mouse_dir);
	} else {
		dist = min(1.5, power(point_distance(x, y, old_mouse_x - buffer_x, old_mouse_y - buffer_y) / 350, 0.5));
		mouse_hspd += lengthdir_x(dist, mouse_dir);
		mouse_vspd += lengthdir_y(dist, mouse_dir);
		new_mouse_x = window_mouse_get_x() + mouse_hspd; // Real new position
		new_mouse_y = window_mouse_get_y() + mouse_vspd;
	}
	
    buffer_x += round(new_mouse_x) - new_mouse_x; // You can set only integer coords for mouse, so floating part should be saved manually
    buffer_y += round(new_mouse_y) - new_mouse_y;
    new_mouse_x = round(new_mouse_x); // Round manually to make sure coords are correct
    new_mouse_y = round(new_mouse_y);
    
    if(abs(buffer_x) >= 1) // Use horizontal buffer
    {
        new_mouse_x -= sign(buffer_x);
        buffer_x -= sign(buffer_x);
    }
    if(abs(buffer_y) >= 1) // Use vertical buffer
    {
        new_mouse_y -= sign(buffer_y);
        buffer_y -= sign(buffer_y);
    }    
    
	if (!mouse_sonic || __screen)
		window_mouse_set(new_mouse_x, new_mouse_y);
	else window_mouse_set(clamp(new_mouse_x, 2, room_width-2), clamp(new_mouse_y, 2, room_height-2));
}

image_angle = 90*GravityH;

if (noGravity) {
	effect_create_below(ef_flare, x+random_range(5,-5),y+random_range(2,5),0.5,
		make_color_hsv(irandom_range(25,35),255,255));
}