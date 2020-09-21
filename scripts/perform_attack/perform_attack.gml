var damage = max(2, 10 - mistake_count);

var passed_time_percentage = count_passed_time_percentage();

if (passed_time_percentage < 1)
{
	damage *= 1 + passed_time_percentage;
}
else if (passed_time_percentage <= 1.8)
{	
	damage *= passed_time_percentage - 1;
}
else 
{
	damage *= 0.2;
}
damage = round(damage);

oEnemy.hp -= damage;

create_flying_string(oEnemy.x, oEnemy.y, c_white, 0.1, damage);

global.state = (oEnemy.hp > 0)? states.wait : states.stats;

add_new_stat(spell_name, timer, mistake_count, words_count);

instance_destroy();