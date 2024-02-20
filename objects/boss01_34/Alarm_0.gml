with(Boss01_D) {instance_destroy();}
instance_create_depth(0, 0, -7, Boss01_D);
var zx = instance_create_depth(x, y, -8, Boss01_D2);
zx.image_index = 2;
b = -1;
with(Boss01_38) {speed *= -1; as *= -1;}