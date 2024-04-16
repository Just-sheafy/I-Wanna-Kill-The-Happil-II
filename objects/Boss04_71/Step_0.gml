time += 1;
if (time >= 15) {
    image_yscale = max(image_yscale-4/20, 0);
    if (image_yscale <= 0) instance_destroy();
}