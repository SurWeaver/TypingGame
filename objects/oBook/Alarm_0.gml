/// @description Переключение защиты и атаки
if (global.previous_turn == "defence")
{
	global.state = states.attack;
	global.previous_turn = "attack";
}
else
{
	global.state = states.defence;
	global.previous_turn = "defence";
}