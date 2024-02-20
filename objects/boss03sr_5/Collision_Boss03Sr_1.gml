if visible and other.active and !instance_exists(Boss03Sr_11) {
	var i, zx;
	
    visible = false;
	instance_create_depth(x, y, -50, surf_ripple);
    audio_play_sound(sndBlockChange, 0, false);
    for(i=0; i<8; i+=1) {
        zx = instance_create_layer(x, y, "Player", Boss03Sr_6);
        zx.speed = 16;
        zx.direction = 45*i;
        zx.a = 1;
    }
    instance_create_depth(0, 0, -100, light);
    with(Boss03Sr_11) {a = 0;}
    audio_play_sound(sndSr03_4, 0, false);
    Boss03Sr_h.hp += 10;
    other.active = false;
    with(other) {
        a1 = 1;
        a1_1 = irandom_range(11-Boss03Sr_h.hp*0.05, 16-Boss03Sr_h.hp*0.1);
        alarm[1] = 300;
        alarm[2] = 450;
    }
}