if asdf > 1 {
    asdf -= 1;
    x = random(800-128)+64;
    y = random(608-128)+64;
    ox = x;
    oy = y;
} else {instance_destroy();}
alarm[0] = 30;