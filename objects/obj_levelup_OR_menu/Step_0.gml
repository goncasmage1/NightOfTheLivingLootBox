if (room == menu)
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
else if (room == levelup)
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
		if (obj_player.levelsToUpgrade > 0) room_goto(menu);
		else room_goto(invest);
	}
}
else if (room == invest) {
	var move_menu_levelup = 0;
	move_menu_levelup -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
	move_menu_levelup += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

	if (move_menu_levelup != 0)
	{
		mpos_invest_menu += move_menu_levelup;
		if (mpos_invest_menu < 0) mpos_invest_menu = array_length_1d(invest_options) -1;
		if (mpos_invest_menu > array_length_1d(invest_options) -1) mpos_invest_menu = 0;
	}
	
	pressed = keyboard_check_pressed(vk_enter);
	if (!pressed and !considerPress) {
		considerPress = true;
	}
	
	if (pressed and considerPress)
	{
		goToLevel = false;
		switch (mpos_invest_menu)
		{
			case 0:
			{
				if (obj_player.betPile < 3 and obj_player.money > (invest_increment * 2)) {
					obj_player.betPile += 1;
					obj_player.money -= invest_increment;
				}
				break;
			}
			case 1:
			{
				if (obj_player.betPile > 0) {
					obj_player.betPile -= 1;
					if (obj_player.money + invest_increment < obj_player.maxMoney) {
						obj_player.money += invest_increment;
					}
					else obj_player.money = obj_player.maxMoney;
				}
				break;
			}
			case 2:
			{
				goToLevel = true;
				break;
			}
		}
		if (goToLevel) room_goto(level1);
	}
}

if (pause = 1)
{
	instance_activate_all();
	instance_destroy();
}