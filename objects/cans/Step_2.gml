if instance_exists(player) {
    x = player.x;
    y = player.y-32;
} else {
    instance_destroy();
}