/// @description 
//value = "Текст";

draw_set_font(fn_UI);
var value_width = string_width(value);

image_xscale = (value_width + 10) / sprite_width;
hover = false;