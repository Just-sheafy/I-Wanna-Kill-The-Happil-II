if wait == 0 and d < 90 {
    d += 3;
    y = room_height-470*sin(degtorad(d));
} else if wait < 45 {
    wait += 1;
} else {
    y += 12;
    if y > room_height {instance_destroy();}
}