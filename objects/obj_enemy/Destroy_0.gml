obj_spawner.round_enemies -= 1;

obj_player.xp += 10;
while(obj_player.xp >= obj_player.max_xp)
{
	obj_player.levelsToUpgrade += 1;
	obj_player.level += 1;
	obj_player.max_xp = floor(obj_player.max_xp * obj_player.xp_increase);
}

if(obj_spawner.round_enemies == 0){
	obj_player.rounds += 1;
	obj_spawner.enemyQuantity = floor(obj_spawner.enemyQuantity * obj_spawner.enemyQuantityIncrease);
	obj_spawner.round_enemies = obj_spawner.enemyQuantity;
	
	//Add experience
	with (obj_player) {
		xp = floor(xp + xp * (betPile * bonus_xp));
	
		betPile = 0;
	}
	
	while(obj_player.xp >= obj_player.max_xp)
	{
		obj_player.levelsToUpgrade += 1;
		obj_player.level += 1;
		obj_player.max_xp = floor(obj_player.max_xp * obj_player.xp_increase);
	}

	if (obj_player.levelsToUpgrade > 0)
	{
		//instance_deactivate_all(true);
		room_goto(levelup);
	}
}

//Create enemy splatter on death
with (instance_create_layer(x,y,"lay_splatter",obj_splatter)) image_angle = other.direction;

var moneyLuck = irandom_range(1,20);
if(moneyLuck == 1) {
	with (instance_create_layer(x,y,"lay_splatter",obj_cash)) image_angle = other.direction;
}
else {
	var ammoLuck = irandom_range(1,12);
	if (ammoLuck == 1) {
		instance_create_layer(x,y,"lay_text",obj_weapon);
	}
}

//Play sound
audio_sound_pitch(snd_death,random_range(0.8,1.2));
audio_play_sound(snd_death,0,0);

//Screenshake
with (obj_player) shake = 4;