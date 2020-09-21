/// @description 
if (x > targetX && global.state = states.walk)
{
	x -= spd;
	if (x <= targetX)
	{
		x = targetX;
		global.state = states.wait;
	}
}
if (hp <= 0 && !transformed)
{
	transformed = true;
	effect_create_above(ef_smokeup, x, y, 1, c_gray);
}


switch(global.state)
{
	case states.attack: sprite_index = def; break;
	case states.defence: sprite_index = at; break;
	case states.walk:
	case states.wait: sprite_index = idle; break;
	case states.stats: sprite_index = ok; break;
}