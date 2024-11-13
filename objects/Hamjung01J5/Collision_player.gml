if (triggered_id != -1 && instance_exists(triggered_id)) {
	if ((triggered_id.trigger >= 40 && triggered_id.trigger <= 43) || triggered_id.trigger == 81) {
		audio_play_sound(sndDeath, 0, false, world.sound_vol);
		var bsq = instance_create_layer(player.x, player.y, "Player", bloodSquirt);
		bsq.xx = player.x;
		bsq.yy = player.y;
		bsq.Gravity = player.Gravity;
		bsq.GravityH = player.GravityH;
		bsq.mode = 1;
		bsq.timer = 20;
		with(player) instance_destroy();
		if instance_exists(bullet) {with(bullet) instance_destroy();}
		
		collectable = false;
		if (triggered_id.trigger != 81) triggered_id.trigger = 45;
		else triggered_id.trigger = 82;
		triggered_id.trigger_id = -1;
		triggered_id.action_obj[0] = id;
		exit;
	}
}
with(other) kill_player();