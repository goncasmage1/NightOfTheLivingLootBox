/// @description Player picks cash up
if (money < maxMoney) {
	instance_destroy(other);
	
	if (money + moneyRegen < maxMoney) money = money + moneyRegen;
	else money = maxMoney;
}