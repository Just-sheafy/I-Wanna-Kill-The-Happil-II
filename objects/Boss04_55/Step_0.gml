if (!instance_exists(player)) is_riding = false;

if (is_riding) {
    var dir_up = keyboard_check_direct(world.upKey);
	var dir_down = keyboard_check_direct(world.downKey);
	var dir_left = keyboard_check_direct(world.leftKey);
	var dir_right = keyboard_check_direct(world.rightKey);
	
    var h = dir_right;
    var v = dir_down;
    if (!h) h = -dir_left;
    if (!v) v = -dir_up;
	
	xsafe = x;
	ysafe = y;
    with(player) { sprite_index = sprPlayerIdle; image_speed = 1/5;}
    if (!frozen && instance_exists(player)) {
        x += 6*h;
        y += 6*v;
        if (h != 0) image_xscale = h;
		
		var dir_x = sign(x - xsafe);
	    var dir_y = sign(y - ysafe);
		var num = 0, diff = 0, epsilon = 0.001;
		
		player.x = x+image_xscale; player.y = y-20;
		while (place_meeting(player.x, player.y, block) && num < 32) {
			num += 1;
	        if (dir_x * (x - xsafe) >= epsilon) {
	            diff = sign(x - xsafe) * min( abs(x - xsafe), 1 );
				x -= diff;
				player.x -= diff;
	        } else if (dir_y * (y - ysafe) >= epsilon) {
	            diff = sign(y - ysafe) * min( abs(y - ysafe), 1 );
				y -= diff;
				player.y -= diff;
	        } else {
				break;
			}
	    }
		
		with(playerHealth) { x = player.x; y = player.y; }
    }
} else {
	ride_available = max(0, ride_available - 1);
    if (ride_available <= 0 && place_meeting(x, y, player)) {
		is_riding = true;
		with(player) { is_riding = true; hspd = 0; vspd = 0; grav = 0; }
	} else y += 1;
}

if (y >= room_height + 64) instance_destroy();