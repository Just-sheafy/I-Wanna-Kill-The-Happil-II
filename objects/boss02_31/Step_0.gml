if asdf {
    if instance_exists(player) {
        if x >= player.x {hspeed -= 0.4;}
        if x < player.x {hspeed += 0.4;}
        if y >= player.y {vspeed -= 0.4;}
        if y < player.y {vspeed += 0.4;}
        if hspeed >= 2.3 {hspeed = 2.3;}
        if hspeed <= -2.3 {hspeed = -2.3;}
        if vspeed >= 2.3 {vspeed = 2.3;}
        if vspeed <= -2.3 {vspeed = -2.3;}
    } else {
        alarm[0] = 0;
        alarm[1] = 0;
        speed = 0;
    }
}