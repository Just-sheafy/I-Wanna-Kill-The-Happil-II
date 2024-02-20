if instance_number(Boss03Sr_2) < 40 {
    var temp = instance_create_depth(400, 144, -2, Boss03Sr_2);
    if (crazy and num_zombie < (50-Boss03Sr_h.hp)/10) {
        if (random(1) < 0.01 * ((50-Boss03Sr_h.hp)/10 - num_zombie)) {
            temp.revive = true;
            num_zombie += 1;
        }
    }
}
alarm[3] = 30+Boss03Sr_h.hp*0.7;