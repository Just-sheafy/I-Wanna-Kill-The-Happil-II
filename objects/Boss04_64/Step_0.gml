#region Movement
grav = grav_amount * (2*Gravity-1);

var dir_up = keyboard_check_direct(world.upKey);
var dir_down = keyboard_check_direct(world.downKey);
var dir_left = keyboard_check_direct(world.leftKey);
var dir_right = keyboard_check_direct(world.rightKey);
var dir = 0;

//If the player is frozen no movement is applied
if (!frozen) {
	if (GravityH) {
	    if (dir_up) {
	        dir = 1;
		} else if (dir_down) {
	        dir = -1;
		}
	} else {
	    if (dir_right) {
	        dir = 1;
		} else if (dir_left) {
	        dir = -1;
		}
	}
}

set_mask();

if (!global.console && dir != 0) {
	xscale = dir;
	if (GravityH) vspd = -max_hspd * dir;
	else hspd = max_hspd * dir;
	image_speed = 0.5;
	sprite_index = sprPlayerRunning;
} else {
	if (GravityH) vspd = 0;
	else hspd = 0;
	image_speed = 0.2;
	sprite_index = sprPlayerIdle;
}

if (GravityH) {
	if (hspd * (2*Gravity-1) < -0.05) {
		sprite_index = sprPlayerJump;
	} else if (hspd * (2*Gravity-1) > 0.05) {
		sprite_index = sprPlayerFall;
	}
	
	if (hspd * (2*Gravity-1) > max_vspd) {
		hspd = max_vspd * sign(hspd);
	}
} else {
	if (vspd * (2*Gravity-1) < -0.05) {
		sprite_index = sprPlayerJump;
	} else if (vspd * (2*Gravity-1) > 0.05) {
		sprite_index = sprPlayerFall;
	}
	
	if (vspd * (2*Gravity-1) > max_vspd) {
		vspd = max_vspd * sign(vspd);
	}
}

if (!global.console && !frozen) {
	if (keyboard_check_pressed(world.jumpKey)) {
		player_jump();
	}
		
	if (keyboard_check_released(world.jumpKey)) {
		player_fall();
	}
}

#endregion

#region Collision
//Storing the previous x and y
xprevious = x;
yprevious = y;

//Moving the player manually
if (!noGravity) {
	if (GravityH) {
		hspd += grav;
	} else {
		vspd += grav;
	}
}
x += hspd;
y += vspd;

xsafe = xprevious + hspd;
ysafe = yprevious + vspd;

#endregion