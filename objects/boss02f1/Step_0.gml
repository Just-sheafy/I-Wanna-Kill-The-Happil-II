if !instance_exists(player) {alarm[0] = 0; exit;}
direction = point_direction(x, y, player.x, player.y);
speed = sp;
if hspeed < 0 {image_xscale = 1;}
if hspeed > 0 {image_xscale = -1;}