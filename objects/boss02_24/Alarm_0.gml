if instance_exists(player) {
    if x >= player.x {hspeed = -3-random(3);}
    if x < player.x {hspeed = 3+random(3);}
    vspeed = -random(4)-4;
    y += vspeed;
}
alarm[0] = 60+floor(30);