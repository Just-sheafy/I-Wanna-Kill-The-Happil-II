if (room_speed < global.ROOM_SPEED) {
    hspeed += lengthdir_x(gravity, gravity_direction);
    vspeed += lengthdir_y(gravity, gravity_direction);
    x += hspeed;
    y += vspeed;
}