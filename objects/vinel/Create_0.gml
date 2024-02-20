// rotate 270 for horizontal vine

hspd = 0;
vspd = 0;

if place_meeting(x, y, sendLeft) {hspd = -2;}
if place_meeting(x, y, sendRight) {hspd = 2;}
if place_meeting(x, y, sendUp) {vspd = -2;}
if place_meeting(x, y, sendDown) {vspd = 2;}