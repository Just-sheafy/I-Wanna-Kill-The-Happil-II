var __dist;

if (!instance_exists(player) or sid == -1 or !instance_exists(sid)) {
    instance_destroy();
    exit;
}

if (image_alpha < 1) image_alpha += 0.1;
if (sid.object_index == Boss03Sr_1 and !sid.crazy) {
    if (instance_exists(Boss03Sr_11)) {
        if (!Boss03Sr_11.a) image_alpha = 1-Boss03Sr_11.image_alpha;
        else image_alpha = 0;
    } else image_alpha = 1;
}

__dist = min(64, point_distance(player.x, player.y, sid.x, sid.y)*2/3);
image_angle = point_direction(player.x, player.y, sid.x, sid.y);
x = player.x + lengthdir_x(__dist, image_angle);
y = player.y + lengthdir_y(__dist, image_angle);