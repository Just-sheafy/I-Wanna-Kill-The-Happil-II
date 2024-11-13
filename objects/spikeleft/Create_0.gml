event_inherited();

image_speed = 1/2;
if room == Stage01C {sprite_index = sprSpikeLeft1C;}
if room == Stage01D {sprite_index = sprSpikeLeft1D;}
if room == Stage01E {sprite_index = sprSpikeLeft1E;}
if room == Stage01G {sprite_index = sprSpikeLeft1G;}
if room == Stage01I {sprite_index = sprSpikeLeft1I;}
if room == Stage01J {sprite_index = sprSpikeLeft1J;}
if room == Stage02A {sprite_index = sprSpikeLeft2A;}
if room == Stage02D {sprite_index = sprSpikeLeft2D;}
if room == Stage02E or room == Stage02H or room == Stage02I or room == Stage03H {sprite_index = sprSpikeLeft2E;}
if room == Stage02F {sprite_index = sprSpikeLeft2F;}
if room == Stage02G {sprite_index = sprSpikeLeft2G;}
if room == Stage02K or room == Stage02L or room == Stage02Bs or room == Stage02Bs3 or room == Stage02Bs4 {sprite_index = sprSpikeLeft2K;}
if room == Stage03A {sprite_index = sprSpikeLeft3A;}
if room == Stage03E {sprite_index = sprSpikeLeft3E;}
if room == Stage03F {sprite_index = sprSpikeLeft3F;}
if room == Stage03I {sprite_index = sprSpikeLeft3I;}
if room == Stage03K {sprite_index = sprSpikeLeft3K;}
if room == Stage04D {sprite_index = sprSpikeLeft4D;}
if room == Stage04E {sprite_index = sprSpikeLeft4E;}
if room == Stage04G or room == Stage04H {sprite_index = sprSpikeLeft4G;}
if room == Stage04L {sprite_index = sprSpikeLeft4L;}

if sprite_index == sprSpikeLeft2 {image_index = irandom(19);}