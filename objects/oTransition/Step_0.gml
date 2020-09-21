/// @description 

switch(global.state)
{
	case states.walk:
		x = attached_bookcase.x; break;
	case states.event:
		if (!created_new_window)
		{
			create_question_window(room_width/2+5, room_height/2+20, 120, 25);
			created_new_window = true;
		}
		break;
}


if (x <= room_width/2 && !created_new_window)
{
	global.state = states.event;
}

if (x < - 70)
	instance_destroy();