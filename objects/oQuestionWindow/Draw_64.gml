/// @description 
var xx = 4*x;
var yy = 4*y;
var w = 4*width;
var h = 4*height;
draw_9slice_box(sWindow, xx, yy, xx+w, yy+h);
draw_set_aligns(fa_center, fa_top);
draw_set_color(c_white);
var subject_name;
switch(type)
{
	case "Astronomia": subject_name = "Астрономия"; break;
	case "Botanika": subject_name = "Ботаника"; break;
	case "Pedagogika": subject_name = "Педагогика"; break;
	case "Psihologia": subject_name = "Психология"; break;
	case "Filosofia": subject_name = "Философия"; break;
}
draw_text(xx + w/2, yy, global.text[? "goInSection"] + "\"" + subject_name + "\"?");//"Перейти в раздел \"" + subject_name + "\"?");
draw_text(xx + w/4, yy+h*5/8, global.text[? "yes"]);//"Да");
draw_text(xx + w*3/4, yy+h*5/8, global.text[? "no"]);//"Нет");