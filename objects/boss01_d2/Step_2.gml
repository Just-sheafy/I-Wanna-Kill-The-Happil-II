if image_index == 0 {
    if !a {a = 1; if instance_exists(player) {ox = player.x; oy = player.y;}}
    with(player) {frozen = true; image_speed = 0; hspd = 0; vspd = 0;}
    if instance_exists(player) {
		player.x = ox; player.y = oy;
		player.sprite_index = spr_before;
		player.image_index = img_before;
	}
}
if image_index == 1 {
    if !instance_exists(player) {room_speed = global.ROOM_SPEED;}
}