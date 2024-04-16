///Init variables

layer_hspeed("Background", -2); //Set Background speed
scr_fade_screen(c_black, 1, 0, 100, true);

col_disabled = merge_color(c_black, c_white, 0.3); //Color of disabled buttons should be darker due to the alpha blending limitations in GM8

mode = 0; //0 - Normal, 1 - Key config

t = 0;

select = 0; //Currently selected option
top_select = 0; //Top option on screen
total_options = 15; //Total options
options_on_screen = 3; //Bottom option on screen

x_selector = 64; //Button X position

y_selector = 20; //First button Y position (on surface)
y_separator = 90; //Separation between buttons

////BUTTONS////

//Ini button values

//Those values should be loaded from file
val[0] = world.music_vol; //Music volume
val[1] = world.sound_vol; //Sound volume
val[2] = world.music_slowdown; //Music slowdown effect
val[3] = world.vsync; //VSync
val[4] = world.screen_effect_enable; //Screen effect
val[7] = world.SI_ok; //Stage Image
val[8] = world.HI_ok; //Happil Image
val[9] = world.HEALTH_ok; //Health system
val[10] = world.HEALTH_type; //Health type
val[11] = world.BN_ok; //Boss name
val[12] = world.BH_ok; //Boss health
val[13] = world.AT_ok; //Avoidance Time
val[14] = world.WASP_ok; //WASP

//Connect buttons with corresponding sprites
btn_spr[0] = spr_option_button_1;
btn_spr[1] = spr_option_button_2;
btn_spr[2] = spr_option_button_3;
btn_spr[3] = spr_option_button_4;
btn_spr[4] = spr_option_button_5;
btn_spr[5] = spr_option_button_6;
btn_spr[6] = spr_option_button_7;
btn_spr[7] = spr_option_button_8;
btn_spr[8] = spr_option_button_9;
btn_spr[9] = spr_option_button_10;
btn_spr[10] = spr_option_button_11;
btn_spr[11] = spr_option_button_12;
btn_spr[12] = spr_option_button_13;
btn_spr[13] = spr_option_button_14;
btn_spr[14] = spr_option_button_15;

//Button availability
for(i = 0; i < total_options; i += 1)
{
    btn_available[i] = true;
}
//Disable specific buttons manually e.g. WASP is only available only when secret 3 obtained
btn_available[6] = false; //This button must be always disabled, used as placeholder for keyboard icons

btn_available[10] = val[9];
if (!world.items[0]) btn_available[12] = false;
if (!world.items[3]) btn_available[13] = false;
if (!world.items[2]) btn_available[14] = false;

////KEYBOARD KEYS////

key_select = 0; //Currencly selected key
key_config = false; //Is setting a key right now

//X coords
key_x[0] = x_selector;
key_x[1] = x_selector + 96 * 1;
key_x[2] = x_selector + 96 * 2;
key_x[3] = x_selector + 96 * 2 + 64 * 1;
key_x[4] = 500;
key_x[5] = 500 + 64 * 1;
key_x[6] = 500 + 64 * 2;
key_x[7] = 500 + 64 * 1;

//Y coords
for(i = 0; i < 7; i += 1)
{
    key_y[i] = 0;
}
key_y[7] = -64; //Only up arrow key is upper than others

//Sprites
for(i = 0; i < 4; i += 1)
{
    key_spr[i] = spr_key_funcs;
}
for(i = 4; i < 8; i += 1)
{
    key_spr[i] = spr_key_arrows;
}

//Image indexes
for(i = 0; i < 4; i += 1)
{
    key_img[i] = i;
}
key_img[4] = 2;
key_img[5] = 0;
key_img[6] = 3;
key_img[7] = 1;

////SURFACE////

//Surface size
surf_width = room_width;
surf_height = room_height - y_selector;

//Surface position
surf_x = 0;
surf_y = 160;


offset_y = 0; //Menu Y position (for scrolling effect)

surf = -1; //Create surface

////OTHER////

//Clock angles
angle[0] = random(360);
angle[1] = random(360);

//Spike position
spike_x = 0;
spike_y = 0;

//Timer between accepting button holding (For more precise music/sound volume changes)
slider_time = 0;

active = true;

// Health type 0,2
index_time = 0;