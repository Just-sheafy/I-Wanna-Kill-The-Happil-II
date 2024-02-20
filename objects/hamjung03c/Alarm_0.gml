var zx;

if b {
    zx = instance_create_depth(random(1600), 0, depth, Hamjung03C);
    zx.direction = 225;
    zx.speed = choose(5, 6);
    zx.alarm[0] = 0;
    zx.visible = true;
} else {
    zx = instance_create_depth(random_range(-800, 800), 608, depth, Hamjung03C);
    zx.direction = 45;
    zx.speed = choose(5, 6);
    zx.alarm[0] = 0;
    zx.visible = true;
}
alarm[0] = 6;