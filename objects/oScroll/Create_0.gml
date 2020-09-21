/// @description 

spell_name = "";

is_timer_going = false;
timer = 0;

cursor_index = 1;
inputed_char = "";

mistake_count = 0;
words_count = 0;
words = [];

currentShiftX = x; //текущее смещение текста по X
targetX = x;
separatorX = x + 9;//координата курсора, разделяющего текст
separatorHeight = 20;

visible_symbols_count = 0;
current_width = 0;

//Эффект при появлении
effect_create_above(ef_smoke, x+20, y+sprite_height/2, 1, c_silver);
audio_play_sound(snScroll, 0, false);