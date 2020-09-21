/// @description 
if (steps_before_any_input > 0)
	steps_before_any_input--;

if (steps_before_any_input <= 0 && keyboard_check_pressed(vk_enter))
{
	global.state = states.create;
	reset_stats_and_vars();
	instance_destroy(oEnemy);
	instance_destroy(oWordManager);
	instance_destroy();
}



