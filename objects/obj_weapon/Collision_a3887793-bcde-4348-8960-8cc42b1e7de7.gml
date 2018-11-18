//Change player's weapon on collision
with (obj_player)
{
	there_was_collision = 1; //change to there_was_collision
	weaponspd = 5;
	ammo = 20;
}
//then destroy
instance_destroy();