var i;

if !a4 and instance_number(Boss03Sr_2) >= 40 {
    instance_create_depth(choose(192, 400, 608), 304, -1, Boss03Sr_13);
    a4 = 1;
    alarm[4] = 200;
}
if !instance_exists(player) {for(i=1; i<5; i+=1) {alarm[i] = 0;}}

if (arrow_id != -1 and instance_exists(arrow_id)) {
	if (crazy) arrow_id.visible = true;
	else arrow_id.visible = false;
	with(Boss03Sr_5) {
	    if (visible) Boss03Sr_1.arrow_id.visible = true;
	}
}