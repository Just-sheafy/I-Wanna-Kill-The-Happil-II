if (room_speed < 50) {
    hspeed += lengthdir_x(gravity, gravity_direction);
    vspeed += lengthdir_y(gravity, gravity_direction);
    x += hspeed;
    y += vspeed;
}