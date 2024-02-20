d += 10;
y += cos(degtorad(d)) * 0.7;
if instance_exists(player) {
    image_angle = point_direction(x, y, player.x, player.y) - point_direction(0, 0, -38, -73);
} else {
    alarm[0] = 0; alarm[1] = 0;
}

if y < -200 {instance_destroy();}