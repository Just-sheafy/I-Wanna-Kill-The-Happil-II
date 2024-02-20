if !instance_exists(player) {instance_destroy(); exit;}
if a > 0 {a -= 0.02;} else {instance_destroy();}
x = player.x;
if player.Gravity {y = player.y-32; scale = 1;} else {y = player.y+32; scale = -1;}