var temp;

t = -10;
t_spd = 1;
t_bound = 250;
number_hit = 0;
depth = -100;
ALPHA = 1;
ALPHA_fade = 0;
gameover = false;
error = false;
dead = false;

end_text = ds_list_create();
col = ds_list_create();
if (layer_exists("Background2"))
	layer_background_visible(layer_background_get_id(layer_get_id("Background2")), false);
if (layer_exists("Background3"))
	layer_background_visible(layer_background_get_id(layer_get_id("Background3")), false);

if (global.practice >= 0) global.practice -= 400;

if (global.practice < 0 && world.credit_played) {
	instance_create_depth(400, 384, -1, Boss04_55);
	instance_create_depth(400, 364, -2, player);
	instance_create_depth(0, 0, 180, Boss04_56);
	instance_create_depth(400, 304, 0, Boss04_57);
	instance_create_depth(room_width/2, room_height/2, -80, Boss04_51);
	instance_create_depth(0, 0, -100, dark1);
	
	t = t_bound;
	t_spd = 2;
	ALPHA = 0.25;
	number_hit = -2;
	depth = 150;
	if (!world.items[1]) instance_create_layer(0, 0, "Player", MouseC);
			
	if (world.HEALTH_ok) {
		var zx = instance_create_depth(0, 0, -49, playerHealth);
		if (world.hp_before != -1) zx.hp = min(8, world.hp_before);
		else zx.hp = 8;
		zx.hpm = 8;
		world.hp_before = -1;
	}
	
	if (world.SI_ok) audio_play_sound(sndStage, 0, false, world.sound_vol);
	var zx = instance_create_depth(800, 0, -2000, StageGet);
	zx.image_index = 68;
} else {
	alarm[0] = 10 - 9*(global.practice >= 0);
	alarm[1] = 50;
	alarm[2] = 190;
}

// dev
ds_list_add(end_text, "Main Developer");					ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "\"" + "Just" + "\"");				ds_list_add(col, "JUST");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "Sub Developer");						ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "\"" + "Starz0r, DorimecHouse, Po4ti" + "\"");
															ds_list_add(col, "DEV");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");

// testers
ds_list_add(end_text, "Testers (OLD)");						ds_list_add(col, "OLD");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "Kalzak, PDPlayer, Demon, Jjacbeo, Loppy");
															ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "Boshy, Kimguy, J, Meok-kkaebi, Prosker");
															ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "ZE, Bluehole, SpaceDuck, Anhimdeum");ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "Cho-jja, TMCreeper, Gafro");			ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "Testers");							ds_list_add(col, "TESTER");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "AliceNobodi, Chris, Essisten, Fatherpucci");
															ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "Forehead Man, FruitlessWasabi");		ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "Game Player Dark, Happy, Hercule");	ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "Hosungryn, IanBoy141, Keecker");		ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "Kizelf, Matsugon, Murzikk");			ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "Only, Phooey, Renko97");				ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "Sharp, Square, Tasffil, Zilyno");	ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");

// stage 1
ds_list_add(end_text, "Stage 1");							ds_list_add(col, "STAGE1"); // 39
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "I Wanna Conquer the Blow Game 1");
															ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna be the Fangame");			ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna Enjoy the Game");			ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna be the GGM");				ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna be the First");				ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna Go the Colorful World");		ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna be Dark Blue");				ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna be the Lord of Time");		ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna be the Guy");				ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "BOSS");								ds_list_add(col, "BOSS1");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "The Gay (The Guy, Guy)");			ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "Kagamine Rin, Len (Phantom)");		ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "Pink, Yellow, Blue, Red, and Black");ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "(Lord of Time)");					ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "Hidden Stage");						ds_list_add(col, "HIDDEN1");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "I Wanna be the Guy");				ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "Secret Boss");						ds_list_add(col, "SECRET1");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "4-Headed Yoshi (Kitiku Mario)");		ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");

// stage 2
ds_list_add(end_text, "Stage 2");							ds_list_add(col, "STAGE2"); // 74
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "I Wanna Conquer the Blow Game 2");	ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna Chase the Guy");				ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna be the Tribute");			ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna Escape the Natural Disaster");
															ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna Kill the Machine");			ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna be the Yassan(21)");			ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna be the Game Terminator 1");	ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna be the Original");			ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna Control the Space");			ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna be the Best Guy");			ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna Kill the Guy");				ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "BOSS");								ds_list_add(col, "BOSS2");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "Daazer (Geezer, Kill the Guy)");		ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "Gustav (Best Guy)");					ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "Hatsune Miku (Love Trap)");			ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "Hidden Stage");						ds_list_add(col, "HIDDEN2");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "I Wanna be a Brute of a Man");		ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "Secret Boss");						ds_list_add(col, "SECRET2");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "Unknown (Battle Cats)");				ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");

// stage 3
ds_list_add(end_text, "Stage 3");							ds_list_add(col, "STAGE3"); // 110
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "I Wanna be the RUKIMIN");			ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna be the Magnanimity");		ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna be the Justice");			ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna be the Diverse");			ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna be the Game Terminator 2");	ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna be the Hero-Again");			ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna Save the Minecraft");		ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Don't Wanna be the Gay");			ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna be the Heady");				ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna be the Best Guy 2");			ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna Take the Time-Machine");		ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna be the Boshy");				ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "BOSS");								ds_list_add(col, "BOSS3");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "Hosungryn (Solgryn, Boshy)");		ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "Hatsune Miku (Keep My Mental)");		ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "Gustav (Best Guy 2)");				ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "Hatsune Miku (Go the DotKID!)");		ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "INFLUKA (Timemachine)");				ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "Hidden Stage");						ds_list_add(col, "HIDDEN3");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "I Wanna be the Destination");		ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "Secret Boss");						ds_list_add(col, "SECRET3");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "Mogeko King (Mogeko Castle)");		ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");

//stage 4
ds_list_add(end_text, "Stage 4");							ds_list_add(col, "WHITE"); // 148
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "I Wanna Ang Get Some");				ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna Break the Rainbow");			ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna be the Random Spike");		ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna Break Through Unlock Trials");
															ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna be the Rebiahtan");			ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna be the Biotope");			ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna be the PD Happy");			ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna be the PD Mad");				ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna be the Goner");				ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna Go Out");					ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "I Wanna be the Best Guy 3");			ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna be the Queen Trap");			ds_list_add(col, "HAPPILOUS");
ds_list_add(end_text, "I Wanna Kill the Happil");			ds_list_add(col, "JUST");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "BOSS");								ds_list_add(col, "BOSS4");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "Just (Kill the Happil)");			ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "Kagamine Rin (Contrary)");			ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "Hatsune Miku (Catastrophe)");		ds_list_add(col, "LIGHTWHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "Hidden Stage");						ds_list_add(col, "HIDDEN4");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "I Wanna Go Out");					ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "Secret Boss");						ds_list_add(col, "SECRET4");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "???");								ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");

// Special thanks
ds_list_add(end_text, "Special Thanks");					ds_list_add(col, "THANKS"); // 190
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "AliceNobodi, DorimecHouse");			ds_list_add(col, "WHITE");
ds_list_add(end_text, "Hosungryn, Klan, Po4ti, Starz0r");	ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "");									ds_list_add(col, "WHITE");
ds_list_add(end_text, "AND...");							ds_list_add(col, "WHITE");


function draw_text_glow(x, y, string, intensity, c1, c2, c3, c4, alpha) {
	var i, j, temp;
	
	if (intensity <= 0) return;
	
	for(i=-intensity; i<=intensity; i+=1) {
		for(j=-intensity; j<=intensity; j+=1) {
			temp = sqrt(sqr(i)+sqr(j));
			if (temp > intensity) continue;
			draw_text_color(x+i, y+j, string, c1, c2, c3, c4, alpha * (intensity+2-temp) / (intensity+2));
		}
	}
}

function draw_text_temp(x, y, string, c1, c2, c3, c4, intensity, alpha) {
	if (t_spd <= 1) draw_text_glow(x, y+3, string, intensity+2, c_black, c_black, c_black, c_black, sqr(alpha)/15);
	draw_text_color(x, y, string, c1, c2, c3, c4, alpha);
	if (t_spd <= 1) draw_text_glow(x, y, string, intensity, c1, c2, c3, c4, sqr(alpha)/15);
}