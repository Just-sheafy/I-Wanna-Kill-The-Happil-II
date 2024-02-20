var zx;

d += 12;
image_alpha = 0.2+0.1*sin(degtorad(d));
if !instance_exists(Hamjung03F4) {
    instance_destroy();
    if sprite_index == sprHamjung03F1 {
        zx = instance_create_depth(x, y, depth, Hamjung03F1);
        zx.d = d;
    }
    if sprite_index == sprHamjung03F2 {
        zx = instance_create_depth(x, y, depth, Hamjung03F2);
        zx.d = d;
    }
}