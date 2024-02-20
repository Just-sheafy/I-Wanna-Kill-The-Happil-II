#region Collision with killers
var killer = instance_place(x, y, kill_character);

if (killer != noone) {
	kill_player();
}
#endregion

#region Touches screen border
if (x < 0 || x > room_width || y < 0 || y > room_height) {
	kill_player(true);
}
#endregion