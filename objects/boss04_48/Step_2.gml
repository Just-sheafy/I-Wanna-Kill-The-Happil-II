if (patt == 0) {
    if (image_angle == 0) {
        if (vspeed < 0) image_index = 0;
        else image_index = 1;
        if (y >= 608 - 64 - 32) {
            speed = 0;
            gravity = 0;
            y = 608 - 64 - 32;
            image_speed = 1/4;
            alarm[0] = irandom_range(50, 100);
            patt = 1;
        }
    } else if (image_angle == 90) {
        if (hspeed < 0) image_index = 0;
        else image_index = 1;
        if (x >= 800 - 64 - 32) {
            speed = 0;
            gravity = 0;
            x = 800 - 64 - 32;
            image_speed = 1/4;
            alarm[0] = irandom_range(50, 100);
            patt = 1;
        }
    } else if (image_angle == 180) {
        if (vspeed > 0) image_index = 0;
        else image_index = 1;
        if (y <= 64 + 32) {
            speed = 0;
            gravity = 0;
            y = 64 + 32;
            image_speed = 1/4;
            alarm[0] = irandom_range(50, 100);
            patt = 1;
        }
    } else if (image_angle == 270) {
        if (hspeed > 0) image_index = 0;
        else image_index = 1;
        if (x <= 64 + 32) {
            speed = 0;
            gravity = 0;
            x = 64 + 32;
            image_speed = 1/4;
            alarm[0] = irandom_range(50, 100);
            patt = 1;
        }
    }
} else if (patt == 1) {
    if (image_angle == 0) {
        if (move_clockwise) {
            x -= spd;
            if (x < 96) {
                y = 608-96-(96-x); x = 96;
                image_angle = 270;
            }
        } else {
            x += spd;
            if (x > 800-96) {
                y = 608-96-(x-800+96); x = 800-96;
                image_angle = 90;
            }
        }
    } else if (image_angle == 90) {
        if (move_clockwise) {
            y += spd;
            if (y > 608-96) {
                x = 800-96-(y-608+96); y = 608-96;
                image_angle = 0;
            }
        } else {
            y -= spd;
            if (y < 96) {
                x = 800-96-(96-y); y = 96;
                image_angle = 180;
            }
        }
    } else if (image_angle == 180) {
        if (move_clockwise) {
            x += spd;
            if (x > 800-96) {
                y = 96+(x-800+96); x = 800-96;
                image_angle = 90;
            }
        } else {
            x -= spd;
            if (x < 96) {
                y = 96+(96-x); x = 96;
                image_angle = 270;
            }
        }
    } else if (image_angle == 270) {
        if (move_clockwise) {
            y -= spd;
            if (y < 96) {
                x = 96+(96-y); y = 96;
                image_angle = 180;
            }
        } else {
            y += spd;
            if (y > 608-96) {
                x = 96+(y-608+96); y = 608-96;
                image_angle = 0;
            }
        }
    }
} else {
    if (image_angle == 0) {
        if (vspeed < 0) image_index = 0;
        else image_index = 1;
        if (y >= 640) instance_destroy();
    } else if (image_angle == 90) {
        if (hspeed < 0) image_index = 0;
        else image_index = 1;
        if (x >= 832) instance_destroy();
    } else if (image_angle == 180) {
        if (vspeed > 0) image_index = 0;
        else image_index = 1;
        if (y <= -32) instance_destroy();
    } else if (image_angle == 270) {
        if (hspeed > 0) image_index = 0;
        else image_index = 1;
        if (x <= -32) instance_destroy();
    }
}