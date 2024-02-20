if a {
    if image_alpha < 1 {image_alpha += 0.05;}
} else {
    if image_alpha > 0 {image_alpha -= 0.05;} else {instance_destroy();}
}