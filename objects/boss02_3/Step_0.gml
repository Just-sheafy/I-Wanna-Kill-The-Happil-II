if sprite_index == sprBoss02_2 {image_xscale = 1; image_yscale = 1; image_speed = 0;}
else if sprite_index == sprBoss02_81 {image_xscale = 3; image_yscale = 3; image_speed = 0;}
else if sprite_index == sprBoss02_80 or sprite_index == sprBoss02_84 {image_xscale = 3.5; image_yscale = 3.5;}
else if sprite_index == sprBoss02_16 or sprite_index == sprBoss02_85 {image_xscale = 4; image_yscale = 4;}
else if sprite_index == sprBoss02_83 {image_xscale = 5; image_yscale = 5;}
else if sprite_index == sprBoss02_87 {image_xscale = 9; image_yscale = 9;}
else {image_xscale = 7; image_yscale = 7;}
if crazy {
    x = ox+random_range(3, -3);
    y = oy+random_range(3, -3);
} else {
    x = ox;
    y = oy;
}