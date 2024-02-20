if image_alpha < 1 {image_alpha += 0.05;}
a = 0;
if hp > shp {
    shp += min(ceil((hp - shp) / 10), 2);
} else if hp < shp {
    shp += max(floor((hp - shp) / 10), -2);
    a = 1;
}

if hp <= 0 {
    instance_destroy();
    instance_create_depth(0, 0, -100, light);
    with(Hamjung03Bs3) {if a {instance_destroy();}}
    with(Boss03_h2) {instance_destroy();}
    with(Boss03_2) {
        instance_destroy();
        var zx = instance_create_depth(x, y, -2, Boss03_dead1);
        if x < 400 {zx.image_xscale = -1;}
        zx.image_angle = image_angle;
    }
    with(Boss03_16) {instance_destroy();}
    with(Boss03_43) {alarm[0] = 0; alarm[1] = 120;}
    var zx = instance_create_depth(x, y, depth, Boss_h);
    zx.sprite_index = sprite_index;
}