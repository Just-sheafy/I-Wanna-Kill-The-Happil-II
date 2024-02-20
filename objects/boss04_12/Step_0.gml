if (instance_exists(player)) {
    if ((player.Gravity and vspeed > 0) or (!player.Gravity and vspeed < 0)) instance_destroy();
}

if (image_xscale < 1) {
    image_xscale += 0.1;
    image_yscale = image_xscale;
}
image_angle += 15;