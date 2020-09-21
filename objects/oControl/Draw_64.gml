/// @description 
if (alarm[0] > 0)
{
	draw_set_aligns(fa_center, fa_center);
	draw_set_color(c_white);
	draw_set_font(fn_big);
	var subject_name;
	switch(global.current_theme)
	{
		case "Astronomia": subject_name = "Астрономия"; break;
		case "Botanika": subject_name = "Ботаника"; break;
		case "Pedagogika": subject_name = "Педагогика"; break;
		case "Psihologia": subject_name = "Психология"; break;
		case "Filosofia": subject_name = "Философия"; break;
		case "MyTheme": subject_name = "Ваша тема"; break;
	}
	draw_text(view_wport[0]/2, 60, global.text[? "youAreInSection"]+"\"" + subject_name +"\"");
}