if image_index == 0 {
    with(player) {frozen = false;}
}
if image_index == 1 {room_speed = global.ROOM_SPEED;}
instance_destroy();