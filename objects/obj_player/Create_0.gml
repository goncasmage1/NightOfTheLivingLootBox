basespd = 5;			//default movement speed
spd = 5;				//current movement speed 
move_x = 0;
move_y = 0;
normalizingSpeed = false;
weapon = 0;				//current weapon
weaponspd = 5;			//current shooting speed
ammo = 0;				//when ammo reaches zero, return to default weapon (unlimited ammo)
cooldown = 0;			//able to fire again when cooldown reaches zero (based on weaponspd)
money = 100;			//amount of money (health) the player has
xp = 0;
maxMoney = 100;
enemyDamage = 20;
aiming = false;
movingAccuracy = 12;
aimingAccuracy = 2.5;
aimingZoom = 1.5;
aimOffset = movingAccuracy;
rounds = 1;
collision_offset = 10;
there_was_collision = 0;
shake = 0;

levellingUp = false;

abilitiesText = ["Increase max Money", "Increase movement speed"];
