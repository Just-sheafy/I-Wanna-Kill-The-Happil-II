// tongue

var temp;

if (patt == 0) {
	audio_play_sound(sndSr01_3, 0, false);
	if (instance_exists(player)) {
		if (x < player.x)
			temp = instance_create_depth(x+93, y-66, depth+1, Boss01Sr_6);
		else temp = instance_create_depth(x-93, y-72, depth+1, Boss01Sr_6);
		temp.image_xscale = 0;
		temp.image_index = 1;
		temp.image_angle = point_direction(temp.x, temp.y, player.x, player.y);
		temp.spd = (point_distance(temp.x, temp.y, player.x, player.y)+100)/20;
		temp.grav = -temp.spd/40;
	} else {
		temp = instance_create_depth(x-93, y-72, depth+1, Boss01Sr_6);
		temp.image_xscale = 0;
		temp.image_index = 1;
		temp.image_angle = point_direction(temp.x, temp.y, 0, 0);
		temp.spd = (point_distance(temp.x, temp.y, 0, 0)+100)/20;
		temp.grav = -temp.spd/40;
	}
	
	with(temp) {
		var temp = instance_create_depth(x, y, depth, Boss01Sr_6);
		temp.image_index = 0;
		temp.image_angle = image_angle;
		temp.sid = id;
		sid = temp;
	}
	
	patt += 1;
	alarm[0] = 100;
} else {
	action = false;
	patt = 0;
}