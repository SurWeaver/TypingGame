///@desc create_next_event()
//Создаём следующее событие для игрока, берущее данные из global.what_to_create
switch (global.what_to_create)
{
	case "enemy": instance_create_layer(room_width + 300, room_height*3/4, "Enemies", oEnemy);
	global.what_to_create = "transition"; break;
	case "transition": create_transition();
	global.what_to_create = "enemy"; break;
}

global.state = states.walk;