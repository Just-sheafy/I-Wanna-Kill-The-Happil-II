a2 = irandom_range(0, 5);
with(Boss03Sr_5) {if visible {Boss03Sr_1.a2 = 6;}}
if a2 != 6 {
    with(Boss03Sr_5) {if b == Boss03Sr_1.a2 {visible = true;}}
    a2_1 = irandom_range(0, 5);
    while (a2_1 == a2) {a2_1 = irandom_range(0, 5);}
    with(Boss03Sr_5) {if b == Boss03Sr_1.a2_1 {instance_create_depth(x, y, -1, Boss03Sr_11);}}
}