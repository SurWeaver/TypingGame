/// @description 
draw_self();

switch(global.state)
{
	case states.wait:
	case states.defence:
	case states.attack: draw_health(); break;
}
