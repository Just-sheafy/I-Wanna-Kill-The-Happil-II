if (image_xscale < 1) {
    image_xscale += 0.05;
    image_yscale = image_xscale;
}
image_angle += 12 * sign(dir_sp);

if (patt == 0 and sid != -1 and instance_exists(sid)) {
    if (dist < 120) dist += 6;
    dir += dir_sp;
    if (dir >= 360) dir -= 360;
    if (dir < 0) dir += 360;
    
    x = sid.x - 36*cos(degtorad(sid.image_angle+45)) + dist*cos(degtorad(dir));
    y = sid.y + 36*sin(degtorad(sid.image_angle+45)) - dist*sin(degtorad(dir));
}