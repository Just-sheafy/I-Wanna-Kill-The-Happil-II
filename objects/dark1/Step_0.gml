if a {exit;}
image_alpha -= alpha_dec;
if instance_exists(SavePoint2) {if image_alpha <= 0.5 {image_alpha = 0.5;}}
if image_alpha <= 0 {instance_destroy();}