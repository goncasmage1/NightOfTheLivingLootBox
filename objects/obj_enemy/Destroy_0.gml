obj_spawner.round_enemies -= 1;

if(obj_spawner.round_enemies == 0){
	obj_player.rounds += 1;
	obj_spawner.enemyQuantity = floor(obj_spawner.enemyQuantity * obj_spawner.enemyQuantityIncrease);
	obj_spawner.round_enemies = obj_spawner.enemyQuantity;
	if (obj_player.levelsToUpgrade > 0)
	{
		//instance_deactivate_all(true);
		room_goto(rm_menu);
	}
}

//Create enemy splatter on death
with (instance_create_layer(x,y,"lay_splatter",obj_splatter)) image_angle = other.direction;

var luck = irandom_range(1,30);
if(luck == 1) {
	with (instance_create_layer(x,y,"lay_splatter",obj_cash)) image_angle = other.direction;
}

//Play sound
audio_sound_pitch(snd_death,random_range(0.8,1.2));
audio_play_sound(snd_death,0,0);

//Screenshake
with (obj_player) shake = 4;