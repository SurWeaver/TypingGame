///@desc draw_9slice_box(sprite, x1, y1, x2, y2)
///@args sprite
///@args x1
///@args y1
///@args x2
///@args y2

var spr = argument0;
var size = sprite_get_width(spr) / 3;


var x1 = argument1;
var y1 = argument2;
var x2 = argument3;
var y2 = argument4;
var width = x2 - x1;
var height = y2 - y1;
//Углы
//↖
draw_sprite_part(spr, 0, 0, 0, size, size, x1-size, y1-size);

//↗
draw_sprite_part(spr, 0, 2*size, 0, size, size, x2, y1-size);

//↙
draw_sprite_part(spr, 0, 0, 2*size, size, size, x1-size, y2);

//↘
draw_sprite_part(spr, 0, 2*size, 2*size, size, size, x2, y2);

//Полосы
//верхняя
draw_sprite_part_stretched(spr, 1/3, 0, 1/3, 1/3, x1, y1-size, x2, y1);

//нижняя
draw_sprite_part_stretched(spr, 1/3, 2/3, 1/3, 1/3, x1, y2, x2, y2+size);
//draw_sprite_part(spr, 0, size, 2*size, width, size, x1, y2);

//левая
draw_sprite_part_stretched(spr, 0, 1/3+0.1, 1/3, 1/3, x1-size, y1, x1+size, y2);
//draw_sprite_part(spr, 0, 0, size, size, height, x1-size, y1);

//правая
draw_sprite_part_stretched(spr, 2/3, 1/3+0.1, 1/3, 1/3, x2, y1, x2+size, y2);
//draw_sprite_part(spr, 0, 2*size, size, size, height, x2, y1);

//Центр
draw_sprite_part_stretched(spr, 1/3, 1/3, 1/3, 1/3, x1, y1, x2, y2);
//draw_sprite_part(spr, 0, size, size, width, height, x1, y1);
