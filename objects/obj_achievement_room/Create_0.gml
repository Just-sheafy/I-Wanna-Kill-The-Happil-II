///Init variables

var i, ii;

t = 0;

layer_hspeed("Background", -2) //Set Background speed
scr_fade_screen(c_black, 1, 0, 100, true);

hold_time = 0;
is_holding = false;

x_selector = 80; //First Achievement X position
y_selector = 72; //First Achievement Y position

x_separator = 96; //Horizontal distance between icons
y_separator = 112; //Vetical distance between icons

offset_y = 0; //Menu Y position (for scrolling effect)

row = 7; //Number of icons is a single row

select = 0; //Currently selected achievement
select_scale_to = 1.5; //Scale of selected icon

select_scale = 1; //Current scale of selected icon
lock_alpha = 0.5; //Alpha of lock icon

top_row = 0; //Top visible row
options_on_screen = 1; //Bottom row on screen

total = sprite_get_number(sprAchieveImage)-1; //Total number of achievements

active = true;

//Init achievements sprite and text

txt_flavor[0] = "-Hunt Red!##Died 100 times.#Good Luck. :)";
txt_flavor[1] = "-Are You Angry?##Died 1000 times.#Still not enough!";
txt_flavor[2] = "-Hosung Goes to You!##Died 4444 times.#Hosung will love you 4444.";
txt_flavor[3] = "-I Hate This Game.##Died 9999 times.#But do not erase this#game for now!";
txt_flavor[4] = "-Five Zero?##Died 100000 times.#Please go outside and get#some fresh air.";
txt_flavor[5] = "-Seven Trials!##Died 1000000 times.#Thousands of thousands#of deaths won't stop you.#Just keep going!";
txt_flavor[6] = "-One is for One!##Played for an 1 hour.#Quick break, isn't it?";
txt_flavor[7] = "-Our Hour is Precious.##Played for 24 hours.#What a daisy day.";
txt_flavor[8] = "-Are You Crazy?##Played for 100 hours.#You had spent 360000s.#Now spending 1000000s#is not a big deal.";
txt_flavor[9] = "-Pro Tip:#Press F4 with alt.";
txt_flavor[10] = "-I Wanna Escape!##Pressed " + chr(34) + "Esc" + chr(34) + ".#But it refused.";
txt_flavor[11] = "-Get it for Free!##This is not Ad.#This is a present for you.#:D";
txt_flavor[12] = "-I Hurt my Heart.##Go to the Hospital.#Now you have full mana!";
txt_flavor[13] = "-Go Ahead!##Clear Stage 1.#Try again. :P";
txt_flavor[14] = "-Blood, My Blood!##Can see Boss's health.#Every effort shall be#rewarded.";
txt_flavor[15] = "-Ang Get Some?##Defeat The Gay.#Come on, let's go!";
txt_flavor[16] = "-2 to the 11th POWER!##Defeat Four-Headed Yoshi.#Yoshi was left behind#anyhow.";
txt_flavor[17] = "-What are You Doing??##Stop practicing it...#YOU ARE HAPPILOUS.";
txt_flavor[18] = "-Scared!##Ghosts are around you.#You cannot access the#sacred jewels!";
txt_flavor[19] = "-Greed is Infinite,##Repeat the same mistakes.#Backtracks were mistakes.";
txt_flavor[20] = "-Believe yourself.##Clear Stage 2.#And you will die.";
txt_flavor[21] = "-Catch Mouse.##Mouse Point doesn't move.#Is it that valuable?";
txt_flavor[22] = "-Do You Know LIE?##Defeat Daazer.#Whose is DAS?";
txt_flavor[23] = "-HAPPY END!##Die with Her.#So close.";
txt_flavor[24] = "-(z owo)z Uhh!##(/ owo)/ Nya!#I Wanna be Battle Cats :3";
txt_flavor[25] = "-Icarus...##Burn in the Sun.#You cannot fly, you know?";
txt_flavor[26] = "-I Love Diamonds.##Die to get diamonds.#You have to, cuz you can.";
txt_flavor[27] = "-I Wanna Take You,##To the GAY BAR!#Up to you when coming in,#not when leaving.";
txt_flavor[28] = "-Destroy Him!##Clear Stage 3.#Now Apocalypse begins.";
txt_flavor[29] = "-WASP?##Can shoot fast.#Here I show you!";
txt_flavor[30] = "-Watching YOU!!##Defeat Hosungryn.#Finally.";
txt_flavor[31] = "-Wanna Have Fun?##Defeat Mogeko King.#Welcome to the#Mogeko Castle!";
txt_flavor[32] = "-Dog Food Lid?##DILDO OF GOD!!####                        E:";
txt_flavor[33] = "###  How can you see this?";
txt_flavor[34] = "-SGGK Love!##Super Play: 2 SGGKs!#Shortest is the hardest.";
txt_flavor[35] = "    ~ GAME OVER ~## !! Double Dance Time !!#   \( ^o^ \)  (/ ^o^ )/# !! Double Dance Time !!";
txt_flavor[36] = "-Play an Half!##Clear Stage 4.#Sinuga yoi.";
txt_flavor[37] = "-Time is Gold.##How long is Endurance?#Gold is not time.";
if (!world.achieve[39]) {
	txt_flavor[38] = "-What Happened?##Killed Just...?";
} else {
	txt_flavor[38] = "-Just Killed Just!##Defeat Just Kid.#Now we are Justified.";
}
txt_flavor[39] = "-Infinite 1-UPs!##Best known glitch ever!#Unfortunately infinite lives#do not help us. XD";


for(i = 0; i < total; i += 1) //Locked by default
{
    spr[i] = spr_achievement_locked;
    img[i] = 0;
    txt[i] = "### ~ Locked Achievement ~";
}

img[14] = 1;
img[15] = 2;
img[16] = 2;
img[17] = 2;
img[21] = 1;
img[22] = 2;
img[23] = 2;
img[24] = 2;
img[29] = 1;
img[30] = 2;
img[31] = 2;
img[37] = 1;
img[38] = 2;
img[39] = 2;

for(i = 0; i < total; i += 1) //Unlocked achievements
{
	ii = i;
	if (i >= 38) ii++;
    if (world.achieve[i]) { 
        spr[i] = sprAchieveImage;
        img[i] = ii;
        txt[i] = txt_flavor[i];
    }
}

// exceptional
if (world.achieve[38] and !world.achieve[39]) {
	i = 38; ii = i;
    spr[i] = sprAchieveImage;
    img[i] = ii;
    txt[i] = txt_flavor[i];
}


////SURFACE////

//Surface size
surf_width = room_width - 64;
surf_height = 304 + 48;

//Surface position
surf_x = 32;
surf_y = 304 - 48;

surf = -1; //Create surface