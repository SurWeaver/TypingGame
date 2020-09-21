/// @description 
if (global.state == states.walk)
{
	var floor_x = layer_get_x("Floor");
	layer_x("Floor", floor_x - global.walk_speed);
	for (var i = 0; i < ds_list_size(bookcases); i++)
		bookcases[| i].x -= spd;

	for (var i = 0; i < ds_list_size(bookcases); i++)
	{
		var spr_width = sprite_get_width(sShelf);
		if (bookcases[| i].x < -spr_width*4)
		{
		
			bookcases[| i].x = last_bookcase.x + spr_width;
			last_bookcase = bookcases[| i];
			with (last_bookcase)
			{
				randomize_shelves();
			}
		}
	}
}