var i;

if x <= 64 and hspeed < 0 {hspeed = 0;}
if x >= 736 and hspeed > 0 {hspeed = 0;}
if instance_exists(player) {
    if air {if x > player.x {image_xscale = abs(image_xscale);} else {image_xscale = -abs(image_xscale);}}
} else {
    for(i=0; i<5; i+=1) {alarm[i] = 0;}
    hspeed = 0; alarm[9] = 0; alarm[10] = 0;
}
if air {
    if oy > 224 {vspeed = -8; oy -= 8;} else {vspeed = 0;}
    d += 8;
    y = oy+8*sin(degtorad(d));
} else {
    if oy < 528 {
        vspeed = 8;
        oy += 8;
        d += 8;
        y = oy+8*sin(degtorad(d));
    } else {vspeed = 0; y = 528; d = 0;}
}
if vspeed == 0 {if !air {
    sprite_index = sprBoss01_16; image_speed = 1/2;
    if !instance_exists(Boss01_34) {image_xscale = 1;}
    else {image_xscale = Boss01_34.b;}
    if hspeed != 0 {image_xscale = -sign(hspeed); sprite_index = sprBoss01_16; image_speed = 1/2;}
} else {sprite_index = sprBoss01_17; image_speed = 1/2;}}
if vspeed != 0 {sprite_index = sprBoss01_17; image_speed = 1/2;}

heal = false;
heal_time += 1;
if (heal_time >= 22) heal_time -= 22;
if (instance_exists(Boss01_34) and Boss01_34.b != 1) heal = true;
if (heal) heal_alpha = min(heal_alpha + 0.05, 1);
else heal_alpha = max(heal_alpha - 0.05, 0);