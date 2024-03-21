function scr_ease_bump(time){
	// scr_ease_bump(time);
	// input: 0~1, output: 0~1
	
	var t = time mod 1;

	if (t < 1/3) return (cos(degtorad(180*3*t))+1)/2;
	else if (t < 2/3) return 0;
	else return (1-cos(degtorad(180*3*(t-2/3))))/2;
}

function scr_ease_cubic(time){
	// scr_ease_cubic(time);
	// input: 0~1, output: 0~1
	
	return -2*time*time*time + 3*time*time;
}

function scr_ease_expo(time){
	// scr_ease_expo(time);
	// input: 0~1, output: 0~1
	
	if (time == 0) return 0;
	else if (time == 1) return 1;
	else if (time < 0.5) return power(2, 20*time-10) / 2;
	else return (2- power(2, -20*time+10)) / 2;
}

function scr_ease_in_out_quint(argument0) {
	if(argument0 < 0.5)
	{
	    return  16 * power(argument0, 5);
	}
	else
	{
	    return 1 - power(-2 * argument0 + 2, 5) / 2;
	}
}

function scr_ease_out_quart(argument0) {
	return 1 - power(1 - argument0, 4);
}

function scr_ease_cos(argument0, argument1) {
	// scr_ease_cos(time, step);
	// input: 0~2+2*step, number
	
	var time, step, temp;
	
	time = argument0;
	step = argument1;
	if (time <= 0) return 1;
	else if (time <= 1) {
	    temp = 1-2*time;
	    return -(power(temp, 3)-3*temp)/2;
	} else if (time <= 1+step) return -1;
	else if (time <= 2+step) {
	    temp = -1+2*(time-1-step);
	    return -(power(temp, 3)-3*temp)/2;
	} else return 1;
}