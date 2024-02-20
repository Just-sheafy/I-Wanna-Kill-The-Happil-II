if (pink_available and short.angle <= pink and short.angle+90 > pink) {
    pink_available = false;
    with(Boss01_29) event_perform(ev_alarm, 4);
}
if (yellow_available and short.angle <= yellow and short.angle+90 > yellow) {
    yellow_available = false;
    with(Boss01_29) event_perform(ev_alarm, 2);
}
if (blue_available and long.angle <= blue and long.angle+90 > blue) {
    blue_available = false;
    with(Boss01_29) event_perform(ev_alarm, 3);
}
if (red_available and long.angle <= red and long.angle+90 > red) {
    red_available = false;
    with(Boss01_29) event_perform(ev_alarm, 1);
}

if instance_exists(Boss01_21) or instance_exists(Boss01_25) or instance_exists(Boss01_34) {
    image_alpha += 0.05;
} else {
    image_alpha -= 0.05;
}
if image_alpha >= 1 {image_alpha = 1;}
if image_alpha <= 0.2 {image_alpha = 0.2;}

if (layer_exists("Background")) {
	var back_id = layer_get_id("Background");
	layer_hspeed(back_id, 1.5);
	if instance_exists(Boss01_34) {if Boss01_34.b == -1 {layer_hspeed(back_id, -1.5);}}
	if instance_exists(Boss01_21) {if Boss01_21.b == 0 {layer_hspeed(back_id, 0);}}
}