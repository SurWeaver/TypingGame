/// @description 
switch(global.state)
{
	case states.create: create_next_event(); break;
	//states.walk - двигается фон и враг
	case states.wait: create_scroll(); break;
	case states.stats: create_stats_window(); break;
}
