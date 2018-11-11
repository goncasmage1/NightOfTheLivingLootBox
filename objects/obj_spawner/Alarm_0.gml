 //Create 8 new enemies
repeat(8)
{
	instance_create_layer(choose(room_width-180, 180),choose(room_height-200, 200),"lay_enemy",obj_enemy);
}

//Decrease time between spawns
timer = max (timer-timer_dec,timer_min);

//Reset alarm
alarm[0] = timer;