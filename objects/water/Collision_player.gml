if (!other.GravityH) {
	if (other.vspd * (2*other.Gravity-1) > 2) {
	    other.vspd = 2 * (2*other.Gravity-1);
	}
} else {
	if (other.hspd * (2*other.Gravity-1) > 2) {
	    other.hspd = 2 * (2*other.Gravity-1);
	}
}