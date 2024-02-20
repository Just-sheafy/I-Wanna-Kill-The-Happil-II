if !instance_exists(player) {alarm[0] = 0; alarm[1] = 0;}
if b == 0 {
    image_alpha += 0.025;
    if image_alpha >= 0.5 {image_alpha = 0.5; vspeed = 0; b = 1;}
} else if b == 1 {
    image_alpha = random_range(0.3, 0.7);
} else if b == 2 {
    image_alpha -= 0.05;
    if image_alpha <= 0 {instance_destroy();}
}