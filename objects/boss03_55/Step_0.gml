if !instance_exists(player) {alarm[0] = 0;}
if image_xscale < 2 and !a {
    image_xscale += 0.1;
    image_yscale -= 0.1;
}
if a {
    if image_xscale > 0 {
        image_xscale -= 0.1;
        image_yscale += 0.1;
    } else {instance_destroy();}
}
d += 8;
y = oy+10*sin(degtorad(d));
f += 6;
image_angle = 10*sin(degtorad(f));
image_alpha = random_range(0.2, 0.7);