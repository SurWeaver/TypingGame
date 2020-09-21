/// @description 
if (array_length_1d(word_objects) == 0)
{
	//var spr_height = sprite_get_height(sField);
	for (var i = 0; i < array_length_1d(words); i++)
	{
		var word = words[i];
		var word_height = string_height(word);
		var word_width = string_width(word);
		var spr_size = sprite_get_width(sField);
		word_objects[i] = instance_create_layer(room_width-30, (20+(word_height+2)*i)/4, "Words", oWord);
		word_objects[i].image_xscale = (1 / spr_size) * word_width/4;
		word_objects[i].image_yscale = (1 / spr_size) * word_height/4;
		word_objects[i].name = word;
		word_objects[i].description = ds_map_find_value(oControl.definitions, word);
	}
}

draw_set_font(fn_UI);
var word_count = array_length_1d(words);
var column_height = (string_height(words[0]) + 2) * word_count;

if (column_height > view_hport[0])
{
	var deltaY = 0
	if (mouse_wheel_up())
	{
		deltaY -= scrolling_speed;
	}
	else if (mouse_wheel_down())
	{
		deltaY += scrolling_speed;
	}
	if (!((word_objects[0].y + deltaY <= -column_height) || (word_objects[word_count-1].y >= column_height)))
		for (var i = 0; i < array_length_1d(word_objects); i++)
		{
			word_objects[i].y += deltaY;
		}
}