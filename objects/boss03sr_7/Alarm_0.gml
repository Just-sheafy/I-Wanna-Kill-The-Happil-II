if (!revive) {
    instance_destroy();
    audio_play_sound(sndDeath, 0, false, world.sound_vol);
    instance_create_depth(x, y, -1, Boss03Sr_12);
} else {
    instance_destroy();
    audio_play_sound(choose(sndSr03_7, sndSr03_8), 0, false);
    var temp = instance_create_depth(x, y, 0, Boss03Sr_16);
    if (arrow_id == -1 or !instance_exists(arrow_id)) {
        temp.arrow_id = instance_create_depth(temp.x, temp.y, -5, Boss03Sr_17);
        temp.arrow_id.image_index = 1;
        temp.arrow_id.sid = temp;
    } else {
        temp.arrow_id = arrow_id;
        arrow_id.sid = temp;
        arrow_id.visible = true;
    }
}