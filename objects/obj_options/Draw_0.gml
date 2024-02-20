///Draw menu
var darkness_alpha, spr, col, alpha;

//Draw black screen
darkness_alpha = (sin(t * 2 * pi / 90) + 1) / 2 * 0.3 + 0.5; //Get black screen alpha

draw_set_alpha(darkness_alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, 800, 608, false);

draw_set_alpha(1);

//Draw clocks
draw_sprite_ext(spr_options_nseo, 0, 400, 304, 1, 1, angle[1], c_white, 0.15);
//draw_sprite_ext(spr_options_nseo, 0, 400, 304, 1, 1, -angle[1], c_white, 0.1);
draw_sprite_ext(spr_options_clockface, 0, 400, 304, 1, 1, angle[0], c_white, 0.05);
//draw_sprite_ext(spr_options_clockface, 0, 800, 284, 1, 1, -angle[0], c_white, 0.1);

//Draw "Options" text
draw_sprite(spr_options, 0, 400, 16);

//Make sure surface exists
if(!surface_exists(surf))
{
    surf = surface_create(surf_width, surf_height);
}

gpu_set_blendmode_ext(bm_one, bm_inv_src_alpha); //Use inverted blend mode to draw transparent sprites. All sprites must have premultiplied alpha.

surface_set_target(surf);

draw_clear_alpha(c_black, 0); //Clear surface

for(i = 0; i < 2; i += 1) //Draw sliders
{

    draw_sprite_ext(spr_option_slider_empty, 0, x_selector + 400, y_selector + i * y_separator - offset_y, 1, 1, 0, c_white, 1); //Empty part
    draw_sprite_part_ext(spr_option_slider_full, 0, 0, 0, 200 * val[i], 20, x_selector + 400, y_selector + i * y_separator - offset_y - 10, 1, 1, c_white, 1); //Filled part
    draw_sprite_ext(spr_option_slider_outline, 0, x_selector + 400, y_selector + i * y_separator - offset_y, 1, 1, 0, c_white, 1); //Outline
    
    
    
} 

for(i = 0; i < total_options; i += 1) //Draw button names
{
    //Decrease alpha and set custom drawing color for disabled buttons
    alpha = 1;
    col = c_white;
    if(!btn_available[i])
    {
        alpha = 0.2;
        col = col_disabled;    
    }
    
    draw_sprite_ext(btn_spr[i], i == select && mode == 0, x_selector, y_selector + i * y_separator - offset_y, 1, 1, 0, col, alpha);
} 

for(i = 0; i < 8; i += 1) //Draw keyboard keys
{
    //Init color
    col = c_gray; //Default color
    if(key_select == i && mode == 1)
    {
        if(key_config) //Currently configurating a button
            col = c_white;
        else //Selected button
            col = merge_color(c_gray, c_white, 0.5);
    }
    draw_sprite_ext(key_spr[i], key_img[i], key_x[i], y_selector + 6 * y_separator - offset_y + key_y[i], 1, 1, 0, col, 1);   
}

//Draw diabled/enabled text

for(i = 2; i < total_options; i += 1) //Do the same for remaining buttons (I can't to it in a single cycle due to the GM8 limitations
{
	if (i == 5 || i == 6) continue;
	
	//Getting corresponding sprite
	if (i != 10) {
	    if (val[i] == true)
	        spr = spr_option_on;
	    else
	        spr = spr_option_off;
	} else {
		if (val[i] == 0) spr = spr_option_healthtype1;
		else if (val[i] == 1) spr = spr_option_healthtype2;
		else spr = spr_option_healthtype3;
	}
    
	//Decrease alpha and set custom drawing color for disabled buttons
    alpha = 1;
    col = c_white;
	if (i == 10 && !(i == select && mode == 0)) col = c_gray;
    if(!btn_available[i])
    {
        alpha = 0.2;
        col = col_disabled;    
    }
	if (i == 10 && (val[i] == 0 || val[i] == 2)) {
		draw_sprite_ext(sprPlayerIdle, floor(index_time/5), x_selector + 500, y_selector + i * y_separator - offset_y, 1, 1, 0, col, alpha);	
	}
    draw_sprite_ext(spr, i == select && mode == 0, x_selector + 500, y_selector + i * y_separator - offset_y, 1, 1, 0, col, alpha);
}
 
if(mode == 0) //Draw spike
    draw_sprite(spr_option_spike, 0, x_selector + spike_x, y_selector - offset_y + spike_y);

surface_reset_target();

draw_surface(surf, surf_x, surf_y); //Draw the menu

gpu_set_blendmode(bm_normal); //Switch back to the default blend mode