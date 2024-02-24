var temp;

t += 1;
if (t < 50) {
    if (image_xscale < 1) {
        image_xscale += 0.1;
        image_yscale = image_xscale;
    }
} else if (t == 50) {
    temp = instance_create_depth(x+57, y, -4, Boss04_47);
    temp.image_angle = -135;
    temp.sid = id;
    temp.ox = 57;
    temp.oy = 0;
	
    temp = instance_create_depth(x, y-57, -4, Boss04_47);
    temp.image_angle = -135 + 90;
    temp.sid = id;
    temp.ox = 0;
    temp.oy = -57;
    
    temp = instance_create_depth(x-57, y, -4, Boss04_47);
    temp.image_angle = -135 + 180;
    temp.sid = id;
    temp.ox = -57;
    temp.oy = 0;
    
    temp = instance_create_depth(x, y+57, -4, Boss04_47);
    temp.image_angle = -135 + 270;
    temp.sid = id;
    temp.ox = 0;
    temp.oy = 57;
	
	if (instance_exists(player)) {
		temp = instance_create_depth(x, y, -50, surf_ripple);
	    temp.radius_max = 200;
	}
    
    audio_play_sound(snd04_37, 0, false, world.sound_vol);
} else if (t == 150) {
    temp = instance_create_depth(x+40, y-40, -4, Boss04_47);
    temp.image_angle = -90;
    temp.sid = id;
    temp.ox = 40;
    temp.oy = -40;
    
    temp = instance_create_depth(x-40, y-40, -4, Boss04_47);
    temp.image_angle = -90 + 90;
    temp.sid = id;
    temp.ox = -40;
    temp.oy = -40;
    
    temp = instance_create_depth(x-40, y+40, -4, Boss04_47);
    temp.image_angle = -90 + 180;
    temp.sid = id;
    temp.ox = -40;
    temp.oy = 40;
    
    temp = instance_create_depth(x+40, y+40, -4, Boss04_47);
    temp.image_angle = -90 + 270;
    temp.sid = id;
    temp.ox = 40;
    temp.oy = 40;
	
	if (instance_exists(player)) {
		temp = instance_create_depth(x, y, -50, surf_ripple);
	    temp.radius_max = 200;
	}
    
    audio_play_sound(snd04_37, 0, false, world.sound_vol);
} else if (t >= 220) {
    if (image_xscale > 0) {
        image_xscale -= 0.05;
        image_yscale = image_xscale;
    } else instance_destroy();
}