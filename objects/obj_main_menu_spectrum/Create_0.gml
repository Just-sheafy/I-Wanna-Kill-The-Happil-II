///Init variables

var start_angle, hue_center, hue_amp, cycles;
var i;

lines_num = floor(room_height / 14); // Number of lines on one side

cycles = irandom_range(2, 3);


start_angle = random(2 * pi);
hue_center = (164 - 63) / 2 + 63;
hue_amp = (164 - 63) / 2;

for (i = 0; i < lines_num; i += 1)
{
    
    hue[i] = sin(i / lines_num * 2 * pi * cycles + start_angle) * hue_amp + hue_center //Cool colors (left side of color circle)
    
    sat[i] = irandom_range(150,255);
    bars_num[i] = irandom_range(1,6);     
}


start_angle = random(2 * pi);
hue_center = (318 - 195) / 2 + 195;
hue_amp = (318 - 195) / 2;

for (i = lines_num; i < lines_num * 2; i += 1)
{
       
    hue[i] = (sin((i - lines_num) / lines_num * 2 * pi * cycles + start_angle) * hue_amp + hue_center) mod 256; //Warm colors (right of color circle)
        
    sat[i] = irandom_range(150,255);
    bars_num[i] = irandom_range(1,6);     
}

t = 0;
t_next = 5; //Delay between spectrum changes


//Unused

scale = 1; //Default spectrum scale
max_scale = 2.5; //Changed spectrum scale
bpm = 15; //Delay between spectrum scale change
