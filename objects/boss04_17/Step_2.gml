if (tracking_obj != -1 and instance_exists(tracking_obj)) {
    if (tracking_obj.object_index == Boss04_2) {
        x = tracking_obj.x - 36*cos(degtorad(tracking_obj.image_angle+45));
        y = tracking_obj.y + 36*sin(degtorad(tracking_obj.image_angle+45));
    } else if (tracking_obj.object_index == Boss04_3) {
        x = tracking_obj.x + 36*cos(degtorad(tracking_obj.image_angle-45));
        y = tracking_obj.y - 36*sin(degtorad(tracking_obj.image_angle-45));
    }
} else instance_destroy();