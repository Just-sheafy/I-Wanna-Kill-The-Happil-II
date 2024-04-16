x_offset = 0;
y_offset = 0;
angle_spd = random_range(5, 8);

if (y >= 304) gravity = 0.4;
else { angle_spd *= -1; gravity = -0.4; }