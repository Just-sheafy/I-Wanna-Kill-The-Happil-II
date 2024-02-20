if asdf {
    if instance_exists(player) {
        if x >= player.x {hspeed -= 0.5;}
        if x < player.x {hspeed += 0.5;}
        if y >= player.y {vspeed -= 0.5;}
        if y < player.y {vspeed += 0.5;}
        if hspeed >= 2.5 {hspeed = 2.5;}
        if hspeed <= -2.5 {hspeed = -2.5;}
        if vspeed >= 2.5 {vspeed = 2.5;}
        if vspeed <= -2.5 {vspeed = -2.5;}
    } else {
        alarm[0] = 0;
        alarm[1] = 0;
        speed = 0;
    }
}