if instance_exists(player) {
    x = player.x;
    y = player.y;
    image_xscale = player.image_xscale;
    image_yscale = player.image_yscale;
    if player.sprite_index != sprPlayer2 {instance_destroy();}
} else instance_destroy();