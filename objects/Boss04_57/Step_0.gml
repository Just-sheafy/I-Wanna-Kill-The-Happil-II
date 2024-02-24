var i;

alpha = min(1, alpha + 0.02);

key_time = max(0, key_time - 1);
key_scale = max(1, key_scale - 0.05);
attack_scale = max(1, attack_scale - 0.05);
defence_scale = max(1, defence_scale - 0.05);
t_spd_scale = max(1, t_spd_scale - 0.05);

if (key_time <= 0) {
	var num = 0;
	num += keyboard_check(world.leftKey);
	num += keyboard_check(world.rightKey);
	num += keyboard_check(world.upKey);
	num += keyboard_check(world.downKey);
	num += keyboard_check(world.jumpKey);
	num += keyboard_check(world.shootKey);
	num += keyboard_check(world.skipKey);
	num += keyboard_check(world.gameRestart);
	
	if (num >= key_restricted) {
		key_time = 200;
		audio_play_sound(snd04_44, 0, false, world.sound_vol);
		audio_play_sound(snd04_45, 0, false, world.sound_vol);
		
		if (world.items[3]) instance_create_depth(400, room_height + 300, -50, Boss04_58);
		
		key_scale = 2;
		defence_scale = 2;
		t_spd_scale = 2;
		
		if (attack < 8) {
			attack_scale = 2;
			attack = min(8, attack*2);
			t_spd += 1;
		} else t_spd *= 2;
		defence += 5;
		objEndCredit.t_spd = t_spd;
	}
}


// shaders
resol[0] = max(room_width/2, resol[0]-5);
resol[1] = max(room_height/2, resol[1]-3.8);

t += spd*(t_spd + sign(t_spd)*t_spd_extra) / room_speed;
rot = clamp(rot+(t_spd + sign(t_spd)*t_spd_extra) / room_speed, -1, 1);
if (spd < spd_after) spd += 0.05;
else if (spd > spd_after) spd -= 0.05;

for(i=0; i<3; i+=1) {
	col[i] += (col_after[i] - col[i]) / 15;
}