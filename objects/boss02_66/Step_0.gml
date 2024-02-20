var i, zx;

image_xscale += 0.01;
image_yscale += 0.01;
image_angle += 8;
if image_angle >= 360 {image_angle -= 360;}
for(i=0; i<2; i+=1) {
    zx = instance_create_depth(x, y, -1, Boss02_67);
    zx.direction = 180*i+a;
    zx.speed = 6;
}
a += 11;