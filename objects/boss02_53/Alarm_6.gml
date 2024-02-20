var i, zx;

for(i=0; i<2; i+=1) {instance_create_depth(random(800), -32, -1, Boss02_56);}
zx = instance_create_depth(0, 0, 0, view_an2);
zx.asdf = 8;
alarm[6] = 60;