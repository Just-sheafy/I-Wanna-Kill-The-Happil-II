image_angle += a;
if place_meeting(x, y+1, block) {
    y -= vspeed;
    vspeed = -abs(vspeed)/2;
    instance_create_depth(x, y+16, -3, Boss03_31);
}