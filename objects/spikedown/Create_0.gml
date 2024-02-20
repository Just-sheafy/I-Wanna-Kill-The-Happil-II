event_inherited();

image_speed = 1/2;
if room == Stage01C {sprite_index = sprSpikeDown1C;}
if room == Stage01D {sprite_index = sprSpikeDown1D;}
if room == Stage01E {sprite_index = sprSpikeDown1E;}
if room == Stage01G {sprite_index = sprSpikeDown1G;}
if room == Stage01I {sprite_index = sprSpikeDown1I;}
if room == Stage02A {sprite_index = sprSpikeDown2A;}
if room == Stage02D {sprite_index = sprSpikeDown2D;}
if room == Stage02E or room == Stage02H or room == Stage02I or room == Stage03H {sprite_index = sprSpikeDown2E;}
if room == Stage02F {sprite_index = sprSpikeDown2F;}
if room == Stage02G {sprite_index = sprSpikeDown2G;}
if room == Stage02K or room == Stage02L or room == Stage02Bs or room == Stage02Bs3 or room == Stage02Bs4 {sprite_index = sprSpikeDown2K;}
if room == Stage03A {sprite_index = sprSpikeDown3A;}
if room == Stage03E {sprite_index = sprSpikeDown3E;}
if room == Stage03F {sprite_index = sprSpikeDown3F;}
if room == Stage03I {sprite_index = sprSpikeDown3I;}
if room == Stage03K {sprite_index = sprSpikeDown3K;}
if room == Stage04D {sprite_index = sprSpikeDown4D;}
if room == Stage04E {sprite_index = sprSpikeDown4E;}
if room == Stage04G or room == Stage04H {sprite_index = sprSpikeDown4G;}
if room == Stage04L {sprite_index = sprSpikeDown4L;}

if sprite_index == sprSpikeDown2 {image_index = irandom(19);}