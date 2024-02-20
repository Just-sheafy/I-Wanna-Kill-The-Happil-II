///Button actions

switch(select)
{
    case 0: //Start game
        with(world) {
			loadEncrypt();
			
			if (!resource_loaded) {
				resource_loaded = true;
				sprite_prefetch(sprBoss01_24);
				sprite_prefetch(sprBoss04_40);
				sprite_prefetch(back01Bs6);
				sprite_prefetch(back04Bs1);
				sprite_prefetch(sprBoss03_58);
				sprite_prefetch(sprBoss02_2);
				sprite_prefetch(sprBoss04_15);
				sprite_prefetch(sprBoss04_23);
			}
		}
        break;
        
    case 1: //Achievements
        room_goto(loadRoom);
        break
    
    case 2: //Options
        room_goto(beginning);
        break;
        
    case 3: //Exit
        game_end();
        break;
}