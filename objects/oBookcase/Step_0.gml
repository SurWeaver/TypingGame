/// @description 
var spr_height = sprite_height * array_length_1d(frames);
if (collision_rectangle(x+5, 0, x + sprite_width-5, 0 + spr_height, oTransition, false, true))
{
	y = -3/5 * spr_height;
}
else
	y = 0;
