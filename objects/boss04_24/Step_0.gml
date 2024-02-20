d += 12;
y += cos(degtorad(d)) * 0.4;

if (instance_exists(player)) {
    if (player.x >= x) image_xscale = abs(image_xscale);
    else image_xscale = -abs(image_xscale);
} else image_xscale = abs(image_xscale);