/// @description 

spd = global.walk_speed;


bookcases = ds_list_create();

var shelf_width = sprite_get_width(sShelf);

for (var i = 0; i < room_width + shelf_width*8; i+= shelf_width)
{
	ds_list_add(bookcases, instance_create_layer(i, 0, "Bookcases", oBookcase));
}

last_bookcase = bookcases[|ds_list_size(bookcases)-1];