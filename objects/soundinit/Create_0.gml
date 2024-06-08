// INITIALIZE SOUND


global.title = audio_create_stream("BGM/Title.ogg");
global.Silent = audio_create_stream("BGM/Silent.ogg");
global.None = audio_create_stream("BGM/None.ogg");
global.Option = audio_create_stream("BGM/Option.ogg");
global.Difficulty = audio_create_stream("BGM/Difficulty.ogg");
global.stageItem = audio_create_stream("BGM/Item.ogg");
global.stageItem2 = audio_create_stream("BGM/Item2.ogg");
global.Clear = audio_create_stream("BGM/Clear.ogg");
global.Clear2 = audio_create_stream("BGM/Clear2.ogg");
global.Ending = audio_create_stream("BGM/Ending.ogg");
global.Sdeath = audio_create_stream("BGM/Death.ogg");
global.Sdeath2 = audio_create_stream("BGM/Death2.ogg");
global.Sdeath3 = audio_create_stream("BGM/Death3.ogg");

global.overworldA = audio_create_stream("BGM/OverworldA.ogg");
global.overworldB = audio_create_stream("BGM/OverworldB.ogg");

global.stage01A = audio_create_stream("BGM/Stage01A.ogg");
global.stage01B = audio_create_stream("BGM/Stage01B.ogg");
global.stage01Bs1 = audio_create_stream("BGM/Stage01Boss1.ogg");
global.stage01Bs2 = audio_create_stream("BGM/Stage01Boss2.ogg");
global.phantom = audio_create_stream("BGM/Phantom.ogg");

global.stage02A = audio_create_stream("BGM/Stage02A.ogg");
global.stage02ALoop = -1;
global.stage02B = audio_create_stream("BGM/Stage02B.ogg");
global.stage02Bs1 = audio_create_stream("BGM/Stage02Boss1.ogg");
global.stage02Bs2 = audio_create_stream("BGM/Stage02Boss2.ogg");
global.stage02Bs3 = audio_create_stream("BGM/Stage02Boss3.ogg");
global.lovetrap = audio_create_stream("BGM/LoveTrap.ogg");

global.stage03A = audio_create_stream("BGM/Stage03A.ogg");
global.stage03ALoop = -1;
global.stage03B = audio_create_stream("BGM/Stage03B.ogg");
global.stage03Wait = audio_create_stream("BGM/Stage03Wait.ogg");
global.stage03Bs1 = audio_create_stream("BGM/Stage03Boss1.ogg");
global.stage03Bs2 = audio_create_stream("BGM/Stage03Boss2.ogg");
global.stage03Bs3 = audio_create_stream("BGM/Stage03Boss3.ogg");
global.mental = audio_create_stream("BGM/Mental.ogg");
global.dotkid = audio_create_stream("BGM/DotKid.ogg");

global.stage04A = audio_create_stream("BGM/Stage04A.ogg");
global.stage04B = audio_create_stream("BGM/Stage04B.ogg");
global.stage04Bs1 = audio_create_stream("BGM/Stage04Boss1.ogg");
global.stage04Bs1Loop = -1;
global.stage04Bs2 = audio_create_stream("BGM/Stage04Boss2.ogg");
global.stage04Bs3 = audio_create_stream("BGM/Stage04Boss3.ogg");
global.stage04Bs3Loop = audio_create_stream("BGM/Stage04Boss3Loop.ogg");
global.stage04Bs4 = audio_create_stream("BGM/Stage04Boss4.ogg");
global.stage04Bs5 = audio_create_stream("BGM/Stage04Boss5.ogg");
global.stage04BsDefeat = audio_create_stream("BGM/Stage04BossDefeat.ogg");
global.contrary = audio_create_stream("BGM/Contrary.ogg");
global.catastrophe = audio_create_stream("BGM/Catastrophe.ogg");

global.stage01SrBef = -1;
global.stage01Sr1 = audio_create_stream("BGM/Stage01Secret1.ogg");
global.stage01Sr2 = audio_create_stream("BGM/Stage01Secret2.ogg");
global.stage01Sr3 = -1;
global.stage01Sr4 = -1;
global.stage02Sr1 = audio_create_stream("BGM/Stage02Secret1.ogg");
global.stage02Sr2 = audio_create_stream("BGM/Stage02Secret2.ogg");
global.stage02Sr3 = audio_create_stream("BGM/Stage02Secret3.ogg");
global.stage03Sr1 = audio_create_stream("BGM/Stage03Secret1.ogg");
global.stage03Sr2 = audio_create_stream("BGM/Stage03Secret2.ogg");

// HAPPILOUS
/*
global.stageItem = audio_create_stream("BGM2/Item.ogg");
global.stageItem2 = audio_create_stream("BGM2/Item2.ogg");

global.overworldA = audio_create_stream("BGM2/OverworldA.ogg");
global.overworldB = audio_create_stream("BGM2/OverworldB.ogg");

global.stage01A = audio_create_stream("BGM2/Stage01A.ogg");
global.stage01B = audio_create_stream("BGM2/Stage01B.ogg");
global.stage01Bs1 = audio_create_stream("BGM2/Stage01Boss1.ogg");
global.stage01Bs2 = audio_create_stream("BGM2/Stage01Boss2.ogg");

global.stage02A = audio_create_stream("BGM2/Stage02A.ogg");
global.stage02ALoop = audio_create_stream("BGM2/Stage02ALoop.ogg");
global.stage02B = audio_create_stream("BGM2/Stage02B.ogg");
global.stage02Bs1 = audio_create_stream("BGM2/Stage02Boss1.ogg");
global.stage02Bs2 = audio_create_stream("BGM2/Stage02Boss2.ogg");
global.stage02Bs3 = audio_create_stream("BGM2/Stage02Boss3.ogg");

global.stage03A = audio_create_stream("BGM2/Stage03A.ogg");
global.stage03ALoop = audio_create_stream("BGM2/Stage03ALoop.ogg");
global.stage03B = audio_create_stream("BGM2/Stage03B.ogg");
global.stage03Bs2 = audio_create_stream("BGM2/Stage03Boss2.ogg");
global.stage03Bs3 = audio_create_stream("BGM2/Stage03Boss3.ogg");

global.stage04A = audio_create_stream("BGM2/Stage04A.ogg");
global.stage04B = audio_create_stream("BGM2/Stage04B.ogg");
global.stage04Bs1 = audio_create_stream("BGM2/Stage04Boss1.ogg");
global.stage04Bs1Loop = audio_create_stream("BGM2/Stage04Boss1Loop.ogg");
global.stage04Bs2 = audio_create_stream("BGM2/Stage04Boss2.ogg");
global.stage04Bs3 = audio_create_stream("BGM2/Stage04Boss3.ogg");
global.stage04Bs4 = audio_create_stream("BGM2/Stage04Boss4.ogg");
global.stage04Bs5 = audio_create_stream("BGM2/Stage04Boss5.ogg");

global.stage01SrBef = audio_create_stream("BGM2/Stage01SecretBef");
global.stage01Sr2 = audio_create_stream("BGM2/Stage01Secret2.ogg");
global.stage01Sr3 = audio_create_stream("BGM2/Stage01Secret3.ogg");
global.stage01Sr4 = audio_create_stream("BGM2/Stage01Secret4.ogg");
global.stage03Sr1 = audio_create_stream("BGM2/Stage03Secret1.ogg");
global.stage03Sr2 = audio_create_stream("BGM2/Stage03Secret2.ogg");
*/

// ETC

global.sndDogma = audio_create_stream("sound/SFX/sndDogma.ogg");
global.sndEmperor = audio_create_stream("sound/SFX/sndEmperor.wav");

// CREATE WORLD

instance_create_depth(0,0,0,world);
with(world) sound_group();

draw_texture_flush();
sprite_prefetch(bg_main_menu);
sprite_prefetch(sprAchieveGet);
sprite_prefetch(sprHappilous3);

alarm[0]=1;