//Change player's weapon on collision
with (obj_player)
{
	weapon = 1;
	weaponspd = 5;
	ammo = 20;
}
//then destroy
instance_destroy();