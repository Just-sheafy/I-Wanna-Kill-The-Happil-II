if !instance_exists(player) {alarm[0] = 0;}
k += 8;
vy += gra;
oy += vy;
image_angle += 15;
if image_angle >= 360 {image_angle -= 360;}
y = oy + 5*sin(degtorad(k));
if y <= -150 {instance_destroy();}