///@desc switch_from_wait_to_action()
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