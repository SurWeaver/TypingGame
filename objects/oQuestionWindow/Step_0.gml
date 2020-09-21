/// @description 
var xx = 4*x;
var yy = 4*y;
var w = 4*width;
var h = 4*height;
var mx = 4*mouse_x;
var my = 4*mouse_y;
if (mouse_check_button_pressed(mb_left) &&
	mx > xx && mx < xx+w &&
	my > yy && my < yy+h)
{
	if (mx < xx+w/2)
	{
		//YES
		clear_dictionary();
		fill_dictionary(type);
		instance_create_layer(0, 0, "VisualTransition", oVisualTransition);
		instance_destroy();
	}
	else
	{
		//NO
		//create enemy
		global.state = states.create;
		instance_destroy();
	}
}