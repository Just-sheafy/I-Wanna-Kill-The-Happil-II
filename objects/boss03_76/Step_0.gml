if !instance_exists(Boss03_75) {
    if image_alpha > 0 {
        image_alpha -= 0.05;
    } else {
        instance_destroy();
    }
}