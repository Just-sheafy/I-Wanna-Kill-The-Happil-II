var ix, iy;
ix = choose(-32, 832);
iy = random_range(452, 512);
instance_create_depth(ix, iy-64, -2, Boss02_49);
instance_create_depth(ix, iy+64, -2, Boss02_49);
alarm[0] = 180;