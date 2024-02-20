hspd = 8;

image_speed = 1/2;
if room == Stage01C {sprite_index = sprSpikeUp1C;}
if room == Stage01D {sprite_index = sprSpikeUp1D;}
if room == Stage01E {sprite_index = sprSpikeUp1E;}
if room == Stage01G {sprite_index = sprSpikeUp1G;}
if room == Stage01I {sprite_index = sprSpikeUp1I;}
if room == Stage02A {sprite_index = sprSpikeUp2A;}
if room == Stage02D {sprite_index = sprSpikeUp2D;}
if room == Stage02E or room == Stage02H or room == Stage02I or room == Stage03H {sprite_index = sprSpikeUp2E;}
if room == Stage02F {sprite_index = sprSpikeUp2F;}
if room == Stage02G {sprite_index = sprSpikeUp2G;}
if room == Stage02K or room == Stage02L or room == Stage02Bs or room == Stage02Bs3 or room == Stage02Bs4 {sprite_index = sprSpikeUp2K;}
if room == Stage03A {sprite_index = sprSpikeUp3A;}
if room == Stage03E {sprite_index = sprSpikeUp3E;}
if room == Stage03F {sprite_index = sprSpikeUp3F;}
if room == Stage03I {sprite_index = sprSpikeUp3I;}
if room == Stage03K {sprite_index = sprSpikeUp3K;}
if room == Stage04D {sprite_index = sprSpikeUp4D;}
if room == Stage04E {sprite_index = sprSpikeUp4E;}
if room == Stage04G or room == Stage04H {sprite_index = sprSpikeUp4G;}
if room == Stage04L {sprite_index = sprSpikeUp4L;}

if sprite_index == sprSpikeUp2 {image_index = irandom(19);}