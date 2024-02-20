if (!instance_exists(Boss02_46)) { instance_destroy(); exit; }

if !ang {
    d += 4;
    if d >= 360 {d -= 360;}
    x = Boss02_46.x+lengthdir_x(150, d);
    y = Boss02_46.y+lengthdir_y(150, d);
    image_angle = point_direction(xprevious, yprevious, x, y);
}
image_alpha = Boss02_46.image_alpha;