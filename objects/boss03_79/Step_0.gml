if hspeed > 0 and x >= room_width {
    instance_destroy();
}
if hspeed < 0 and x <= 0 {
    instance_destroy();
}