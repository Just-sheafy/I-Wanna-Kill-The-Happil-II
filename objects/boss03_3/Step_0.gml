if image_alpha < 1 and !rat {image_alpha += 0.05; y -= 4;}
if rat {if image_alpha > 0 {image_alpha -= 0.05; y += 4;} else {instance_destroy();}}
if !instance_exists(player) {
    alarm[0] = 0;
    with(dark3) {b = 1;}
    with(Boss03_4) {instance_destroy();}
    exit;
}
if pat == 1 {
    if x < player.x {x += 1.5;}
    if x > player.x {x -= 1.5;}
}