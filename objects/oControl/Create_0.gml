/// @description 

keyboard_string = "";


instance_create_layer(room_width/4, room_height*3/4, "Player", oPlayer);

terms = ds_list_create();
definitions = ds_map_create();
fill_dictionary(global.current_theme);

scroll = noone;
stats_window = noone;

stat_strings = ds_map_create();
stat_strings[? "strings"] = ds_list_create();
stat_strings[? "whole time"] = 0;
stat_strings[? "strings length"] = 0;
stat_strings[? "mistakes count"] = 0;
stat_strings[? "words count"] = 0;

alarm[0] = room_speed*2;