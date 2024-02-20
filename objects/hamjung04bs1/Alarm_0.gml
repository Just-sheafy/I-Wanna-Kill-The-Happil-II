var zx = instance_create_depth(random(room_width), -60, 100, Hamjung04Bs2);
zx.sprite_index = choose(sprHamjung04Bs1, sprHamjung04Bs2);
zx.vspeed = random_range(10, 25);

if (instance_exists(player)) {
    if (!player.Gravity) {
        zx.y = room_height + 60; zx.vspeed *= -1;
    }
}

alarm[0] = irandom_range(3, 9);