/// @description Insert description here
// You can write your code in this editor
if (hp>0)
	{
	money = instance_create_layer(x,y,"lay_bullets",obj_distr);
	newDir = point_direction(x,y,mouse_x,mouse_y);
	money.direction = newDir;
	money.image_angle = money.direction;
	hp=hp-1;
	}