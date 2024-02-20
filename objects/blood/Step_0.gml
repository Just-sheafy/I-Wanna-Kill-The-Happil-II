image_angle+=asdf;
if image_angle<0 {image_angle+=360;}
if image_angle>=360 {image_angle-=360;}
if y >= room_height+96 and gravity_direction == 270 {instance_destroy();}
if y <= -96 and gravity_direction == 90 {instance_destroy();}
if scale<image_xscale {image_xscale+=0.025; image_yscale+=0.025;}
else {image_xscale=scale; image_yscale=scale;}