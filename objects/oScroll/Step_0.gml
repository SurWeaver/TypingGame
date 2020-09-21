/// @description 
if (global.state == states.wait)
{
	draw_set_font(fn_scroll);
	var visible_symbols = string_copy(spell_name, 1, visible_symbols_count);
	var visible_symbols_length = string_length(visible_symbols);
	
	
	if (visible_symbols_count < string_length(spell_name)
		&& current_width >= visible_symbols_length)
		visible_symbols_count++;
	else
		current_width += 3;
	if (visible_symbols_count == string_length(spell_name))
	{
		keyboard_string = "";
		switch_from_wait_to_action();
	}
}
else
{
	if (oPlayer.hp > 0)
	{
		inputed_char = last_keyboard_char();
	}

	if (inputed_char != "")
	{
		is_timer_going = true;
	}
	
	currentShiftX = lerp(currentShiftX, targetX, 0.1);
	
	var next_char_to_type = string_char_at(spell_name, cursor_index);
	if (inputed_char == next_char_to_type)
	{
		cursor_index++;
		targetX -= string_width(inputed_char);
	}
	else if (inputed_char != "")
	{
		draw_set_font(fn_scroll);
		var txt_height = string_height(inputed_char);
		mistake_count++;
		create_flying_string(separatorX+5, y+txt_height, c_red, 0.1, inputed_char);
	}

	if (cursor_index-1 == string_length(spell_name))
	{
		is_timer_going = false;
		switch(global.state)
		{
			case states.attack: perform_attack(); break;
			case states.defence: perform_defence(); break;
		}
	}
}

if (is_timer_going)
{
	timer += delta_time / 1000000;
}

