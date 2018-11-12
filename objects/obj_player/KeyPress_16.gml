if (money>0)
	{
	distraction = instance_create_layer(x,y,"lay_bullets",obj_distr);
	newDir = point_direction(x,y,mouse_x,mouse_y);
	distraction.direction = newDir;
	distraction.image_angle = distraction.direction;
	money=money-1;
	}