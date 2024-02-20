if (speed != 0 && image_alpha == 1) { //make sure the platform is moving before doing collision checks
	if (bounce) {
		//simple block bounce that will preserve height
		if (place_meeting(x + hspeed, y, block) || place_meeting(x + hspeed, y, platBlock)) { //Detect horizontal collision
			x -= hspeed;
			x_correction -= hspeed;
		    hspeed *= -1;
		} 
		if (place_meeting(x, y + vspeed, block) || place_meeting(x, y + vspeed, platBlock)) { //Detect vertical collision
			y -= vspeed;
			y_correction -= vspeed;
			vspeed *= -1;
		}
		if (place_meeting(x + hspeed, y + vspeed, block) || place_meeting(x + hspeed, y + vspeed, platBlock)) { //Detect diagonal collision
			x -= hspeed;
			x_correction -= hspeed;
			hspeed *= -1;
			
			y -= vspeed;
			y_correction -= vspeed;
			vspeed *= -1;
		}
	}
	
	if (instance_exists(player)) {
		if (player.GravityH) {
			with (instance_place(x, y, player)) {
				x += other.x_correction;
				x += other.hspeed;
			}
			with (instance_place(x + player.hspeed - 2 * (2 * player.Gravity-1), y, player)) {
			    if (!place_meeting(x, y + other.y_correction, block)) {
			        y += other.y_correction;
			    }
			    if (!place_meeting(x, y + other.vspeed, block)) {
			        y += other.vspeed;
			    }
			}
		} else {
			with (instance_place(x, y, player)) {
			    y += other.y_correction;
				y += other.vspeed;
			}
			with (instance_place(x, y + player.vspeed - 2 * (2 * player.Gravity-1), player)) {
			    if (!place_meeting(x + other.x_correction, y, block)) {
			        x += other.x_correction;
			    }
			    if (!place_meeting(x + other.hspeed, y, block)) {
			        x += other.hspeed;
			    }
			}
		}
	}
	
	x_correction = 0;
	y_correction = 0;
}