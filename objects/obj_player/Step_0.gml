//Fire when pressing the left mouse button
if (mouse_check_button(mb_left)) 
{
	if (cooldown == 0)
	{
		//reduce ammo of special weapon if necessary
		ammo--;
		if (ammo < 1) weapon = 0;
		
		//fire normal weapon (1 bullet)
		if (weapon == 0)
		{
			aimOffset = aiming ? aimingAccuracy : hipFireAccuracy;
			newDir = point_direction(x,y,mouse_x,mouse_y) + random_range(-aimOffset, aimOffset);
			bullet = instance_create_layer(x,y,"lay_bullets",obj_bullet);
			bullet.direction = newDir;
			bullet.image_angle = bullet.direction;
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

//aim when pressing the right mouse button (slow movement)
if (mouse_check_button(mb_right)) {
	if (!aiming) {
		aiming = true;
		spd = 2;
	}
}
else {
	if (aiming) {
		aiming = false;
		spd = basespd;
	}
}

var collision_offset = 10;
//tick down cooldown every frame
if (cooldown > 0) cooldown--; 

//Move in four directions when pressing arrow keys.
if (keyboard_check(ord("A"))) 
{	
	if (!TileMeeting(x - spd, y, "Collision", collision_offset)) x-= spd;
}
if (keyboard_check(ord("D")))
{
	if (!TileMeeting(x + spd, y, "Collision", collision_offset)) x+= spd;
}
if (keyboard_check(ord("W")))
{
	if (!TileMeeting(x, y - spd, "Collision", collision_offset)) y-= spd;
}
if (keyboard_check(ord("S")))
{
	if (!TileMeeting(x, y + spd, "Collision", collision_offset)) y+= spd;
}

//angle sprite towards mouse cursor
image_angle = point_direction(x,y,mouse_x,mouse_y);