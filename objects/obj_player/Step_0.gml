if (room == level1)
{
	direction = point_direction(x,y,mouse_x,mouse_y);
	
	if (weapon > 1) weapon = 0;
	
	switch (weapon) {
		case 0:
			sprite_index = spr_player_default_weapon;
			firingInterval = 15;
			break;
		case 1:
			if (there_was_collision == 1) sprite_index = spr_player_fireStaff;
			firingInterval = 7;
			break;
	}

	//Fire when pressing the left mouse button
	if (mouse_check_button(mb_left)) 
	{
		if (cooldown == 0)
		{
			//fire normal weapon (1 bullet)
			if (weapon == 0)
			{
				bullet = instance_create_layer(x,y,"lay_bullets",obj_bullet);
				newDir = point_direction(x,y,mouse_x,mouse_y) + random_range(-aimOffset, aimOffset);
				//bullet = instance_create_layer(x + lengthdir_x(57, image_angle),y - lengthdir_x(15, image_angle),"lay_bullets",obj_bullet);
				bullet.direction = newDir;
				bullet.image_angle = bullet.direction;
			}
			else if (weapon == 1 && ammo > 1)
			{	
				//reduce ammo of special weapon if necessary
				ammo--;
				bullet = instance_create_layer(x,y,"lay_bullets",obj_bullet2);
				newDir = point_direction(x,y,mouse_x,mouse_y) + random_range(-aimOffset, aimOffset);
				//bullet = instance_create_layer(x + lengthdir_x(59, image_angle),y - lengthdir_x(15, image_angle),"lay_bullets",obj_bullet2);
				bullet.direction = newDir;
				bullet.image_angle = bullet.direction;
			
			}
			//set cooldown to current weaponspeed
			cooldown = firingInterval;
		}
	}

	//slowly decay any applied shake
	shake *= 0.9;
	//screenshake
	var cam = view_camera[0] 
	camera_set_view_pos(cam,camera_get_view_x(cam)+random_range(-shake,shake),camera_get_view_y(cam)+random_range(-shake,shake)); 

	//tick down cooldown every frame
	if (cooldown > 0) cooldown--; 
	
	//Normalize speed
	if (move_x != 0 and move_y != 0) {
		if (!normalizingSpeed) {
			normalizingSpeed = true;
			spd = sqrt(spd*spd/2);
		}
		if (aiming) {
			aiming = false;
			aimOffset = movingAccuracy;
		}
	}
	else {
		if (normalizingSpeed) {
			normalizingSpeed = false;
			spd = basespd;
		}
		if (move_x == 0 and move_y == 0) {
			if (!aiming) {
				aiming = true;
				aimOffset = aimingAccuracy;
			}
		}
		else {
			if (aiming) {
				aiming = false;
				aimOffset = movingAccuracy;
			}	
		}
	}
	
	//Move player
	if (move_x != 0) 
	{	
		if (!place_meeting(x + (spd + collision_offset) * move_x, y, obj_wall)) {
			x += spd * move_x;
		}
	}
	if (move_y != 0) 
	{
		if (!place_meeting(x, y + (spd + collision_offset) * move_y, obj_wall)) { 
			y += spd * move_y;
		}
	}
	
	//angle sprite towards mouse cursor
	image_angle = point_direction(x,y,mouse_x,mouse_y);
}
