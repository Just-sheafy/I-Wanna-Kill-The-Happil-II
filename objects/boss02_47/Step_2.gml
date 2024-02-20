if (!instance_exists(Boss02_46)) { instance_destroy(); exit; }

x = Boss02_46.x;
y = Boss02_46.y;
image_alpha = Boss02_46.image_alpha;
image_xscale = sign(Boss02_46.image_xscale)*image_yscale;