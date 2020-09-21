if (!instance_exists(stats_window))
{
	stats_window = instance_create_layer(0, 0, "Stats", oStats);
	copy_from_list_to_array(stat_strings[? "strings"], stats_window.strings);
	stats_window.whole_time = stat_strings[? "whole time"];
	stats_window.strings_length = stat_strings[? "strings length"];
	stats_window.mistakes_count = stat_strings[? "mistakes count"];
	stats_window.words_count = stat_strings[? "words count"];
	stats_window.written_words = [];
	
	with (stats_window)
	{
		words_per_minute = (strings_length/5) / (real(whole_time/60));
		scrolls_count = array_length_1d(strings);
		var newIndex = 0;
		for (var i = 0; i < array_length_1d(strings); i++)
		{
			var arr = from_string_to_word_array(strings[i]);
			var arr_length = array_length_1d(arr);
			array_copy(written_words, newIndex, arr, 0, arr_length);
			newIndex += arr_length;
		}
		written_words = array_without_repeats(written_words);
		create_word_manager(written_words);
	}
}