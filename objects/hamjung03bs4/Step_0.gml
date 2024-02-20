if vspeed < 0 and y <= 528 {
    with(block) {instance_destroy();}
    var zx = instance_create_depth(x, y, 0, Hamjung03Bs5);
    zx.sprite_index = sprHamjung03Bs3;
    instance_destroy();
}