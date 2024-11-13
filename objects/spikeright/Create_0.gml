event_inherited();

image_speed = 1/2;
if room == Stage01C {sprite_index = sprSpikeRight1C;}
if room == Stage01D {sprite_index = sprSpikeRight1D;}
if room == Stage01E {sprite_index = sprSpikeRight1E;}
if room == Stage01G {sprite_index = sprSpikeRight1G;}
if room == Stage01I {sprite_index = sprSpikeRight1I;}
if room == Stage01J {sprite_index = sprSpikeRight1J;}
if room == Stage02A {sprite_index = sprSpikeRight2A;}
if room == Stage02D {sprite_index = sprSpikeRight2D;}
if room == Stage02E or room == Stage02H or room == Stage02I or room == Stage03H {sprite_index = sprSpikeRight2E;}
if room == Stage02F {sprite_index = sprSpikeRight2F;}
if room == Stage02G {sprite_index = sprSpikeRight2G;}
if room == Stage02K or room == Stage02L or room == Stage02Bs or room == Stage02Bs3 or room == Stage02Bs4 {sprite_index = sprSpikeRight2K;}
if room == Stage03A {sprite_index = sprSpikeRight3A;}
if room == Stage03E {sprite_index = sprSpikeRight3E;}
if room == Stage03F {sprite_index = sprSpikeRight3F;}
if room == Stage03I {sprite_index = sprSpikeRight3I;}
if room == Stage03K {sprite_index = sprSpikeRight3K;}
if room == Stage04D {sprite_index = sprSpikeRight4D;}
if room == Stage04E {sprite_index = sprSpikeRight4E;}
if room == Stage04G or room == Stage04H {sprite_index = sprSpikeRight4G;}
if room == Stage04L {sprite_index = sprSpikeRight4L;}

if sprite_index == sprSpikeRight2 {image_index = irandom(19);}