patt += 1;
if (patt <= 16) yy = 32-2*patt;
else if (patt >= 32) patt = 0;

if (instance_exists(player) && player.vwarp) {
	alpha = min(alpha+0.04, 0.8);
} else alpha = max(alpha-0.04, 0);