var i, zx;

image_alpha = 0.05;
instance_create_depth(x, y, -1, Boss02_47);
hspeed = 4;
ang = 1;
asdf = 0;
oy = y;
d = 0;
for(i=0; i<4; i+=1) {
    ghost[i] = instance_create_depth(x, y, -2, Boss02_48);
    ghost[i].d = i*90;
}
instance_create_depth(0, 0, -8, Boss02_h7);
alarm[0] = 180;
alarm[1] = 400;
zx = instance_create_depth(x, y, -10, Boss02_n);
zx.image_index = 11;
zx.sid = id;