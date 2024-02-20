if y >= 336 and a {vspeed = 0; a = 0; alarm[0] = 200;}
if !a {
    if instance_exists(player) {
        image_angle = point_direction(x, y, player.x, player.y);
    }
}