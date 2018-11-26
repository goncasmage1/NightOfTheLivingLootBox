/// @description Player picks cash up
if (money < maxMoney) {
	instance_destroy(other);
	
	if (money + 10 < maxMoney) money = money + 10;
	else money = maxMoney;
}