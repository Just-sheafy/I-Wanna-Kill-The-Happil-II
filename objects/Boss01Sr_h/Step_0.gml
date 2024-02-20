if image_alpha < 1 {image_alpha += 0.05;}
a = 0;
if hp > shp {
    shp += min(ceil((hp - shp) / 10), 3);
} else if hp < shp {
    shp += max(floor((hp - shp) / 10), -3);
    a = 1;
}

if hp <= 0 {
    instance_destroy();
    instance_create_depth(0, 0, -100, light);
	
	with(Boss01Sr_2) {
		var i;
		
		is_dead = true;
		vspeed = 0;
		gravity = 0;
		alarm[5] = 125;
		
		for(i=0; i<5; i+=1) alarm[i] = 0;
		patt = 0;
		action = false;
		angle = 30;
	}
	
	with(Boss01Sr_1) is_dead = true;
	with(Boss01Sr_3) instance_destroy();
	with(Boss01Sr_4) { if (x != 96 && x != 256 && x != 512 && x != 672 && index != -1) alarm[0] = 1; }
	with(Boss01Sr_6) instance_destroy();
	with(Boss01Sr_7) instance_destroy();
	with(Boss01Sr_8) instance_destroy();
	with(Boss01Sr_9) instance_destroy();
	with(Boss01Sr_11) instance_destroy();
	with(Hamjung03Bs3) instance_destroy();
    
    with(world) {audio_stop_sound(Instance);}
    with(Boss01_h2) {instance_destroy();}
    var zx = instance_create_depth(x, y, depth, Boss_h);
    zx.sprite_index = sprite_index;
}