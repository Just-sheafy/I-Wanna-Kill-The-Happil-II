if image_alpha > 0 {image_alpha -= a;} else {instance_destroy();}
x += ox;
y += oy;
image_angle += angle;
image_xscale += ax;
image_yscale += ay;
if image_xscale <= 0 or image_yscale <= 0 {instance_destroy();}