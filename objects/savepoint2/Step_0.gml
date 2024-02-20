if saveTimer > 0 {
    saveTimer -= 1;
    image_xscale += 0.1;
    image_yscale += 0.1;
    image_alpha -= 0.05;
    if image_alpha <= 0 {instance_destroy();}
    image_index = 1;
} else {
    image_index = 0;
}