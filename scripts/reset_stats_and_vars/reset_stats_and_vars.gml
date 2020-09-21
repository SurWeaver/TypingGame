///@desc reset_stats_and_vars()
with (oControl)
{
	ds_list_clear(stat_strings[? "strings"]);
	stat_strings[? "whole time"] = 0;
	stat_strings[? "strings length"] = 0;
	stat_strings[? "mistakes count"] = 0;
	stat_strings[? "words count"] = 0;
}
global.previous_turn = "defence";