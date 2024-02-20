if (sprite_index == sprBoss04_10) {
    if instance_exists(player) {
        if (x > player.x+3) x -= 1;
        else if (x < player.x-3) x += 1;
    }
}
if ((vspeed > 0 and y >= room_height + 100) or (vspeed < 0 and y <= -100)) instance_destroy();