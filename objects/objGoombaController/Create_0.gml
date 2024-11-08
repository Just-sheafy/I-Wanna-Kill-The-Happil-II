playerLegs = instance_create_depth(x, y, -100, objBlankObject, {
	sprite_index : maskPlayerLegs,
	visible : world.show_mask,
});

onGoombaSpawn = function(goombaId) {
	with(goombaId) {
		top = instance_create_depth(x, y, -100, objBlankObject, {
			sprite_index : sprBoss02_89,
			image_speed : image_speed,
			image_xscale : image_xscale,
			image_yscale : image_yscale,
			visible : world.show_mask,
		});
		bottom = instance_create_depth(x, y, -100, objBlankObject, {
			sprite_index : sprBoss02_90,
			image_speed : image_speed,
			image_xscale : image_xscale,
			image_yscale : image_yscale,
			visible : world.show_mask,
		});	
	}
}

onGoombaDestroy = function(goombaId) {
	with(goombaId) {
		instance_destroy(top);
		instance_destroy(bottom);
	}
}

// Triggered when final player coordinates are calculated
// Guaranteed to be triggered during step event
onPlayerStepEnd = function() {
	with(playerLegs) {
		x = player.x;
		y = player.y;
		image_xscale = player.image_xscale;
	}	
	var legs = playerLegs;
	with(Boss02_9) {
		if(instance_exists(top) && instance_exists(bottom)) {
			top.x = x + hspeed; //speed is applied only after step event 
			top.y = y + vspeed;
			bottom.x = x + hspeed;
			bottom.y = y + vspeed;

			with(top) {
				if(place_meeting(x, y, legs)) {
					if(player.vspeed >= 0)
						other.onDeath();
					else
						kill_player();
				}
				else if(place_meeting(x, y, player)) {
					kill_player();
				}
			}
			with(bottom) {
				if(place_meeting(x, y, player)) {
					kill_player();
				}
			}	
		}
	}
}
