if(instance_number(obj_enemy) < round_enemies && instance_number(obj_enemy) < max_screen_enemies) { 
	//Limit number of enemies for now, should be changed when rounds are implemented
	instance_create_layer(x,y,"lay_enemy",obj_enemy);
}

//Decrease time between spawns
timer = max (timer-timer_dec,timer_min);

//Reset alarm
alarm[0] = timer;