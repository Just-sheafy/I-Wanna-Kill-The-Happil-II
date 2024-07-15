var i;

if (active) image_alpha = min(image_alpha + 0.1, 1);
else image_alpha = max(image_alpha - 0.1, 0);

if (angle_spd >= 0) angle_image += 15;
else angle_image -= 15;
angle += angle_spd;

for(i=0; i<number; i+=1) {
	flame[i].image_alpha = image_alpha;
    flame[i].image_angle = angle_image;
    flame[i].x = x + lengthdir_x(16*i, angle);
    flame[i].y = y + lengthdir_y(16*i, angle);
}