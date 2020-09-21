/// @description 

if (hp <= 0 && alarm[0] < 0)
{
	alarm[0] = room_speed*3;
}

#region Анимация игрока
switch(global.state)
{
	case states.event:
	case states.wait:
	case states.stats: sprite_index = sPlayerIdle; break;
	case states.walk: sprite_index = sPlayerWalk; break;
}

if (global.state == states.attack && oScroll.is_timer_going)
{
	sprite_index = sPlayerAttack;
}

if (global.state == states.defence && oScroll.is_timer_going)
{
	sprite_index = sPlayerDefence;
}
if (hp <= 0)
{
	sprite_index = sPlayerDeath;
}
#endregion