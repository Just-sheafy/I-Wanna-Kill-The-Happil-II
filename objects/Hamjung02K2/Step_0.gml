if a and !b {
    with(zx) {instance_destroy();}
    visible = true;
    a = 0;
}
if !a and b {
    zx = instance_create_depth(x, y, depth, block);
    zx.visible = true;
    zx.sprite_index = block02K;
    zx.image_index = 1;
    visible = false;
    a = 1;
}