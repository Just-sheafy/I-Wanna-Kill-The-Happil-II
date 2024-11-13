if (instance_exists(player)) {
	if (player.y < 32) draw_sprite(player.sprite_index, player.image_index, player.x, player.y+room_height);
	if (player.y > room_height-32) draw_sprite(player.sprite_index, player.image_index, player.x, player.y-room_height);
}