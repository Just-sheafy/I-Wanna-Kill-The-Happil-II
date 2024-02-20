if !instance_exists(player) {speed = 0; exit;}
if ang {
    if canmove {
        image_angle = point_direction(x, y, player.x, player.y);
        if x > player.x {hspeed -= 0.15;}
        if x < player.x {hspeed += 0.15;}
        if y > player.y {vspeed -= 0.15;}
        if y < player.y {vspeed += 0.15;}
        if hspeed < -5 {hspeed = -5;}
        if hspeed > 5 {hspeed = 5;}
        if vspeed < -5 {vspeed = -5;}
        if vspeed > 5 {vspeed = 5;}
    } else {
        speed = 0;
        image_angle += 25;
        if image_angle >= 360 {image_angle -= 360;}
    }
}