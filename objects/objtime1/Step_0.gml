if (sprite_index == sprTime1 and !instance_exists(player)) image_speed = 0;
if (sprite_index == sprTime2 and image_index == image_number-1) {image_index = -1; image_speed = 0;}

if (time > 0) {if (instance_exists(player)) time -= 1;}
else if (time == 0) {
    time = -1;
    sprite_index = sprTime2;
    image_index = 0;
} else {
    if (alpha > 0) alpha -= 0.05;
}