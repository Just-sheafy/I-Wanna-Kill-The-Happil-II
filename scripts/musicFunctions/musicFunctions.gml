/// @description //////////
function musicFunctions() {
	//  Music  //
	/////////////
	var temp;
	
	switch(room) {
	    case Stage04Bs8:
	        if filePlaying != -1 and curMusic != global.Silent {
				audio_stop_channel(0);
	            filePlaying = -1;
	            curMusic = global.Silent;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        }
	        break;
	    case Stage01Bs:
	    case Stage02Bs:
	    case Stage03Bs:
	    case Stage04Bs:
	    case Stage01Sr:
	    case Stage02Sr:
	    case Stage03Sr:
	        if filePlaying != -0.5 and curMusic != global.None {
				audio_stop_channel(0);
	            filePlaying = -0.5;
	            curMusic = global.None;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        }
	        break;
	    case beforeRoom:
	    case startRoom:
	        if filePlaying != 0 and curMusic != global.title {
				audio_stop_channel(0);
	            filePlaying = 0;
	            curMusic = global.title;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        }
	        break;
	    case loadRoom:
	    case beginning:
	        if filePlaying != 0.25 and curMusic != global.Option {
				audio_stop_channel(0);
	            filePlaying = 0.25;
	            curMusic = global.Option;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        }
	        break;
	    case Stage01Hd:
	    case Stage02Hd:
	    case Stage03Hd:
	        if filePlaying != 0.5 and curMusic != global.stageItem {
				audio_stop_channel(0);
	            filePlaying = 0.5;
	            curMusic = global.stageItem;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        }
	        break;
	    case Stage04Hd:
	        if filePlaying != 0.75 and curMusic != global.stageItem2 {
				audio_stop_channel(0);
	            filePlaying = 0.75;
	            curMusic = global.stageItem2;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        }
	        break;
	    case Stage01A:
	    case Stage01B:
	    case Stage01C:
	    case Stage01D:
	    case Stage01E:
	    case Stage01F:
	    case Stage01G:
	    case Stage01H:
	    case Stage01I:
	        if filePlaying != 1 and curMusic != global.stage01A {
				audio_stop_channel(0);
	            filePlaying = 1;
	            curMusic = global.stage01A;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        }
	        break;
	    case Stage01J:
	        if filePlaying != 1.5 and curMusic != global.stage01B {
				audio_stop_channel(0);
	            filePlaying = 1.5;
	            curMusic = global.stage01B;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        }
	        break;
	    case Stage01Bs2:
	        if filePlaying != 3.8 and curMusic != global.phantom {
				audio_stop_channel(0);
	            filePlaying = 3.8;
	            curMusic = global.phantom;
	            Instance = audio_play_sound(curMusic, 10, false, world.music_vol);
				audio_sound_set_track_position(Instance, 1.8);
	        }
	        break;
	    case Stage01Bs3:
	        if filePlaying != 3.5 and curMusic != global.stage01Bs2 {
				audio_stop_channel(0);
	            filePlaying = 3.5;
	            curMusic = global.stage01Bs2;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        } else if (global.practice >= 0) {
				audio_sound_set_track_position(Instance, 0);
			}
	        break;
	    case Stage02A:
	    case Stage02B:
	    case Stage02C:
	    case Stage02D:
	    case Stage02E:
	    case Stage02F:
	    case Stage02G:
	    case Stage02H:
	    case Stage02I:
	    case Stage02J:
	        if filePlaying != 4 and curMusic != global.stage02A {
				audio_stop_channel(0);
	            filePlaying = 4;
	            curMusic = global.stage02A;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        }
	        break;
	    case Stage02K:
	    case Stage02L:
	        if filePlaying != 4.5 and curMusic != global.stage02B {
				audio_stop_channel(0);
	            filePlaying = 4.5;
	            curMusic = global.stage02B;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        }
	        break;
	    case Stage02Bs2:
	        if filePlaying != 7 and curMusic != global.stage02Bs2 {
				audio_stop_channel(0);
	            filePlaying = 7;
	            curMusic = global.stage02Bs2;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        } else if (global.practice >= 0) {
				audio_sound_set_track_position(Instance, 0);
			}
	        break;
	    case Stage02Bs3:
	        if filePlaying != 7.5 and curMusic != global.stage02Bs3 {
				audio_stop_channel(0);
	            filePlaying = 7.5;
	            curMusic = global.stage02Bs3;
				audio_sound_loop_start(curMusic, 5.33);
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
				audio_sound_set_track_position(Instance, 3.33);
	        } else if (global.practice >= 0) {
				audio_sound_set_track_position(Instance, 3.33);
			}
	        break;
	    case Stage02Bs4:
	        if filePlaying != 6 and curMusic != global.stage02Bs1 {
				audio_stop_channel(0);
	            filePlaying = 6;
	            curMusic = global.stage02Bs1;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
				audio_sound_set_track_position(Instance, 120.07);
	        } else if (global.practice >= 0) {
				audio_sound_set_track_position(Instance, 120.07);
			}
	        break;
	    case Stage02Bs5:
	        if filePlaying != 7.8 and curMusic != global.lovetrap {
				audio_stop_channel(0);
	            filePlaying = 7.8;
	            curMusic = global.lovetrap;
	            Instance = audio_play_sound(curMusic, 10, false, world.music_vol);
	        }
	        break;
	    case Stage03A:
	    case Stage03B:
	    case Stage03C:
	    case Stage03D:
	    case Stage03E:
	    case Stage03F:
	    case Stage03G:
	    case Stage03H:
	    case Stage03I:
	    case Stage03J:
	    case Stage03K:
	        if filePlaying != 8 and curMusic != global.stage03A {
				audio_stop_channel(0);
	            filePlaying = 8;
	            curMusic = global.stage03A;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        }
	        break;
	    case Stage03L:
	        if filePlaying != 9 and curMusic != global.stage03B {
				audio_stop_channel(0);
	            filePlaying = 9;
	            curMusic = global.stage03B;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        }
	        break;
	    case Stage03Bs2:
	        if filePlaying != 12 and curMusic != global.mental {
				audio_stop_channel(0);
	            filePlaying = 12;
	            curMusic = global.mental;
	            Instance = audio_play_sound(curMusic, 10, false, world.music_vol);
				audio_sound_set_track_position(Instance, 1.6);
	        }
	        break;
	    case Stage03Bs3:
	        if filePlaying != 13 and curMusic != global.stage03Bs2 {
				audio_stop_channel(0);
	            filePlaying = 13;
	            curMusic = global.stage03Bs2;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        }
			if (global.practice >= 0) {
				temp = global.practice - 100*floor(global.practice/100);
				if (temp == 5) {
					// PDplayer
					audio_sound_set_track_position(Instance, 0);
				} else if (temp == 6) {
					// Intermission between PDplayer and Kukul
					audio_sound_set_track_position(Instance, 37.32);
				} else if (temp == 7) {
					// Kukul
					audio_sound_set_track_position(Instance, 57.32);
				}
			}
	        break;
	    case Stage03Bs4:
	        if filePlaying != 14 and curMusic != global.dotkid {
				audio_stop_channel(0);
	            filePlaying = 14;
	            curMusic = global.dotkid;
	            Instance = audio_play_sound(curMusic, 10, false, world.music_vol);
				audio_sound_set_track_position(Instance, 1.5);
	        }
	        break;
	    case Stage03Bs5:
	        if filePlaying != 15 and curMusic != global.stage03Bs3 {
				audio_stop_channel(0);
	            filePlaying = 15;
	            curMusic = global.stage03Bs3;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        }
			if (global.practice >= 0) {
				temp = global.practice - 100*floor(global.practice/100);
				if (global.practice == 9) {
					// ~ before Viridian
					audio_sound_set_track_position(Instance, 0);
				} else if (global.practice == 10) {
					// Viridian
					audio_sound_set_track_position(Instance, 4.5);
				} else if (global.practice == 11) {
					// Pochi
					audio_sound_set_track_position(Instance, 10.9);
				} else if (global.practice == 12) {
					// Final pattern
					audio_sound_set_track_position(Instance, 22.5);
				}
			}
	        break;
	    case Stage04A:
	    case Stage04B:
	    case Stage04C:
	    case Stage04D:
	    case Stage04E:
	    case Stage04F:
	    case Stage04G:
	    case Stage04H:
	    case Stage04I:
	    case Stage04J:
	    case Stage04K:
	    case Stage04L:
	        if filePlaying != 16 and curMusic != global.stage04A {
				audio_stop_channel(0);
	            filePlaying = 16;
	            curMusic = global.stage04A;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        }
	        break;
	    case Stage04M:
	        if filePlaying != 17 and curMusic != global.stage04B {
				audio_stop_channel(0);
	            filePlaying = 17;
	            curMusic = global.stage04B;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        }
	        break;
	    case Stage04Bs2:
	        if filePlaying != 19 and curMusic != global.contrary {
				audio_stop_channel(0);
	            filePlaying = 19;
	            curMusic = global.contrary;
	            Instance = audio_play_sound(curMusic, 10, false, world.music_vol);
				audio_sound_set_track_position(Instance, 0.7);
	        }
	        break;
	    case Stage04Bs3:
	        if filePlaying != 20 and curMusic != global.catastrophe {
				audio_stop_channel(0);
	            filePlaying = 20;
	            curMusic = global.catastrophe;
	            Instance = audio_play_sound(curMusic, 10, false, world.music_vol);
				audio_sound_set_track_position(Instance, 0.7);
	        }
	        break;
	    case Stage04Bs4:
	        if filePlaying != 21 and curMusic != global.stage04Bs2 {
				audio_stop_channel(0);
	            filePlaying = 21;
	            curMusic = global.stage04Bs2;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        } else if (global.practice >= 0) {
				audio_sound_set_track_position(Instance, 0);
			}
	        break;
	    case Stage04Bs5:
	        if filePlaying != 22 and curMusic != global.stage04Bs3 {
				audio_stop_channel(0);
	            filePlaying = 22;
	            curMusic = global.stage04Bs3;
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
	        } else if (global.practice >= 0) {
				audio_sound_set_track_position(Instance, 0);
			}
	        break;
	    case Stage04Bs6:
			if (credit_played) {
				with(world) {
					if filePlaying != 24 and curMusic != global.stage04Bs4 {
						audio_stop_channel(0);
					    filePlaying = 24;
					    curMusic = global.stage04Bs4;
					    Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
					} else {
						audio_sound_set_track_position(Instance, 0);
					}
				}
			} else {
		        if filePlaying != -1 and curMusic != global.Silent {
					audio_stop_channel(0);
		            filePlaying = -1;
		            curMusic = global.Silent;
		            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
		        }
			}
	        break;
	    case Stage04Bs7:
	        if filePlaying != 25 and curMusic != global.stage04Bs5 {
				audio_stop_channel(0);
	            filePlaying = 25;
	            curMusic = global.stage04Bs5;
				audio_sound_loop_start(curMusic, 3.4);
				audio_sound_loop_end(curMusic, 42.6);
	            Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
				audio_sound_loop_end(Instance, 42.6);
	        }
	        break;
	    //LIST OTHER ROOMS HERE
    
	    ///////////////////////////
	    //  FOR THOSE USING PRO  //
	    ///////////////////////////
	    /*
	    You have the option of loading sound files externally, which can easily take
	    time off of your game's load time. The only downside is that the user can easily
	    replace your music with their own, and if someone fails to download the music along
	    with your game, it could cause errors. But sometimes people are just plain stupid, so
	    there is only so much you can do about it.
    
	    If you decide to load files externally, use the system below and incorporate it into
	    the switch-case block above
    
	    case arbitraryRoom: if filePlaying != # {
	                            filePlaying = #;
	                            sound_replace(curMusic, "myMusic.mp3", 3, 1);
	                            if musicOn {sound_loop(curMusic);}
	                        }
	                        break;
                        
	    Just to be clear, you will need to replace the # with an actual numerical value. You
	    probably knew that already, but you'd be surprised how many people miss that.
	    */
	}

	if (Instance != -1 && audio_sound_is_playable(Instance)) {
		audio_sound_gain(Instance, world.music_vol, 0);
	}

}
