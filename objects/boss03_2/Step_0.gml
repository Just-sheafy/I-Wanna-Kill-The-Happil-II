d += 5;
image_angle = 10*sin(degtorad(d));
f += 4;
y += 3*sin(degtorad(f));
if !instance_exists(player) {
    alarm[0] = 0; alarm[1] = 0; alarm[2] = 0; gravity = 0; friction = 0.6;
    if image_xscale != 0 {image_xscale = sign(image_xscale);} else {if x < 400 {image_xscale = -1;} else {image_xscale = 1;}}
    image_yscale = 1; image_alpha = 1;
    exit;
}
if b {
    if x < player.x {image_xscale = -abs(image_xscale);}
    else {image_xscale = abs(image_xscale);}
}