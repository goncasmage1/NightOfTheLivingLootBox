timer = 700;		//duration between spawns (frames)
timer_min = 280;	//minimum duration between spawns 
timer_dec = 1;		//amount to reduce from duration each spawn
alarm[0] = timer;	//set alarm to trigger spawn

round_enemies = floor(4.2 * (obj_player.rounds * 1.8));
max_screen_enemies = 50;
