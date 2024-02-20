if asdf {
    if x != ox+xx {
        if x > ox+xx {hspeed = -2;}
        if x < ox+xx {hspeed = 2;}
    } else {
        hspeed = 0;
        if y != oy+yy {
            if y > oy+yy {vspeed = -2;}
            if y < oy+yy {vspeed = 2;}
        } else {
            vspeed = 0;
            asdf = 0;
            alarm[0] = 60;
        }
    }
}
if speed != 0 {image_angle = direction;}