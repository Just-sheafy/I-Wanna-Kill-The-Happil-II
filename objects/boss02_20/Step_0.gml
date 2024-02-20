if !instance_exists(player) {alarm[0] = 0; alarm[1] = 0; alarm[2] = 0;}
oy += vs;
if b == 0 {
    image_alpha += 0.05;
    if image_alpha >= 1 {image_alpha = 1; vs = 0; b = 1;}
} else if b == 2 {
    image_alpha -= 0.05;
    if image_alpha <= 0 {instance_destroy();}
}
a += 5;
y = oy+10*sin(degtorad(a));