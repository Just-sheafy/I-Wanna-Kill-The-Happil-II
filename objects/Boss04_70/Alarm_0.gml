var i, temp, dir;

for(i=0; i<3; i+=1) {
	temp = instance_create_depth(room_width/2+lengthdir_x(520, angle+120*i),
		room_height/2+lengthdir_y(520, angle+120*i), -1, Boss04_55);
	dir = point_direction(temp.x, temp.y, room_width/2, room_height/2);
	temp.hspd = lengthdir_x(7, dir);
	temp.vspd = lengthdir_y(7, dir);
	temp.danger = 1;
	temp.danger_time_max = 25;
}
if (instance_exists(player) and patt < 890) alarm[0] = 10;