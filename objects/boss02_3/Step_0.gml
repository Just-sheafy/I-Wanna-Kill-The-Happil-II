if sprite_index == sprBoss02_2 {image_xscale = 1; image_yscale = 1; image_speed = 0;}
else if sprite_index == sprBoss02_16 {image_xscale = 4; image_yscale = 4;}
else {image_xscale = 7; image_yscale = 7;}
if crazy {
    x = ox+random_range(3, -3);
    y = oy+random_range(3, -3);
} else {
    x = ox;
    y = oy;
}