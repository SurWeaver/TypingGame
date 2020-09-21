/// @description 

inputed_char = last_keyboard_char();

if (inputed_char != "")
	is_timer_going = true;

if (inputed_char == string_char_at(spell_name, cursor_index))
{
	cursor_index++;
}
else
{
	mistake_count++;
	create_mistake_char(cursorX, room_height/2, inputed_char);
}

if (cursor_index-1 == string_length(spell_name))
{
	is_timer_going = false;
	//здесь напишем чуть позже атаку
}


if (is_timer_going)
{
	timer += delta_time / 1000000;
}

inputed_char = "";