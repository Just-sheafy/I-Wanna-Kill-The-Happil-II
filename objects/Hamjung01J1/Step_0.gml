var i, cam = view_camera[0];

cherry_index += 1;
if (cherry_index >= 30) cherry_index -= 30;
alpha_time += 1;
alpha = 0.7-abs(0.5*sin(degtorad(alpha_time*180/50)));

with(Hamjung01J8) image_alpha = Hamjung01J1.alpha;

text_show = "";


if (holding != -1) {
	text_show = ds_map_find_value(map_text_show, items_spr[holding]);
    if (items[holding] == Hamjung01J3) {
        with(Hamjung01J8) {
            if (trigger_id == -1 && (trigger < 10 || trigger == 10 || trigger == 21 || trigger == 22 ||
                trigger == 30 || trigger == 31 || trigger == 41 || trigger == 43 || trigger == 81)) {
                visible = true;
            } else visible = false;
        }
    } else if (items[holding] == Hamjung01J4) {
        with(Hamjung01J8) {
            if (trigger_id == -1 && (trigger < 10 || trigger == 10 || trigger == 21 || trigger == 22 ||
                trigger == 30 || trigger == 31)) {
                visible = true;
            } else visible = false;
        }
    } else if (items[holding] == Hamjung01J5) {
        with(Hamjung01J8) {
            if (trigger_id == -1 && (trigger == 30 || trigger == 41 || trigger == 51 ||
				(trigger >= 60 && trigger <= 69) || trigger == 81)) {
                visible = true;
            } else visible = false;
        }
    } else if (items[holding] == Hamjung01J7) {
        with(Hamjung01J8) {
            if (trigger_id == -1 && trigger == 51) {
                visible = true;
            } else visible = false;
        }
    }
} else {
    with(Hamjung01J8) visible = false;
}