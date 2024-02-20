image_angle += a;
if y >= room_height+100 and vspeed > 0 {instance_destroy();}
if y <= -100 and vspeed < 0 {instance_destroy();}
if instance_exists(player) {
    b = player.Gravity;
}