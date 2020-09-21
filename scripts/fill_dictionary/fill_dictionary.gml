///@desc fill_dictionary(subject)
///@args subject
var subject = argument0;

with(oControl)
{
	var wordFile = file_text_open_read("\subjects\\"+string(subject)+".txt");
	while (!file_text_eof(wordFile))
	{
		var str = file_text_read_string(wordFile);
		
		var spacePos = string_pos(" ", str);
		
		var term = string_copy(str, 1, spacePos-1);
		var definition = string_copy(str, spacePos+1, string_length(str) - spacePos);
		ds_list_add(terms, term);
		ds_map_add(definitions, term, definition);
		file_text_readln(wordFile);
	}
	file_text_close(wordFile);
}