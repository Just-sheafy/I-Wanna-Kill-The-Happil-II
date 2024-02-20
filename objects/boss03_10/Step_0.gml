if !instance_exists(player) {instance_destroy(); instance_create_depth(x, y-62, -4, Boss03_12);}
if sprite_index == sprBoss02_63 and image_index == 9 {image_speed = 0;}
if pat == 1 {
    d += 3;
    y += sin(degtorad(d))/2;
}