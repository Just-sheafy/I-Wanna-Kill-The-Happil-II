/// @description *Item
// You can write your code in this editor

var i;

world.achieve[39] = false;
items[0] = !items[0];
for(i = 0; i < 16; i += 1) {
   items[i] = items[0]; //Up to 16 bosses, none are defeated by default
}