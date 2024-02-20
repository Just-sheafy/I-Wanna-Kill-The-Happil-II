///Init effects and variables

layer_background_sprite(layer_get_id("Background"), choose(bg_main_menu, bg_main_menu2, bg_main_menu3));

//Create other menu effects
instance_create_depth(0, 0, -100, obj_duality_effect);
instance_create_depth(0, 0, -150, obj_main_menu_spectrum);
instance_create_depth(400, 304, -101, obj_menu_just);
scr_fade_screen(c_black, 1, 0, 50, true);
layer_hspeed("Background", -0.5);

enabled = false; //When disabled, show only title, enable by pressing any button
frozen = false; //Disables any input

select = 0; //Currently selected option
total_options = 4; //Total options

title_x = 400; //Title X position

title_y_to = 150; //Title Y position when enabled
title_y_from = 304; //Title Y possition when disabled
title_y = title_y_from; //Current title Y position
instance_create_depth(title_x, title_y, -199, obj_title_2);


title_y_transition_time = 60; //Time to change Y position
title_t = 0;
easing_title = scr_ease_out_quart; //Set easing function for title

x_selector = 400; //Button X position

y_selector = 364; //Starting button Y position
y_separator = 70; //Separation between buttons

//Connect buttons with corresponding sprites
btn_spr[0] = spr_menu_button_1;
btn_spr[1] = spr_menu_button_2;
btn_spr[2] = spr_menu_button_3;
btn_spr[3] = spr_menu_button_4;

scale_to = 1; //Normal scale
scale_from = .5; //Scale when changed option
button_alpha = 0; //Sets button alpha (0 when disabled, 1 when enabled)
button_alpha_time = 20; //Time to change alpha (in frames)

//Initialize scale
for(i = 0; i < total_options; i += 1)
{
    btn_scale_t[i] = 1;
    btn_scale[i] = 1;
}


easing_buttons = scr_ease_in_out_quint; //Set easing function for buttons
easing_time = 8; //Time to fully change scale (in frames)

t = 0;