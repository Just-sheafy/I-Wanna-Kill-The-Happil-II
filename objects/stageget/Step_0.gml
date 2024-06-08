if place_meeting(x-80,y-80,player) or place_meeting(x-80,y+80,player) or place_meeting(x,y,player) {image_alpha-=0.05;}
else {image_alpha+=0.05;}
if image_alpha <= 0.2 {image_alpha = 0.2;}
if image_alpha >= 1 {image_alpha = 1;}

if (image_index == 69) {
	var text_temp = "is never The End ";
	
	repeat(3) {
		time += 1;
		if (time > string_length(text_temp)) time -= string_length(text_temp);
		text += string_char_at(text_temp, time);
	}
	
	draw_set_font(stageFont);
	if (string_width(string_copy(text, index, string_length(text)+1-index)) > 320) {
		text = string_insert("\n", text, string_length(text)-1);
		index = string_length(text);
	}
}