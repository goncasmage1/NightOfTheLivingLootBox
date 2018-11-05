//Reduce enemy hitpoints on collision
with(other)
{
	hp--;
	hit = 1;
}

//destroy the bullet
instance_destroy();