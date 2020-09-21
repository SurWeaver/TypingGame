///@desc last_keyboard_char
if (keyboard_string != "")
{
	var last_char = string_char_at(keyboard_string, 1);
	keyboard_string = "";
	return last_char;
}
else
	return "";