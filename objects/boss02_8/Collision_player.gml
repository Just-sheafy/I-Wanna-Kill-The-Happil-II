if (asdf <= 0 and sprite_index != sprBoss02_10 and image_angle == !other.Gravity*180 and
    collision_rectangle(x-12*image_xscale, y-34*(90-image_angle)/90, x+12*image_xscale, y-23*(90-image_angle)/90, player, 1, 1)) {
    other.vspd = -6*(90-image_angle)/90;
    instance_create_depth(other.x, other.y, -2, Boss04_27);
    Boss04_1.shell_count += 1;
    if (Boss04_1.shell_count >= 8) {
        audio_play_sound(snd04_29, 0, false);
        var temp = instance_create_depth(other.x, other.y, -2, Boss04_30);
        if (player.Gravity) temp.vspeed = -1.5;
        else {
            temp.vspeed = 1.5;
            temp.image_angle = 180;
        }
    }
    asdf = 8;
} else {
    if (asdf <= 0) { with(other) kill_player(); }
}