var temp;

if (patt > 0) patt -= 1;
else disappear = true;

if (!disappear) {
    if (image_yscale < 1.5) image_yscale += 0.15;
} else {
    if (image_yscale > 0) image_yscale -= 0.15;
    else instance_destroy();
    exit;
}

if (vspeed < 0 && y <= 64) {
    disappear = true;
    temp = instance_create_depth(x, y, depth, Boss04_39);
    temp.image_xscale = image_xscale;
    temp.patt = patt;
    if (x >= 400) {
        temp.x = 800 - 64 - (64-y);
        temp.hspeed = vspeed;
    } else {
        temp.x = 64 + (64-y);
        temp.hspeed = -vspeed;
    }
    temp.y = 64;
    temp.image_angle = 180;
} else if (vspeed > 0 && y >= 608 - 64) {
    disappear = true;
    temp = instance_create_depth(x, y, depth, Boss04_39);
    temp.image_xscale = image_xscale;
    temp.patt = patt;
    if (x >= 400) {
        temp.x = 800 - 64 - (y-608+64);
        temp.hspeed = -vspeed;
    } else {
        temp.x = 64 + (y-608+64);
        temp.hspeed = vspeed;
    }
    temp.y = 608-64;
    temp.image_angle = 0;
} else if (hspeed < 0 && x <= 64) {
    disappear = true;
    temp = instance_create_depth(x, y, depth, Boss04_39);
    temp.image_xscale = image_xscale;
    temp.patt = patt;
    if (y >= 304) {
        temp.y = 608 - 64 - (64-x);
        temp.vspeed = hspeed;
    } else {
        temp.y = 64 + (64-x);
        temp.vspeed = -hspeed;
    }
    temp.x = 64;
    temp.image_angle = 270;
} else if (hspeed > 0 && x >= 800 - 64) {
    disappear = true;
    temp = instance_create_depth(x, y, depth, Boss04_39);
    temp.image_xscale = image_xscale;
    temp.patt = patt;
    if (y >= 304) {
        temp.y = 608 - 64 - (x-800+64);
        temp.vspeed = -hspeed;
    } else {
        temp.y = 64 + (x-800+64);
        temp.vspeed = hspeed;
    }
    temp.x = 800-64;
    temp.image_angle = 90;
}