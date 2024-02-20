var i, bl;

if timer < 10 { //lasts 0.2 second
    timer += 1;
    for(i = 0; i < amount; i += 1) {
        bl = instance_create_depth(xx, yy, -15, blood);
        bl.speed = random(12);
        bl.direction = random(360);
        bl.gravity_direction = 90+180*Gravity+90*GravityH;
    }
} else {instance_destroy();}