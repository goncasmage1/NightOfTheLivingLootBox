direction = point_direction(x,y,mouse_x,mouse_y);

if (weapon == 0)
{
	sprite_index = spr_player_default_weapon;
}
if (weapon == 1 && there_was_collision == 1)
{
	sprite_index = spr_player_fireStaff;
}
if (weapon > 1)
{
	weapon = 0;
}


//Fire when pressing the left mouse button
if (mouse_check_button(mb_left)) 
{
	if (cooldown == 0)
	{
		//reduce ammo of special weapon if necessary
		ammo--;
		
		
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
			bullet = instance_create_layer(x,y,"lay_bullets",obj_bullet2);
			newDir = point_direction(x,y,mouse_x,mouse_y) + random_range(-aimOffset, aimOffset);
			//bullet = instance_create_layer(x + lengthdir_x(59, image_angle),y - lengthdir_x(15, image_angle),"lay_bullets",obj_bullet2);
			bullet.direction = newDir;
			bullet.image_angle = bullet.direction;
			
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
		aimOffset = aimingAccuracy
		//camera_set_view_size(view_camera[0], camera_get_view_width(view_camera[0])/aimingZoom, camera_get_view_height(view_camera[0])/aimingZoom);
	}
}
else {
	if (aiming) {
		aiming = false;
		spd = basespd;
		aimOffset = hipFireAccuracy;
		//camera_set_view_size(view_camera[0], camera_get_view_width(view_camera[0])*aimingZoom, camera_get_view_height(view_camera[0])*aimingZoom);
	}
}

//tick down cooldown every frame
if (cooldown > 0) cooldown--; 

//Move in four directions when pressing arrow keys.
if (keyboard_check(ord("A"))) 
{	
	if (!place_meeting(x - spd - collision_offset, y, obj_wall)) x-= spd;
}
if (keyboard_check(ord("D")))
{
	if (!place_meeting(x + spd + collision_offset, y, obj_wall)) x+= spd;
}
if (keyboard_check(ord("W")))
{
	if (!place_meeting(x, y - spd - collision_offset, obj_wall)) y-= spd;
}
if (keyboard_check(ord("S")))
{
	if (!place_meeting(x, y + spd + collision_offset, obj_wall)) y+= spd;
}

//angle sprite towards mouse cursor
image_angle = point_direction(x,y,mouse_x,mouse_y);