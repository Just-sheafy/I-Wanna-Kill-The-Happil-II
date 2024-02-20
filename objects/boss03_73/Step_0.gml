d += 10;
y += cos(degtorad(d)) * 0.5;
if !instance_exists(player) {
    alarm[0] = 0; alarm[1] = 0;
}

if y < -200 {instance_destroy();}