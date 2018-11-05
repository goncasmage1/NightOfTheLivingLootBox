//Move towards player
if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x,obj_player.y,max(spd-(hit*spd),0));
}

//Angle sprite based on direction
image_angle = direction;

//Gradually reduce "just hit" effect
if (hit > 0) hit -= 0.05; else hit = 0;

//Destroy if hp is less than or equal to 0
if (hp <= 0) instance_destroy();