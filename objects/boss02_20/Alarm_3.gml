if (instance_exists(player)) {
    instance_create_depth(player.x, 640, -3, Boss02_72);
    var zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 20;
}
alarm[1] = 0;