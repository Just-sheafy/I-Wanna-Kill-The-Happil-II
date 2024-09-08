function place_meeting_block(xx, yy) {
	return place_meeting(xx, yy, block) || place_meeting(xx, yy, disappearingBlock);
}

function blockSprite() {
	//Use this script to set the sprite index of your blocks
	//The following is an example
	var temp;
	
	if room == Stage01G or room == Stage01Bs2 or room == Stage02B or room == Stage02C or room == Stage02E
	or room == Stage02K or room == Stage02L or room == Stage02Sr or room == Stage03D or room == Stage03Bs2
	or room == Stage03Bs3 or room == Stage03Bs4 or room == Stage03Bs5 or room == Stage03Sr or room == Stage04E
	or room == Stage04F or room == Stage04L or room == Stage04M or room == Stage04Hd
	    {sprite_index = sprBrick; visible = false;}
	else if room == Stage01A or room == Stage01D {
	    sprite_index = block01A;
	    if !place_meeting_block(x, y-16) and (y > 0 or room == Stage01D) {
	        image_index = 0;
	    } else {
	        image_index = 1;
	    }
	}
	else if room == Stage01B or room == Stage04A or room == Stage04C {
	    sprite_index = block01B;
	    if !place_meeting_block(x, y-16) and y > 0 {
	        image_index = 0;
	    } else {
	        image_index = 1;
	    }
	}
	else if room == Stage01C {
	    sprite_index = block01C;
	    if !place_meeting_block(x, y-16) and y > 0 {
	        image_index = 0;
	    } else {
	        image_index = 1;
	    }
	}
	else if room == Stage01E {
	    sprite_index = block01E;
	    if place_meeting(x,y,Hamjung01E1) {
	        // if place_meeting(x, y, blockChange1) {image_index = 1;}
	        // if place_meeting(x, y, blockChange2) {image_index = 2;}
	        exit;
	    }
	    if place_meeting_block(x+16, y) and place_meeting_block(x-16, y) {
	        image_index = 1;
	        if place_meeting(x, y+16, Hamjung01E1) or place_meeting(x, y-16, Hamjung01E1) {exit;}
	        if place_meeting_block(x, y+16) or place_meeting_block(x, y-16) {image_index=0;}
	    } else if place_meeting_block(x, y+16) and place_meeting_block(x, y-16) {
	        image_index = 2;
	        if place_meeting(x+16, y, Hamjung01E1) or place_meeting(x-16, y, Hamjung01E1) {exit;}
	        if place_meeting_block(x+16, y) or place_meeting_block(x-16, y) {image_index=0;}
	    }
	}
	else if room == Stage01F {
	    sprite_index = block01F;
	    if !place_meeting_block(x, y-16) and y > 0 {
	        image_index = 0;
	    } else {
	        image_index = 1;
	    }
	}
	else if room == Stage01H {
	    sprite_index = block01H;
	}
	else if room == Stage01I {
	    sprite_index = block01I;
	}
	else if room == Stage01J or room == Stage01Bs or room == Stage01Bs3 {
	    if place_meeting(x,y,Hamjung01E1) {sprite_index = block01Bs; exit;}
	    sprite_index = sprBrick; visible = false;
	}
	else if room == Stage01Hd {
	    sprite_index = block01Hd;
	    if !place_meeting_block(x, y-16) and y > 0 {
	        image_index = 0;
	    } else {
	        image_index = 1;
	    }
	}
	else if room == Stage01Sr {
		if (y != 384) {
			sprite_index = sprBrick; visible = false;
		} else {
			sprite_index = block01Sr;
		}
	}
	else if room == Stage02A {
	    sprite_index = block02A;
	}
	else if room == Stage02D {
	    sprite_index = block02D;
	}
	else if room == Stage02F or room == Stage04K {
	    sprite_index = block02F;
	}
	else if room == Stage02G {
	    sprite_index = sprBrick;
	}
	else if room == Stage02H {
	    sprite_index = block02H;
	    if !place_meeting_block(x, y-16) and y > 0 {
	        image_index = 0;
	    } else {
	        image_index = 1;
	    }
	}
	else if room == Stage02I {
	    sprite_index = block02I;
	}
	else if room == Stage02J {
	    sprite_index = block02J;
	    if y == 576 {image_index = 1;}
	    // if place_meeting(x, y, blockChange1) {visible = false;}
	}
	else if room == Stage02Bs or room == Stage02Bs3 or room == Stage02Bs4 or room == Stage02Bs5 {
	    sprite_index = block02Bs;
	}
	else if room == Stage02Bs2 {
	    if y >= 576 {sprite_index = block02J;} else {sprite_index = sprBrick;}
	}
	else if room == Stage02Hd {
	    sprite_index = block02Hd;
	}
	else if room == Stage03A {
	    sprite_index = block03A;
	}
	else if room == Stage03B {
	    visible = false;
	    sprite_index = sprBrick;
	    if place_meeting(x,y,Hamjung01E1) {sprite_index = block03B;}
	}
	else if room == Stage03C {
	    sprite_index = block03C;
	    if !place_meeting_block(x, y-16) and y > 0 {
	        image_index = 0;
	    } else {
	        image_index = 1;
	    }
	}
	else if room == Stage03E {
	    sprite_index = block03E;
	    if place_meeting(x,y,Hamjung01E1) {sprite_index = sprBrick;}
	}
	else if room == Stage03F {
	    sprite_index = block03F;
	    if place_meeting(x,y,Hamjung01E1) {
	        // if place_meeting(x, y, blockChange1) {image_index = 1;}
	        // if place_meeting(x, y, blockChange2) {image_index = 2;}
	        exit;
	    }
	    if place_meeting_block(x+16, y) and place_meeting_block(x-16, y) {
	        image_index = 1;
	        if place_meeting(x, y+16, Hamjung01E1) or place_meeting(x, y-16, Hamjung01E1) {exit;}
	        if place_meeting_block(x, y+16) or place_meeting_block(x, y-16) {image_index=0;}
	    } else if place_meeting_block(x, y+16) and place_meeting_block(x, y-16) {
	        image_index = 2;
	        if place_meeting(x+16, y, Hamjung01E1) or place_meeting(x-16, y, Hamjung01E1) {exit;}
	        if place_meeting_block(x+16, y) or place_meeting_block(x-16, y) {image_index=0;}
	    }
	}
	else if room == Stage03G {
	    sprite_index = sprBrick;
	    visible = false;
	    if place_meeting(x, y, Hamjung01E1) {
	        visible = true;
	        // if place_meeting(x, y, blockChange1) {sprite_index = sprHamjung03G2;}
	        // if place_meeting(x, y, blockChange2) {sprite_index = block03G;}
	    }
	}
	else if room == Stage03H {
	    sprite_index = block01Bs;
	    if !place_meeting_block(x, y-16) and y > 0 {
	        image_index = 0;
	    } else {
	        image_index = 1;
	    }
	}
	else if room == Stage03I {
	    sprite_index = block03I;
	}
	else if room == Stage03I {
	    sprite_index = block03I;
	}
	else if room == Stage03J or room == Stage03Bs {
	    sprite_index = block02J;
	    if place_meeting(x, y, Hamjung01E1) {image_index = 1;}
	}
	else if room == Stage03K {
	    sprite_index = block03K;
	    if place_meeting(x, y, Hamjung01E1) {visible = false;}
	}
	else if room == Stage03Hd {
	    sprite_index = block03Hd;
	}
	else if room == Stage04B {
	    sprite_index = block04B;
	    if !place_meeting_block(x, y-16) and y > 0 {
	        image_index = 0;
	    } else {
	        image_index = 1;
	    }
	}
	else if room == Stage04D {
	    sprite_index = block04D;
	    if !place_meeting_block(x, y-16) and y > 0 {
	        image_index = choose(0, 2);
	    } else {
	        image_index = choose(1, 3);
	    }
	}
	else if room == Stage04G or room == Stage04H {
	    sprite_index = block04G;
	}
	else if room == Stage04J {
	    sprite_index = block04J;
	}
	else if room == Stage04Bs or room == Stage04Bs4 or room == Stage04Bs8 {
	    sprite_index = block04Bs1;
	    if (x < 384) image_index = 0;
	    else if (x > 384) image_index = 1;
	    else image_index = 2;
	}
	else if room == Stage04Bs2 or room == Stage04Bs3 {
	    sprite_index = block04Bs6;
	    if place_meeting_block(x+16, y) and place_meeting_block(x-16, y) {
	        image_index = 1;
	        if place_meeting_block(x, y+16) or place_meeting_block(x, y-16) {image_index=0;}
	    } else if place_meeting_block(x, y+16) and place_meeting_block(x, y-16) {
	        image_index = 2;
	        if place_meeting_block(x+16, y) or place_meeting_block(x-16, y) {image_index=0;}
	    }
	}
	else if room == Stage04Bs5 {
	    sprite_index = block04Bs1;
	    image_index = 0;
	}
	//Use this kind of pattern for different block sprites.



}
