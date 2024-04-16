var cam = view_camera[0];

if (!world.SI_ok or room == Stage02Bs3 or room == Stage02Bs4 or room == Stage04Bs4 or room == Stage04Bs8) {visible = false; exit;}
x=camera_get_view_x(cam)+camera_get_view_width(cam);
y=camera_get_view_y(cam);
ox=0;
oy=0;
gra=0;
grav=0;
patt=0;
image_speed=0;
alarm[0] = 1;
Instance = audio_play_sound(sndStage, 0, false, world.sound_vol);

text = "";
index = 1;
time = 0;

if room == Stage01A {image_index=1;}
if room == Stage01B {image_index=2;}
if room == Stage01C {image_index=3;}
if room == Stage01D {image_index=4;}
if room == Stage01E {image_index=5;}
if room == Stage01F {image_index=6;}
if room == Stage01G {image_index=7;}
if room == Stage01H {image_index=8;}
if room == Stage01I {image_index=9;}
if room == Stage01J {image_index=10;}
if room == Stage01Bs {image_index=0;}
if room == Stage01Bs2 {image_index=12;}
if room == Stage01Bs3 {image_index=13;}
if room == Stage01Hd {image_index=14;}

if room == Stage02A {image_index=16;}
if room == Stage02B {image_index=17;}
if room == Stage02C {image_index=18;}
if room == Stage02D {image_index=19;}
if room == Stage02E {image_index=20;}
if room == Stage02F {image_index=21;}
if room == Stage02G {image_index=22;}
if room == Stage02H {image_index=23;}
if room == Stage02I {image_index=24;}
if room == Stage02J {image_index=25;}
if room == Stage02K {image_index=26;}
if room == Stage02L {image_index=26;}
if room == Stage02Bs {image_index=0;}
if room == Stage02Bs2 {image_index=28;}
if room == Stage02Bs5 {image_index=29;}
if room == Stage02Hd {image_index=30;}

if room == Stage03A {image_index=32;}
if room == Stage03B {image_index=33;}
if room == Stage03C {image_index=34;}
if room == Stage03D {image_index=35;}
if room == Stage03E {image_index=36;}
if room == Stage03F {image_index=37;}
if room == Stage03G {image_index=38;}
if room == Stage03H {image_index=39;}
if room == Stage03I {image_index=40;}
if room == Stage03J {image_index=41;}
if room == Stage03K {image_index=42;}
if room == Stage03L {image_index=43;}
if room == Stage03Bs {image_index=0;}
if room == Stage03Bs2 {image_index=45;}
if room == Stage03Bs3 {image_index=46;}
if room == Stage03Bs4 {image_index=47;}
if room == Stage03Bs5 {image_index=48;}
if room == Stage03Hd {image_index=49;}
if room == Stage03Sr {image_index=0;}

if room == Stage04A {image_index=51;}
if room == Stage04B {image_index=52;}
if room == Stage04C {image_index=53;}
if room == Stage04D {image_index=54;}
if room == Stage04E {image_index=55;}
if room == Stage04F {image_index=56;}
if room == Stage04G {image_index=57;}
if room == Stage04H {image_index=58;}
if room == Stage04I {image_index=59;}
if room == Stage04J {image_index=60;}
if room == Stage04K {image_index=61;}
if room == Stage04L {image_index=62;}
if room == Stage04M {image_index=63;}
if room == Stage04Bs {image_index=0;}
if room == Stage04Bs2 {image_index=65;}
if room == Stage04Bs3 {image_index=66;}
if room == Stage04Bs5 {image_index=67;}
if room == Stage04Bs6 {image_index=68;}
if room == Stage04Bs7 {image_index=69;}
if room == Stage04Hd {image_index=70;}