if a == 0 and image_alpha < 1 {image_alpha += 0.1;}
if a == 1 {
    if image_alpha > 0 {image_alpha -= 0.1;} else {instance_destroy();}
}