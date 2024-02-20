if !instance_exists(player) and !a {speed = 0; gravity = 0; alarm[0] = 0; alarm[1] = 0; alarm[2] = 0;}
if y < -200 and vspeed < 0 {instance_destroy();}