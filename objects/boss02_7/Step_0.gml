var zx;

image_angle += 8;
if place_meeting(x+hspeed, y, block) {x -= hspeed; hspeed = -hspeed;}
if place_meeting(x, y+vspeed, block) {
    instance_destroy();
    if sprite_index == sprBoss02_7 {
        zx = instance_create_depth(x, 576, -1, Boss02_9);
        zx.image_xscale = image_xscale; 
        zx.image_yscale = image_yscale;
        exit;
    }
    if sprite_index == sprBoss02_14 {
        zx = instance_create_depth(x, 576, 0, Boss02_13);
        zx.image_xscale = image_xscale; 
        zx.image_yscale = image_yscale;
        exit;
    }
}