#region End Step collision with block
///Resolve collisions between step and now, collide with dynamic blocks
if (place_meeting(x, y, block)) {
    var dir_x = sign(x - xsafe);
    var dir_y = sign(y - ysafe);
    var num = 0, epsilon = 0.001; //Appease the floating point gods
    
    //If something moved the player into a block since Step, move back towards where we were until we're out of a block.
	while (place_meeting(x, y, block) && num < 32) {
		num += 1;
        if (dir_x * (x - xsafe) >= epsilon) {
            x -= sign(x - xsafe) * min( abs(x - xsafe), 1 );
        } else if (dir_y * (y - ysafe) >= epsilon) {
            y -= sign(y - ysafe) * min( abs(y - ysafe), 1 );
        } else {
			break;
		}
    }
	
	if (place_meeting(x, y, block)) kill_player(true);
}

#endregion

#region Old collision with platform
var platform = instance_place(x, y, platform_parent);

if (platform != noone) {
	if (GravityH) {
		if ((Gravity && x - hspd / 2 <= platform.bbox_left) || (!Gravity && x - hspd / 2 >= platform.bbox_right)) {
			x = (Gravity) ? platform.bbox_left - 9 : platform.bbox_right + 9;
			hspd = platform.hspeed;
			on_platform = true;
			reset_jumps();
		}
	} else {
		if ((Gravity && y - vspd / 2 <= platform.bbox_top) || (!Gravity && y - vspd / 2 >= platform.bbox_bottom)) {
			y = (Gravity) ? platform.bbox_top - 9 : platform.bbox_bottom + 9;
			vspd = platform.vspeed;
			on_platform = true;
			reset_jumps();
		}
	}
}
#endregion

#region Collision with killers
var killer = instance_place(x, y, kill_character);

if (killer != noone) {
	kill_player();
}
#endregion

#region Touches screen border
if (world.kill && outside_room()) {
	kill_player(true);
}
#endregion

#region ETC
if (invinc && invinc_time > 0) {
	invinc_time -= 1;
	image_alpha = 1 - 0.5 * ((invinc_time mod 12) >= 6)
} else {
	invinc = false;
	invinc_time = 0;
	image_alpha = 1;
}

with(Hamjung03I) {
	x = player.x+ox;
	y = player.y+oy;
	sprite_index = player.sprite_index;
	image_index = player.image_index;
	mask_index = player.mask_index;
	image_xscale = player.image_xscale * player.xscale;
	image_yscale = player.image_yscale * (2*player.Gravity-1);
	image_speed = player.image_speed;
	
	var killer = instance_place(x, y, kill_character);
	
	if (killer != noone) {
		with(player) kill_player();
	}
}
#endregion