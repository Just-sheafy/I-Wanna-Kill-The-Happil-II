var i;

if (instance_number(world) > 1) {
	instance_destroy(); exit;
}

randomize();

shader_supported = shaders_are_supported();
resource_loaded = false;
credit_loaded = false;

///////////////////
//  FILE NAMING  //
///////////////////
gameCaption = "IWKTHII_" //Used as your file prefixes

///////////////////////
//  MUSIC VARIABLES  //
///////////////////////

musicOn = -1;
curMusic = noone; //Default, to avoid errors
filePlaying = -1;
Instance = -1;
Kill = -1;

for(i=0; i<3; i+=1) {
	list_sounds[i] = ds_list_create();
}
effect = -1;

music_speed = 1;
music_sp = 1;

//////////////////////
//  FOR SAVE FILES  //
//////////////////////

savenum = 0; //Which save is selected
difficulty = 1; //Hard by default
for(i = 0; i < 16; i += 1) {
   items[i] = 0; //Up to 16 bosses, none are defeated by default
}
for(i = 0; i < 72; i += 1) {
   achieve[i] = 0;
}

////////////////////////
//  DEFAULT CONTROLS  //
////////////////////////

leftKey = vk_left;
rightKey = vk_right;
upKey = vk_up;
downKey = vk_down;
jumpKey = vk_shift;
shootKey = ord("Z");
skipKey = ord("S");
gameRestart = ord("R");
suicide = ord("Q");
musicKey = ord("M");
pauseKey = ord("P");

forcedSave = ord("C"); // debug setting
forcedLoad = ord("X");

///////////////////////////
//  DEFAULT SCREENSHOTS  //
///////////////////////////
ss0 = 0;
ss1 = 0;
ss2 = 0;

timing = 60;
h = 0;
m = 0;
s = 0;

SI_ok = 1;
HI_ok = 1;
BN_ok = 1;
WASP_ok = 1;
HEALTH_ok = 1;
HEALTH_type = 0; // 3 types in total
BH_ok = 1;
AT_ok = 1;

kill = true;
IJ = false;

music_vol = 1;
sound_vol = 1;
music_slowdown = 1;
vsync = 0;
screen_effect_enable = 1;

//NOTE: The number of the ss variables refer to the image_index of the screenshot sprite
//image 0 is the "NEW GAME" image. Subsequent images must be added to that sprite in order for
//the screenshots to work properly. More info in the screenshot object.

//IF A CONTROLS FILE EXISTS, IT IS EXECUTED AND OVERWRITES THE DEFAULT CONTROLS
if file_exists(gameCaption+"controls") {loadControls();}

// if file_exists("globaldata") file_delete("globaldata");
// if file_exists(gameCaption+"save") file_delete(gameCaption+"save");

//FINALLY, INITIALIZES THE SECRET ITEMS, DIFFICULTIES, AND DEATH COUNTS
if !file_exists("globaldata") {
    gamediff[0]=-1;
    gamediff[1]=-1;
    gamediff[2]=-1;
    deaths[0]=0;
    deaths[1]=0;
    deaths[2]=0;
    musicOn=1;
    saveDeaths();
}
loadDeaths();

// ADDITIONAL VARIABLES

warn = 0; // happil warning
a = 0; // position of the music instance
b = 0; // boss hp
c = 0; // maintain boss hp
credit_played = false; // false end credit played?
hp_before = -1; // remained hp
var_temp = 0; // temporary variable
re_nodie = false; // constant save
surf_temp = -1;
spr_temp = -1;

secretBoss1Skip = 0;
Boss4HP = 44;

room_before = -1;
for(i=0; i<8; i+=1) {
    back_x_before[i] = 0;
    back_y_before[i] = 0;
}
list_obj_before = ds_list_create();
list_objx_before = ds_list_create();
list_objy_before = ds_list_create();

global.fontBoss02 = font_add_sprite(sprFontBoss02, 32, 1, 8);
global.fontBoss04 = font_add_sprite(sprFontBoss04, 32, 1, -1);

//KEEP THIS OBJECT PERSISTENT!
//NEVER DESTROY THIS OBJECT//