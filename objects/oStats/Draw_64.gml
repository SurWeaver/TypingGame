/// @description 
var width = view_wport[0];
var height = view_hport[0];
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(0, 0, width, height, false);
draw_set_alpha(1);
draw_set_color(c_white);

draw_set_font(fn_UI);
draw_set_aligns(fa_left, fa_top);
#region Статистика
var m = 20;//margin
var dbs = 30;//distance between strings
draw_text(m, m, global.text[? "scrollCount"] + string(scrolls_count));
draw_text(m, m + dbs, global.text[? "wordCount"] + string(words_count));
draw_text(m, m + 2*dbs, global.text[? "passedTime"] + string(whole_time));
draw_text(m, m + 3*dbs, global.text[? "wpm"] + string(words_per_minute));
draw_text(m, m + 4*dbs, global.text[? "mistakeCount"] + string(mistakes_count));
draw_text(m, view_hport[0] - 2*m, global.text[? "scrollWords"]);
/*draw_text(m, m, "Количество использованных свитков: " + string(scrolls_count));
draw_text(m, m + dbs, "Количество введённых слов: " + string(words_count));
draw_text(m, m + 2*dbs, "Прошедшее время: " + string(whole_time));
draw_text(m, m + 3*dbs, "Слов в минуту: " + string(words_per_minute));
draw_text(m, m + 4*dbs, "Ошибок: " + string(mistakes_count));
draw_text(m, view_hport[0] - 2*m, "Крутите колесо мыши, чтобы листать список слов");*/
#endregion


if (steps_before_any_input <= 0)
{
	draw_set_aligns(fa_center, fa_center);
	draw_text(width/2, height - 100, global.text[? "enterToContinue"]);
}