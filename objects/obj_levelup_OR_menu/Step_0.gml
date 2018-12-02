if (room == rm_menu)
{
	var move_menu = 0;
	move_menu -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
	move_menu += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

	if (move_menu !=  0)
	{
		mpos_menu += move_menu;
		if (mpos_menu < 0) mpos_menu = array_length_1d(menu_pause) -1;
		if (mpos_menu > array_length_1d(menu_pause) -1) mpos_menu = 0;
	}
	
	pressed = keyboard_check_pressed(vk_enter);
	if (pressed)
	{
		switch (mpos_menu)
		{
			case 0: 
			{
				room_goto(level1);
				break;
			}
			case 1:
			{
				room_goto(levelup);
				break;
			}
		}
	}
}

if (room == levelup)
{
	var move_menu_levelup = 0;
	move_menu_levelup -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
	move_menu_levelup += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

	if (move_menu_levelup != 0)
	{
		mpos_levelup_menu += move_menu_levelup;
		if (mpos_levelup_menu < 0) mpos_levelup_menu = array_length_1d(abilities) -1;
		if (mpos_levelup_menu > array_length_1d(abilities) -1) mpos_levelup_menu = 0;
	}
	
	pressed = keyboard_check_pressed(vk_enter);
	if (!pressed and !considerPress) {
		considerPress = true;
	}
	
	if (pressed and considerPress)
	{
		switch (mpos_levelup_menu)
		{
			case 0:
			{
				obj_player.maxMoney += 10;
				break;
			}
			case 1:
			{
				obj_player.basespd *= 1.1;
				break;
			}
			case 2:
			{
				obj_player.moneyRegen += 5;
				break;
			}
			case 3:
			{
				obj_player.enemyDamage -= 4;
				break;
			}
			case 4:
			{
				obj_levelup_OR_menu.pause = 1;
				break;
			}
		}
		obj_player.levelsToUpgrade -= 1;
		if (obj_player.levelsToUpgrade > 0) room_goto(rm_menu);
		else room_goto(level1);
	}
}

if (pause = 1)
{
	instance_activate_all();
	instance_destroy();
}