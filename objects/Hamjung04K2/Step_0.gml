if active {
    var zx = instance_create_depth(x, y, -4, Hamjung04K3);
    zx.dx = dx;
    zx.dy = dy;
    zx.d = d;
    zx.circle = circle;
    instance_destroy();
}