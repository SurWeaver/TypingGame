if (!instance_exists(scroll))
{
	//Брать Y от библиотечных полок 
	var xx = 10;
	var yy = 10;
	scroll = instance_create_layer(xx, yy, "Scrolls", oScroll);
	
	var words_count = irandom_range(2, 4);
	scroll.spell_name = create_spell_name(words_count);
	scroll.words_count = words_count;
}