var xx, yy, dist, temp, l, foot_changed, foot_stay;

jumping = false;
if (!move_next) {
	foot_changed = foot_0;
	foot_stay = foot_1;
} else {
	foot_changed = foot_1;
	foot_stay = foot_0;
}

dist = irandom_range(200, 320);

if (!move_clockwise) {

if (foot_stay.angle == 0) {
	xx = foot_stay.x+dist;
	yy = foot_stay.y;
	foot_changed.angle = 0;
	if (xx > 736-80) {
	    yy = min(544-80, 544-(xx-736+80));
	    xx = 736-48;
	    foot_changed.angle = 90;
	    foot_changed.image_angle += 2;
	}
} else if (foot_stay.angle == 90) {
	xx = foot_stay.x;
	yy = foot_stay.y-dist;
	foot_changed.angle = 90;
	if (yy < 64+80) {
	    xx = min(736-80, 736-(64+80-yy));
	    yy = 64+48;
	    foot_changed.angle = 180;
	    foot_changed.image_angle += 2;
	}
} else if (foot_stay.angle == 180) {
	xx = foot_stay.x-dist;
	yy = foot_stay.y;
	foot_changed.angle = 180;
	if (xx < 64+80) {
	    yy = max(64+80, 64+(64+80-xx));
	    xx = 64+48;
	    foot_changed.angle = 270;
	    foot_changed.image_angle += 2;
	}
} else {
	xx = foot_stay.x;
	yy = foot_stay.y+dist;
	foot_changed.angle = 270;
	if (yy > 544-80) {
	    xx = max(64+80, 64+(yy-544+80));
	    yy = 544-48;
	    foot_changed.angle = 360;
	    foot_changed.image_angle += 2;
	}
}

} else {

if (foot_stay.angle == 0) {
	xx = foot_stay.x-dist;
	yy = foot_stay.y;
	foot_changed.angle = 0;
	if (xx < 64+80) {
	    yy = min(544-80, 544-(64+80-xx));
	    xx = 64+48;
	    foot_changed.angle = -90;
	}
} else if (foot_stay.angle == 90) {
	xx = foot_stay.x;
	yy = foot_stay.y+dist;
	foot_changed.angle = 90;
	if (yy > 544-80) {
	    xx = min(736-80, 736-(yy-544+80));
	    yy = 544-48;
	    foot_changed.angle = 0;
	}
} else if (foot_stay.angle == 180) {
	xx = foot_stay.x+dist;
	yy = foot_stay.y;
	foot_changed.angle = 180;
	if (xx > 736-80) {
	    yy = max(64+80, 64+(xx-736+80));
	    xx = 736-48;
	    foot_changed.angle = 90;
	}
} else {
	xx = foot_stay.x;
	yy = foot_stay.y-dist;
	foot_changed.angle = 270;
	if (yy < 64+80) {
	    xx = max(64+80, 64+(64+80-yy));
	    yy = 64+48;
	    foot_changed.angle = 180;
	}
}

}

foot_changed.x_after = xx;
foot_changed.y_after = yy;
foot_changed.t = 0;

if (abs(foot_changed.angle - foot_changed.image_angle) >= 100) foot_changed.angle_sp = 5;
else foot_changed.angle_sp = 2.5;

move_next = !move_next;
if (move_fast) {
	foot_changed.sp = 3 + 0.75*move_faster;
	if (instance_exists(player)) {
		patt += 1; alarm[0] = 60 - 12*move_faster;
	} else {
		move_fast = false; foot_changed.sp = 2 + 0.75*move_faster;
		alarm[0] = 100 - 20*move_faster;
	}
} else {
	foot_changed.sp = 2 + 0.5*move_faster;
	if (instance_exists(player)) patt += 1;
	alarm[0] = 100 - 20*move_faster;
}