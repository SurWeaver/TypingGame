///@desc add_new_stat(string, passed_time, mistake_count, words_count)
///@args string
///@args passed_time
///@args mistake_count
///@args words_count

var str = argument0;
var passed_time = argument1;
var mistake_count = argument2;
var words_count = argument3;

with (oControl)
{
	ds_list_add(stat_strings[? "strings"], str);
	stat_strings[? "whole time"] += passed_time;
	stat_strings[? "strings length"] += string_length(str);
	stat_strings[? "mistakes count"] += mistake_count;
	stat_strings[? "words count"] += words_count;
}