var i, bl;

if (mode == 0) {
	if timer < 10 { //lasts 0.2 second
	    timer += 1;
	    for(i = 0; i < amount; i += 1) {
	        bl = instance_create_depth(xx, yy, -15, blood);
	        bl.speed = random(12);
	        bl.direction = random(360);
	        bl.gravity_direction = 90+180*Gravity+90*GravityH;
	    }
	} else {instance_destroy();}
} else {
	if (timer > 0) {
		timer -= 1;
		repeat(40){
		    bl = instance_create_depth(xx, yy, -3, Boss04_33);
		    bl.speed = random_range(2, 12);
		    bl.direction = random(360);
			bl.gravity_direction = 90+180*Gravity+90*GravityH;
		}
	} else instance_destroy();
}