//Fire when pressing the left mouse button
if (mouse_check_button(mb_left)) 
{
	//reduce speed to account for recoil
	spd = 2;
	if (cooldown == 0)
	{
		//reduce ammo of special weapon if necessary
		ammo--;
		if (ammo < 1) weapon = 0;
		
		//fire normal weapon (1 bullet)
		if (weapon == 0)
		{
			bullet = instance_create_layer(x,y,"lay_bullets",obj_bullet);
		}
		else
		{
			//fire special weapon (3 bullets split)
			instance_create_layer(x,y,"lay_bullets",obj_bullet2);
			bullet = instance_create_layer(x,y,"lay_bullets",obj_bullet2);
			with (bullet)
			{
				direction-=15;
			}
			bullet = instance_create_layer(x,y,"lay_bullets",obj_bullet2);
			with (bullet)
			{
				direction+=15;
			}
		}
		//set cooldown to current weaponspeed
		cooldown = weaponspd;
	}
}
else 
{
	//restore speed to default
	spd = basespd; 
}


//tick down cooldown every frame
if (cooldown > 0) cooldown--; 

//Move in four directions when pressing arrow keys.
if (keyboard_check(vk_left))	x-= spd;
if (keyboard_check(vk_right))	x+= spd;
if (keyboard_check(vk_up))		y-= spd;
if (keyboard_check(vk_down))	y+= spd;

//angle sprite towards mouse cursor
image_angle = point_direction(x,y,mouse_x,mouse_y);