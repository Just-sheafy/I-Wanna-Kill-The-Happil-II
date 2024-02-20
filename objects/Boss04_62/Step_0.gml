var val, xx0, yy0, xx1, yy1, temp, dir, angle_diff;

if (!jumping) {
    xx0 = (foot_0.x + 2*foot_0.x_after)/3;
    yy0 = (foot_0.y + 2*foot_0.y_after)/3;
    xx1 = (foot_1.x + 2*foot_1.x_after)/3;
    yy1 = (foot_1.y + 2*foot_1.y_after)/3;
    
    dir = point_direction(xx0, yy0, xx1, yy1);
    ox = (xx0+xx1)/2;
    ox_over = (ox >= 400);
    ox -= 160*abs(sin(degtorad(dir))) * (2*ox_over-1);
    oy = (yy0+yy1)/2;
    oy_over = (oy >= 304);
    oy -= 160*abs(cos(degtorad(dir))) * (2*oy_over-1);
    
    x_origin += (ox-x_origin)/40;
    y_origin += (oy-y_origin)/40;
} else {
    xx0 = (foot_0.x + 2*foot_0.x)/3;
    yy0 = (foot_0.y + 2*foot_0.y)/3;
    xx1 = (foot_1.x + 2*foot_1.x)/3;
    yy1 = (foot_1.y + 2*foot_1.y)/3;
    
    dir = point_direction(xx0, yy0, xx1, yy1);
    ox = (xx0+xx1)/2;
    ox -= 160*abs(sin(degtorad(dir))) * (2*ox_over-1);
    oy = (yy0+yy1)/2;
    oy -= 160*abs(cos(degtorad(dir))) * (2*oy_over-1);
    
    x_origin += (ox-x_origin)/15;
    y_origin += (oy-y_origin)/15;
}

d += 4;
x = x_origin + 5*sin(degtorad(image_angle))*sin(degtorad(d));
y = y_origin + 5*cos(degtorad(image_angle))*sin(degtorad(d));

if (!jumping) {
    angle = point_direction(ox, oy, (xx0+xx1)/2, (yy0+yy1)/2)+90;
    angle_diff = (angle - image_angle) mod 360;
    while(angle_diff < 0) angle_diff += 360;
    
    if (angle_preserved == 0) {
        if (angle_diff >= 180) angle_diff -= 360;
        if (angle_diff >= 90) angle_preserved = 1;
        if (angle_diff <= -90) angle_preserved = -1;
    } else if (angle_preserved == 1) {
        if (angle_diff <= 90) angle_preserved = 0;
    } else {
        angle_diff -= 360;
        if (angle_diff >= -90) angle_preserved = 0;
    }
    image_angle += angle_diff/16;
}

t += abs(t_spd);
t2 += abs(t_spd);

if (t >= 32 && t_spd < 0) {
	t -= 64;
	if (t2 >= 192) { t2 -= 384; }
	
	temp = instance_create_depth(32, 0, 5, Boss04_40);
	temp.visible = false;
	temp.vspeed = abs(t_spd);
	temp = instance_create_depth(800-32, 608, 5, Boss04_40);
	temp.visible = false;
	temp.grav_dir = 180;
	temp.vspeed = -abs(t_spd);

	temp = instance_create_depth(800, 32, 5, Boss04_40);
	temp.visible = false;
	temp.grav_dir = 270;
	temp.hspeed = -abs(t_spd);
	temp = instance_create_depth(0, 608-32, 5, Boss04_40);
	temp.visible = false;
	temp.grav_dir = 90;
	temp.hspeed = abs(t_spd);
}

if (t >= 32 && t_spd > 0) {
	t -= 64;
	if (t2 >= 192) { t2 -= 384; }
	
	temp = instance_create_depth(32, 608, 5, Boss04_40);
	temp.visible = false;
	temp.vspeed = -abs(t_spd);
	temp = instance_create_depth(800-32, 0, 5, Boss04_40);
	temp.visible = false;
	temp.grav_dir = 180;
	temp.vspeed = abs(t_spd);

	temp = instance_create_depth(0, 32, 5, Boss04_40);
	temp.visible = false;
	temp.grav_dir = 270;
	temp.hspeed = abs(t_spd);
	temp = instance_create_depth(800, 608-32, 5, Boss04_40);
	temp.visible = false;
	temp.grav_dir = 90;
	temp.hspeed = -abs(t_spd);
}

while(image_angle < 0) image_angle += 360;
while(image_angle >= 360) image_angle -= 360;
if (image_angle >= 315 || image_angle < 45) {
	back_effect.col_after[0] = 15;
	back_effect.col_after[1] = 0;
	back_effect.col_after[2] = 1;
} else if (image_angle >= 45 && image_angle < 135) {
	back_effect.col_after[0] = 15;
	back_effect.col_after[1] = 15;
	back_effect.col_after[2] = 1;
} else if (image_angle >= 135 && image_angle < 225) {
	back_effect.col_after[0] = 1;
	back_effect.col_after[1] = 15;
	back_effect.col_after[2] = 15;
} else {
	back_effect.col_after[0] = 0;
	back_effect.col_after[1] = 15;
	back_effect.col_after[2] = 1;
}