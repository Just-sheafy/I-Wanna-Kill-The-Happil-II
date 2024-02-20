if asdf {
    if image_alpha < 1 {image_alpha += 0.025; vspeed = 1.5;} else {vspeed = 0;}
} else {
    if image_alpha > 0 {image_alpha -= 0.025; vspeed = -1.5;} else {instance_destroy();}
}