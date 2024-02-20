instance_destroy();
var temp = instance_create_depth(x, y, -2, Boss03Sr_15);
if (arrow_id == -1 or !instance_exists(arrow_id)) {
    temp.arrow_id = instance_create_depth(temp.x, temp.y, -5, Boss03Sr_17);
    temp.arrow_id.image_index = 1;
    temp.arrow_id.sid = temp;
} else {
    temp.arrow_id = arrow_id;
    arrow_id.sid = temp;
    arrow_id.visible = true;
}