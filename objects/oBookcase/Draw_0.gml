/// @description 
//Немного плохой код, но он умножает полку
if (array_length_1d(frames) > 0)
{
	for (var i = 0; i < array_length_1d(frames); i++)
	{
		draw_sprite(sprite_index, frames[i], x, y + sprite_height*i);
	}
}