if keyboard_check_pressed(world.upKey) {
    room_goto(Stage02Bs);
    player.x = 320;
    player.y = 448;
    world.achieve[20] = 1;
}