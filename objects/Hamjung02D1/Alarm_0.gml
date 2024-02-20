if !visible {
    with(temp) {instance_destroy();}
} else {
    temp = instance_create_depth(x, y, depth, block);
    temp.image_index = 1;
}
visible = !visible;
alarm[0] = 40;