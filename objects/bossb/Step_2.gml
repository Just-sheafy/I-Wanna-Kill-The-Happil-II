if !instance_exists(sid) {instance_destroy(); exit;}
depth = sid.depth - 1;
x = sid.x+ox;
y = sid.y+oy;

t += 1 / length;