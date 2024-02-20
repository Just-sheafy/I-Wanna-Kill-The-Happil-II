d += 8;
y = oy+5*sin(degtorad(d));
if image_alpha < 1 {image_alpha += 0.05;}
if instance_exists(player) and !asdf {
    if x > player.x {image_xscale = 1;} else {image_xscale = -1;}
}