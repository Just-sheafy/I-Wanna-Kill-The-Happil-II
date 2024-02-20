var temp, angle_diff;

if (a > 0 && a < 100) {
	a += 1;
	if alpha < 1 {alpha += 0.05;}
} else if (a >= 100) {
	a += 1;
	if alpha > 0 {alpha -= 0.05;}
	if (a >= 125) a = 0;
} else alpha = 0;

if (t >= 0 && t < 1) {
    t = min(1, t+0.01*sp);
    if (bezier) {
        x = (1-t) * ((1-t) * x_before + t * Boss04_62.x) + t * ((1-t) * Boss04_62.x + t * x_after);
        y = (1-t) * ((1-t) * y_before + t * Boss04_62.y) + t * ((1-t) * Boss04_62.y + t * y_after);
    } else {
        x = (1-t) * x_before + t * x_after;
        y = (1-t) * y_before + t * y_after;
    }
} else if (t != -1) {
    t = -1;
    x = x_after;
    y = y_after;
    x_before = x;
    y_before = y;
    bezier = true;
    
    var xx, yy;
    
    xx = x; yy = y;
    if (angle == 0) yy += 48;
    else if (angle == 90) xx += 48;
    else if (angle == 180) yy -= 48;
    else xx -= 48;
	
	if (sound_huge > 0) {
        temp = instance_create_depth(xx, yy, 4, Boss04_39);
		temp.visible = false;
        temp.image_angle = angle;
        if (angle == 0) temp.hspeed = 8;
        else if (angle == 90) temp.vspeed = -8;
        else if (angle == 180) temp.hspeed = -8;
        else temp.vspeed = 8;
		temp.patt = wave_time;
		
        temp = instance_create_depth(xx, yy, 4, Boss04_39);
		temp.visible = false;
        temp.image_xscale *= -1;
        temp.image_angle = angle;
        if (angle == 0) temp.hspeed = -8;
        else if (angle == 90) temp.vspeed = 8;
        else if (angle == 180) temp.hspeed = 8;
        else temp.vspeed = -8;
		temp.patt = wave_time;
    }
    
    if (sound_huge == 0) audio_play_sound(snd04_30, 0, false);
    else if (sound_huge == 0.5) audio_play_sound(snd04_41, 0, false);
    else if (sound_huge == 1) audio_play_sound(snd04_34, 0, false);
    sound_huge = 0;
	wave_time = 400;
}

angle_diff = (angle - image_angle) mod 360;
while(angle_diff < 0) angle_diff += 360;
if (angle_diff >= 180) angle_diff -= 360;

if (abs(angle_diff) <= angle_sp*sp/2) {
    image_angle = angle;
} else image_angle += min((angle_diff)*sp/12, angle_sp*sp);

angle = (angle mod 360);
image_angle = (image_angle mod 360);