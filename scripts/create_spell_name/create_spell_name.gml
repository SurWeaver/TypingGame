///@desc create_spell_name(words_count)
///@args words_count
var words_count = argument0;

var spell_name = "";

ds_list_shuffle(terms);
for (var i = 0; i < words_count; i++)
{
	spell_name += terms[| i];
	if (i != words_count-1)
		spell_name += " ";
}

return spell_name;