draw_self();

if (firstTouch) {
    if (firstTouch_time >= 250 && firstTouch_time < 450) {
        if (firstTouch_time < 275) {
            draw_sprite_ext(sprHamjung01J3, 0, x+96, y-96, 1, 1, 0, c_white, (firstTouch_time-250)/25);
        } else if (firstTouch_time < 300) {
            draw_sprite(sprHamjung01J3, 0, x+96, y-96);
        } else if (firstTouch_time < 396) {
            draw_sprite(sprHamjung01J3, 0, x+(396-firstTouch_time), y-(396-firstTouch_time));
        } else if (firstTouch_time < 425) {
            draw_sprite(sprHamjung01J3, 0, x, y);
        } else {
            draw_sprite_ext(sprHamjung01J3, 0, x, y, 1, 1, 0, c_white, (450-firstTouch_time)/25);
        }
    }
}