if a < b {a += 1;} else {
    a = 0;
    if !place_meeting(x, y+32, Hamjung03G3) and !place_meeting(x, y+32, block) {
        instance_create_depth(x, y+32, depth, Hamjung03G3);
    } else {
        if place_meeting(x, y+32, block){
            if !place_meeting(x-32, y, Hamjung03G3) and !place_meeting(x-32, y, block) {
                instance_create_depth(x-32, y, depth, Hamjung03G3);
            }
            if !place_meeting(x+32, y, Hamjung03G3) and !place_meeting(x+32, y, block) {
                instance_create_depth(x+32, y, depth, Hamjung03G3);
            }
        }
    }
}