var finalSpd = max(spd-(hit*spd),0) + floor(obj_player.rounds / 5) * 0.3;

mp_potential_settings(45, 5, 5, 1);

//Choose target
if (instance_exists(obj_distr)) {
	var inst = instance_nearest(x,y,obj_distr);
	if (target == obj_player && distance_to_object(inst) <= distractionRadius) {
		target = obj_distr;
	}
}
else {
	if (target == obj_distr) target = obj_player;
}

//Move towards target
if (target == obj_player) {
	
	var distance = distance_to_object(obj_player);
	
	if (isAttacking or attackCounter > 0.0) {
		attackCounter = attackCounter + delta_time;
		if (attackCounter >= attackInterval) {
			if (isAttacking) {
				attackCounter = attackCounter - attackInterval;
				obj_player.money = obj_player.money - damage;
				audio_play_sound(Roblox_Death_Sound_Effect,0,0);
				if (obj_player.money <= 0) {
					game_restart();	
				}
			}
			else {
				attackCounter = 0.0;
			}
		}
	}
	
	if (distance <= attackStartProximity) {
		if (!isAttacking) {
			isAttacking = true;
			if (attackCounter == 0.0) {
				obj_player.money = obj_player.money - damage;
				audio_play_sound(Roblox_Death_Sound_Effect,0,0);
				if (obj_player.money <= 0) {
					game_restart();	
				}
			}
		}
	}
	else {
		if (isAttacking) {
			if (distance >= attackEndProximity) isAttacking = false;
		}
		else {
			var dir = point_direction(x, y, target.x, target.y);
			image_angle = dir;
			mp_potential_step_object(target.x, target.y, finalSpd, obj_avoid);
		}
	}
}
else {
	var dir = point_direction(x, y, target.x, target.y);
		image_angle = dir;
		mp_potential_step_object(target.x, target.y, finalSpd, obj_avoid);
}

//Gradually reduce "just hit" effect
if (hit > 0) hit -= 0.05; else hit = 0;

//Destroy if hp is less than or equal to 0
if (hp <= 0) {
	obj_player.xp += 1;
	if(obj_player.xp == obj_player.max_xp)
	{
		obj_player.levelsToUpgrade += 1;
		
	}
	instance_destroy();
}