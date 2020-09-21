/// @description 
if (go_dark)
{
	current_darkness_alpha += 0.05;
}
else
{
	current_darkness_alpha -= 0.05;
}


if (current_darkness_alpha > 1.5)
{
	go_dark = false;
	current_darkness_alpha = 1;
	if (instance_exists(oTransition))
	{
		instance_destroy(oTransition);
	}
}

if (!go_dark && current_darkness_alpha <= 0)
{
	global.state = states.create;
	instance_destroy();
}