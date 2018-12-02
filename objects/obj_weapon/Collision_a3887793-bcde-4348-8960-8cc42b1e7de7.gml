//Change player's weapon on collision
with (obj_player)
{
	weaponspd = 5;
	ammo += 20;
}
//then destroy
instance_destroy();