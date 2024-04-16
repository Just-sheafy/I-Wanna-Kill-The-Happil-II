var xx0, xx1, yy0, yy1, dir;

xx0 = foot_0.x;
yy0 = foot_0.y;
xx1 = foot_1.x;
yy1 = foot_1.y;
    
dir = point_direction(xx0, yy0, xx1, yy1);
ox = (xx0+xx1)/2;
oy = (yy0+yy1)/2;
oy -= 160*image_yscale*abs(cos(degtorad(dir)));
    
x_origin += (ox-x_origin)/10;
y_origin += (oy-y_origin)/10;

x = x_origin;
y = y_origin;

time += 1;
if (time >= 50) vol = min(vol+0.02, 1);
if (audio_is_playing(Instance)) {
	audio_sound_gain(Instance, vol*world.sound_vol, 0);
	if (!instance_exists(player) and !instance_exists(Boss02_60)) {
		audio_stop_sound(Instance);
	}
}