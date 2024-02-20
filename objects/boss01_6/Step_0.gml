if vspeed < 0 and y < -200 {instance_destroy();}
if !instance_exists(player) {
    if patt == 0 and alarm[0] != 0 {exit;}
	var i;
    for(i=0; i<4; i+=1) {alarm[i] = 0;}
}