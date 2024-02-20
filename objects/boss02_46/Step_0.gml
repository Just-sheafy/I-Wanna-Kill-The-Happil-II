var zx;

if !asdf {
    d += 8;
    y = oy+5*sin(degtorad(d));
    if image_alpha < 1 {image_alpha += 0.05;}
    if x <= 128 {hspeed = 4;}
    if x >= 672 {hspeed = -4;}
    image_xscale = sign(hspeed);
} else {
    image_angle += 12;
    if image_angle >= 360 {image_angle -= 360;}
}

if (!instance_exists(Boss02_h7)) exit;

if Boss02_h7.hp == 30 and ang == 1 {ang = 0.5; zx = instance_create_depth(x, y, -2, Boss02_52);
	zx.hspeed = choose(1, -1)*choose(3, 4); zx.vspeed = choose(1, -1)*choose(3, 4);
	zx.hspd = zx.hspeed; zx.vspd = zx.vspeed;}
if Boss02_h7.hp == 20 and ang == 0.5 {ang = 0; zx = instance_create_depth(x, y, -2, Boss02_52);
	zx.hspeed = choose(1, -1)*choose(3, 4); zx.vspeed = choose(1, -1)*choose(3, 4);
	zx.hspd = zx.hspeed; zx.vspd = zx.vspeed;}