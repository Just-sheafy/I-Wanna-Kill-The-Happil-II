if nodie {exit;}
instance_destroy();
var zx = instance_create_depth(x, y, -5, Explo1);
zx.image_xscale = 1/2;
zx.image_yscale = 1/2;

var temp = instance_create_depth(x, y, 0, Boss03Sr_7);
temp.sprite_index = sprBoss03Sr_24;
temp.revive = true;
if (arrow_id == -1 or !instance_exists(arrow_id)) {
    temp.arrow_id = instance_create_depth(temp.x, temp.y, -5, Boss03Sr_17);
    temp.arrow_id.image_index = 1;
    temp.arrow_id.visible = false;
    temp.arrow_id.sid = temp;
} else {
    temp.arrow_id = arrow_id;
    arrow_id.sid = temp;
    arrow_id.visible = false;
}

instance_create_depth(400, 144, -2, Boss03Sr_2);