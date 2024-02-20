if x <= 0 {hspeed = abs(hspeed);}
if x >= room_width {hspeed = -abs(hspeed);}
if y <= 0 {vspeed = abs(vspeed);}
if y >= room_height {vspeed = -abs(vspeed);}
image_alpha = random_range(0.2, 0.8);
if a {
    if image_xscale > 0 {image_xscale -= 0.05; image_yscale -= 0.05;}
    else {instance_destroy();}
} else {
    if image_xscale < 1 {image_xscale += 0.05; image_yscale += 0.05;}
}
image_angle += 8;