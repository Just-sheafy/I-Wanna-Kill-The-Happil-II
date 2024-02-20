var i;

sid = -1;
ox = 0;
oy = 0;
x_prev = x;
y_prev = y;
angle_before = 0;
alpha = 1;

knife_id = -1;
black_appear = true;
unwasa_appear = true;
patt = 0;
_type = 0; // 0: knife, 1: Prince black, 2: blackhole, 3: Unwasa
alarm[0] = 150;

num = 0;
for(i=0; i<300; i+=1) {
    bl[i] = -1;
}