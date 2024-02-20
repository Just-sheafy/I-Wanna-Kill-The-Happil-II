if other.Gravity != a {
	var temp = other.jump_left;
	with(player) flip_grav(false);
    if a {other.vspd = 8;} else {other.vspd = -8;}
	other.jump_left = temp;
}