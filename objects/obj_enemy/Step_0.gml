var finalSpd = max(spd-(hit*spd),0);

mp_potential_settings(45, 5, 5, 1);
if instance_exists(obj_distr) {
	var inst = instance_nearest(x,y,obj_distr);
	var dir = point_direction(x, y, inst.x, inst.y);
	image_angle = dir;
	mp_potential_step_object(inst.x, inst.y, finalSpd, obj_avoid);
}
else if instance_exists(obj_player) {
	var inst = instance_nearest(x,y,obj_player);
	var dir = point_direction(x, y, inst.x, inst.y);
	image_angle = dir;
	mp_potential_step_object(inst.x, inst.y, finalSpd, obj_avoid);
}

//Gradually reduce "just hit" effect
if (hit > 0) hit -= 0.05; else hit = 0;

//Destroy if hp is less than or equal to 0
if (hp <= 0) instance_destroy();