if patt == 0 {
    vspeed = 0;
    patt += 1;
    alarm[0] = 6;
} else if patt == 1 {
    patt += 1;
    alarm[1] = 5;
    alarm[2] = 5;
    alarm[3] = 5;
    alarm[0] = 300;
} else if patt == 2 {
    patt += 1;
    alarm[1] = 0;
    vspeed = -8;
}