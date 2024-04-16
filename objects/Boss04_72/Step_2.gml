image_xscale = scale;
image_yscale = scale;
image_alpha = min(1, image_alpha+0.02);

if (instance_exists(num1)) {
	num1.x = xx + lengthdir_x(radius, angle+90);
	num1.y = yy + lengthdir_y(radius, angle+90);
	num1.image_angle = angle;
}
if (instance_exists(num2)) {
	num2.x = xx + lengthdir_x(radius, angle+270);
	num2.y = yy + lengthdir_y(radius, angle+270);
	num2.image_angle = angle + 180;
}