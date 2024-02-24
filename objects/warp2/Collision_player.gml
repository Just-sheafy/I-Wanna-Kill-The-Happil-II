if !active {exit;}
if (!player.Gravity or player.GravityH) {
    player.Gravity = true;
    player.GravityH = false;
    audio_play_sound(sndVJump, 0, false, world.sound_vol);
}
world.warn = 0;
with(player) io_clear();
switch(room) {
    case Stage01I: room_goto(Stage01Hd);
                    player.x = 128;
                    player.y = 64;
                    break;
    case Stage01Hd: room_goto(Stage01J);
                    player.x = 48;
                    player.y = 2752;
                    world.items[0] = 1;
                    world.achieve[14] = 1;
                    break;
    case Stage02F: room_goto(Stage02Hd);
                    player.x = 64;
                    player.y = 544;
                    break;
    case Stage02Hd: room_goto(Stage02G);
                    player.x = 64;
                    player.y = 128;
                    world.items[1] = 1;
                    world.achieve[21] = 1;
                    break;
    case Stage03D: room_goto(Stage03Hd);
                    player.x = 32;
                    player.y = 544;
                    player.maxSpeed = 3;
                    break;
    case Stage03Hd: room_goto(Stage03E);
                    player.x = 64;
                    player.y = 512;
                    world.items[2] = 1;
                    world.achieve[29] = 1;
                    break;
    case Stage04J: room_goto(Stage04Hd);
                    player.x = 96;
                    player.y = 544;
                    break;
    case Stage04Hd: room_goto(Stage04K);
                    player.x = 736;
                    player.y = 544;
                    world.items[3] = 1;
                    world.achieve[37] = 1;
                    break;
    //case someRoom: room_goto(someOtherRoom);
    //               player.x = ##;
    //               player.y = ##;
    //               break;
}