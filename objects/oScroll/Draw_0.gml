/// @description 
if (oPlayer.hp > 0)
{
	draw_set_font(fn_scroll);
	draw_set_color(c_white);
	draw_set_valign(fa_center);
	draw_set_halign(fa_left);

	if (global.state == states.wait)
	{
		var current_string = string_copy(spell_name, 1, visible_symbols_count-1);
		var current_string_width = string_width(current_string);
		var yy = y + sprite_height/2;
	
		draw_scroll(x + currentShiftX, y, current_string_width);
		draw_text(x + currentShiftX, yy, current_string);
		var separator_coef = visible_symbols_count / string_length(spell_name);
		draw_set_alpha(0.6);
		draw_line_width_color(separatorX, yy - (separatorHeight/2)*separator_coef, separatorX, yy + (separatorHeight/2)*separator_coef, 1, c_black, c_black);
		draw_set_alpha(1);
	}
	if (global.state != states.wait)
	{
		draw_set_font(fn_scroll);
		draw_set_color(c_white);
		draw_set_valign(fa_center);
		draw_set_halign(fa_left);
	
		var spell_width = string_width(spell_name);
	
		var yy = y + sprite_height/2;
		draw_scroll(x + currentShiftX, y, spell_width);
		draw_text(x + currentShiftX, yy, spell_name);

		draw_set_color(c_green);
		var inputedText = string_copy(spell_name, 1, cursor_index-1);
	
		draw_text(x + currentShiftX, yy, inputedText);
		draw_set_alpha(0.6);
		draw_line_width_color(separatorX, yy - separatorHeight/2, separatorX, yy + separatorHeight/2, 1, c_black, c_black);
		draw_set_alpha(1);
	}
}