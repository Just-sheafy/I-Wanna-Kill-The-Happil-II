var shp, hpm, num;

if (name_patt == 0) {
	shp = (index == 0)? Boss04_36.hp0 : Boss04_36.hp1;
	hpm = (index == 0)? Boss04_36.hpm0 : Boss04_36.hpm1;
	
	num = irandom_range(floor(200*(1-shp/hpm)), 500);

	if (num <= 498) {
		name = "FOOT";
		alarm[10] = 3;
	} else if (num == 499) {
		name = "";
		__NAME_1 = "FFFFFFFFFFFFFFFF";
		__NAME_2 = "FFFFFFFFFFFFFFFF";
		name_patt = 1;
		shake = 8;
		alarm[10] = 1;
	} else {
		name = "";
		num = choose(0, 1, 2, 3, 4);
		if (num == 0) {
			__NAME_1 = "YOURWILLWILL";
			__NAME_2 = "BEANILLUSION";
		} else if (num == 1) {
			__NAME_1 = "GIVEITUP";
			__NAME_2 = " ";
		} else if (num == 2) {
			__NAME_1 = "LIGHTATTHEEND";
			__NAME_2 = "OFTHETUNNEL";
		} else if (num == 3) {
			__NAME_1 = "NOHAPPYEND";
			__NAME_2 = " ";
		} else if (num == 4) {
			__NAME_1 = "THEENDISNEVERTHE";
			__NAME_2 = "ENDISNEVERTHEEND";
		}
		name_patt = 1;
		shake = 8;
		alarm[10] = 1;
	}
} else if (name_patt <= string_length(__NAME_1)) {
	name = (index == 0)? string_copy(__NAME_1, 1, name_patt) : string_copy(__NAME_1, string_length(__NAME_1)-name_patt+1, name_patt);
	name_patt += 1;
	alarm[10] = 2;
} else if (name_patt <= string_length(__NAME_1) + string_length(__NAME_2)) {
	name = __NAME_1 + "\n" + ((index == 0)? string_copy(__NAME_2, 1, name_patt-string_length(__NAME_1)) : string_copy(__NAME_2, string_length(__NAME_2)-(name_patt-string_length(__NAME_1))+1, name_patt-string_length(__NAME_1)));
	name_patt += 1;
	shake = 4;
	alarm[10] = 2;
} else if (name_patt == string_length(__NAME_1) + string_length(__NAME_2) + 1) {
	__NAME_1 = "";
	__NAME_2 = "";
	shake = 2;
	alarm[10] = 25;
} else {
	name = "FOOT";
	name_patt = 0;
	shake = 0;
	alarm[10] = 3;
}