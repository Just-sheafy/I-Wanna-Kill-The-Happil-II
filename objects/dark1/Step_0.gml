if a {exit;}
alpha -= alpha_dec;
if instance_exists(SavePoint2) {if alpha <= 0.5 {alpha = 0.5;}}
if alpha <= 0 {instance_destroy();}