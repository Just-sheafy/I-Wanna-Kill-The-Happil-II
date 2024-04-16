///Button actions

switch(select)
{
    case 0: //Start game
        with(world) {
			loadEncrypt();
			
			if (!resource_loaded) {
				resource_loaded = true;
				sprite_prefetch(sprHamjung03Bs1);
				sprite_prefetch(sprBoss04_40);
				sprite_prefetch(back01Bs6);
				sprite_prefetch(back04Bs1);
				sprite_prefetch(back04E1);
				sprite_prefetch(back04Bs10);
				sprite_prefetch(sprBoss02Sr_1);
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