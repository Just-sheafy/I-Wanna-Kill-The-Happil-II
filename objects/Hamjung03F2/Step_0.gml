d += 12;
image_alpha = 0.7+0.3*sin(degtorad(d));
if instance_exists(Hamjung03F4) {
    instance_destroy();
    var zx = instance_create_depth(x, y, depth, Hamjung03F5);
    zx.sprite_index = sprite_index;
    zx.d = d;
}