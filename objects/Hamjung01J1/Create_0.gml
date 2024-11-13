var i, l;

depth = -50;

NUM_ITEM = 2;
firstTouch = true;
holding = -1;
collected = false;
trigger_id = -1;
cherry_index = 0;

alpha = 0;
alpha_time = 0;

for(i=0; i<NUM_ITEM; i+=1) {
    items[i] = -1;
    items_spr[i] = -1;
}

// PASSWORD; order in 3210

l = ds_list_create();
for(i=0; i<10; i+=1) ds_list_add(l, i);

shuffle = irandom_range(0, 9);
inc = choose(1, 3, 7, 9);
ds_list_delete(l, shuffle);
for(i=0; i<4; i+=1) {
	ds_list_shuffle(l);
	password[i] = ds_list_find_value(l, 0);
	password_input[i] = -1;
	ds_list_delete(l, 0);
	if (i == 1) ds_list_add(l, shuffle);
}

ds_list_destroy(l);

function ftn_input(input) {
	var i, temp;
	
	if (password_input[3] == -1) password_input[3] = input*inc + shuffle - floor((input*inc + shuffle) / 10) * 10;
	else if (password_input[2] == -1) password_input[2] = input*inc + shuffle - floor((input*inc + shuffle) / 10) * 10;
	else if (password_input[1] == -1) password_input[1] = input*inc + shuffle - floor((input*inc + shuffle) / 10) * 10;
	else {
		if (password_input[0] == -1) password_input[0] = input*inc + shuffle - floor((input*inc + shuffle) / 10) * 10;
		else {
			password_input[3] = password_input[2];
			password_input[2] = password_input[1];
			password_input[1] = password_input[0];
			password_input[0] = input*inc + shuffle - floor((input*inc + shuffle) / 10) * 10;
		}
		
		temp = true;
		for(i=0; i<=3; i+=1) {
			if (password[i] != password_input[i]) {
				temp = false; break;
			}
		}
		
		return temp;
	}
	
	return false;
};

// TEXT

text_show = "";
map_text_show = ds_map_create();
ds_map_add(map_text_show, sprHamjung01J2, "Broken save.\n" + "It seems reusable once fixed.");
ds_map_add(map_text_show, sprHamjung01J4, "Cannot pass through it.\n" + "It might reflect lights.\n" +
	string(password[3]) + string(password[2]) + string(password[1]) + string(password[0]) + "... written in the back.");
ds_map_add(map_text_show, sprFruit, "Delicious Fruit.\n" + "Yummy!");
ds_map_add(map_text_show, sprHamjung01J5, "Save part.");
ds_map_add(map_text_show, sprHamjung01J8, "One-shot save.\n" + "The part perfectly matched.\n" + "Shine a light to operate.");