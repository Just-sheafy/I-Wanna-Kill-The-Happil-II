if (room_speed < global.ROOM_SPEED) {
    vspeed += gravity;
    y += vspeed;
	image_angle += 8;
}