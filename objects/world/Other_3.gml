var i;

// Data

if (ds_exists(list_obj_before, ds_type_list)) ds_list_destroy(list_obj_before);
if (ds_exists(list_objx_before, ds_type_list)) ds_list_destroy(list_objx_before);
if (ds_exists(list_objy_before, ds_type_list)) ds_list_destroy(list_objy_before);
if (ds_exists(list_console_text, ds_type_list)) ds_list_destroy(list_console_text);
if (ds_exists(map_macro_key, ds_type_map)) ds_map_destroy(map_macro_key);
if (ds_exists(map_macro, ds_type_map)) ds_map_destroy(map_macro);

font_delete(global.fontBoss02);
font_delete(global.fontBoss04);

// Surface

if (surf_temp != -1 and surface_exists(surf_temp)) {
    surface_free(surf_temp);
    surf_temp = -1;
}

//BGM

for(i=0; i<3; i+=1) {
	audio_stop_channel(i);
	if (ds_exists(list_sounds[i], ds_type_list)) ds_list_destroy(list_sounds[i]);
}

audio_destroy_stream_check(global.title);
audio_destroy_stream_check(global.Silent);
audio_destroy_stream_check(global.None);
audio_destroy_stream_check(global.Option);
audio_destroy_stream_check(global.Difficulty);
audio_destroy_stream_check(global.stageItem);
audio_destroy_stream_check(global.stageItem2);
audio_destroy_stream_check(global.Clear);
audio_destroy_stream_check(global.Clear2);
audio_destroy_stream_check(global.Ending);
audio_destroy_stream_check(global.Sdeath);
audio_destroy_stream_check(global.Sdeath2);
audio_destroy_stream_check(global.Sdeath3);

audio_destroy_stream_check(global.overworldA);
audio_destroy_stream_check(global.overworldB);

audio_destroy_stream_check(global.stage01A);
audio_destroy_stream_check(global.stage01B);
audio_destroy_stream_check(global.stage01Bs1);
audio_destroy_stream_check(global.stage01Bs2);
audio_destroy_stream_check(global.phantom);

audio_destroy_stream_check(global.stage02A);
audio_destroy_stream_check(global.stage02ALoop);
audio_destroy_stream_check(global.stage02B);
audio_destroy_stream_check(global.stage02Bs1);
audio_destroy_stream_check(global.stage02Bs2);
audio_destroy_stream_check(global.stage02Bs3);
audio_destroy_stream_check(global.lovetrap);

audio_destroy_stream_check(global.stage03A);
audio_destroy_stream_check(global.stage03ALoop);
audio_destroy_stream_check(global.stage03B);
audio_destroy_stream_check(global.stage03Wait);
audio_destroy_stream_check(global.stage03Bs1);
audio_destroy_stream_check(global.stage03Bs2);
audio_destroy_stream_check(global.stage03Bs3);
audio_destroy_stream_check(global.mental);
audio_destroy_stream_check(global.dotkid);

audio_destroy_stream_check(global.stage04A);
audio_destroy_stream_check(global.stage04B);
audio_destroy_stream_check(global.stage04Bs1);
audio_destroy_stream_check(global.stage04Bs1Loop);
audio_destroy_stream_check(global.stage04Bs2);
audio_destroy_stream_check(global.stage04Bs3);
audio_destroy_stream_check(global.stage04Bs3Loop);
audio_destroy_stream_check(global.stage04Bs4);
audio_destroy_stream_check(global.stage04Bs5);
audio_destroy_stream_check(global.stage04BsDefeat);
audio_destroy_stream_check(global.contrary);
audio_destroy_stream_check(global.catastrophe);

audio_destroy_stream_check(global.stage01SrBef);
audio_destroy_stream_check(global.stage01Sr1);
audio_destroy_stream_check(global.stage01Sr2);
audio_destroy_stream_check(global.stage01Sr3);
audio_destroy_stream_check(global.stage01Sr4);
audio_destroy_stream_check(global.stage02Sr1);
audio_destroy_stream_check(global.stage02Sr2);
audio_destroy_stream_check(global.stage02Sr3);
audio_destroy_stream_check(global.stage03Sr1);
audio_destroy_stream_check(global.stage03Sr2);

audio_destroy_stream_check(global.sndDogma);
audio_destroy_stream_check(global.sndEmperor);