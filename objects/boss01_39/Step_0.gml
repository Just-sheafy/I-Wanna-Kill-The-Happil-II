a = 0;
if !instance_exists(Boss01_38) {instance_destroy();}
with(Boss01_38) {
    if x > 0 and x < room_width and y > 0 and y < room_height {
        Boss01_39.a = 1;
    }
}
if !a {with(Boss01_38) {instance_destroy();} instance_destroy();}