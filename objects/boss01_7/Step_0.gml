image_angle += 8;
if image_angle >= 360 {image_angle -= 360;}
if !instance_exists(player) {
    alarm[0] = 0;
    alarm[2] = 0;
}