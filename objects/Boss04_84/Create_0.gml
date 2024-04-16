var i;

image_speed = 0;
image_xscale = 3/2;
image_yscale = 3/2;

x_prev = 0;
y_prev = 0;
hspd = 0;
vspd = 0;
sid = -1;

for(i=0; i<15; i+=1) {
    moved[i] = -1;
}
count = 0;

appear = false;
time = 0;
enable = true;
canhit = 1;