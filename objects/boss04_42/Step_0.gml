var i;

resol[0] = max(room_width/2, resol[0]-5);
resol[1] = max(room_height/2, resol[1]-3.8);

t += spd*(t_spd + sign(t_spd)*t_spd_extra) / room_speed;
rot = clamp(rot+(t_spd + sign(t_spd)*t_spd_extra) / room_speed, -1, 1);
if (spd < spd_after) spd += 0.05;
else if (spd > spd_after) spd -= 0.05;

for(i=0; i<3; i+=1) {
	col[i] += (col_after[i] - col[i]) / 15;
}