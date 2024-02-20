if !instance_exists(player) {alarm[0] = 0; alarm[1] = 0;}
if a == 0 and visible {
    image_alpha += 0.1;
    if image_alpha >= 1 {a = 1; alarm[1] = 15;}
}
if a == 2 {
    image_alpha -= 0.1;
    if image_alpha <= 0 {a = 0; visible = false;}
}