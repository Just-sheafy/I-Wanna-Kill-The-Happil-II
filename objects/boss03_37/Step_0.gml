if x < -100 and hspeed < 0 {instance_destroy();}
if x >room_width+100 and hspeed > 0 {instance_destroy();}
if y > room_height+100 {instance_destroy();}
if a == 1 or a == 3 {image_angle += sign(hspeed)*3;}
if !instance_exists(player) {exit;}
if a == 1 and y > 492 {
    y = 492;
    sprite_index = sprBoss03_32;
    image_angle = 0;
    hspeed = -hspeed*3;
    vspeed = 0;
    gravity = 0;
    a = 2;
}