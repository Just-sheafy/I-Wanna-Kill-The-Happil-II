if !instance_exists(player) {exit;}

var zx;

if choose(0, 1) {
    zx = instance_create_depth(0, random_range(128, 480), depth-1, Boss01F5);
    zx.hspeed = random_range(3, 5);
} else {
    zx = instance_create_depth(800, random_range(128, 480), depth-1, Boss01F5);
    zx.a = 1;
    zx.hspeed = -random_range(3, 5);
}
alarm[0] = 5;