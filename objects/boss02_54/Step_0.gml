if image_speed != 0 and instance_exists(player) {
    if x > player.x {x -= 1;} else {x += 1;}
}
if y > 640 {instance_destroy();}