var damage = oEnemy.damage;

var passed_time_percentage = count_passed_time_percentage();

var defence_percentage = 1;

if (passed_time_percentage < 1)
{
	defence_percentage = 1;
}
else if (passed_time_percentage <= 1.8)
{	
	defence_percentage *= 2 - passed_time_percentage;
}
else 
{
	defence_percentage = 0.2;
}

damage = 4*((damage - defence_percentage * damage) + damage * (mistake_count/20));
damage = round(max(0, damage));

oPlayer.hp -= damage;
create_flying_string(oPlayer.x, oPlayer.y, c_red, 0.1, damage);

global.state = states.wait;

add_new_stat(spell_name, timer, mistake_count, words_count);

instance_destroy();