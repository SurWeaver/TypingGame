gml_pragma("global", "init_globals();");
global.state = states.create;
global.what_to_create = "enemy";//"enemy"||"transition";
global.walk_speed = 2;
global.previous_turn = "defence"; //defence || attack
global.seconds_per_letter = 0.3;
global.difficulties = [0.5, 0.3, 0.1];
global.themes = ["Astronomia",
				 "Botanika",
				 "Pedagogika",
				 "Psihologia",
				 "Filosofia",
				 "MyTheme"];
global.current_theme = global.themes[irandom_range(0, array_length_1d(global.themes)-2)];
global.text = ds_map_create();
global.rus = true;