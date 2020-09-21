/// @description Воскрешение игрока
hp = 100;
oEnemy.hp = 100;
with (oScroll)
	instance_destroy();
global.state = states.wait;
global.previous_turn = "defence";
//Ничего, вот следующая попытка
//восстанавливаем хп игрока и врага
//удаляем свитки
//устанавливаем global.state в states.wait
//global.previous_turn = "defence";