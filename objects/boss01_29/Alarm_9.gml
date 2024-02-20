if !a9 {
    hspeed = choose(sp, -sp);
    if x <= 64 {hspeed = sp;}
    if x >= 736 {hspeed = -sp;}
    a9 = 1;
    alarm[9] = irandom_range(20, 84);
} else {
    hspeed = 0;
    a9 = 0;
    alarm[9] = irandom_range(50, 150);
}