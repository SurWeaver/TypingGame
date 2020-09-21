///@desc translate_to(language)
///@args language
var filename = "\languages\\" + argument0 + ".txt";
if (!file_exists(filename))
{
	show_message("File doesn't exist");
	exit;
}
var file = file_text_open_read(filename);
global.text[? "start"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "settings"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "instructions"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "back"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "diff"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "diffEasy"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "diffNormal"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "diffHard"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "youAreInSection"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "goInSection"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "yes"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "no"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "gameOverMessage"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "scrollCount"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "wordCount"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "passedTime"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "wpm"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "mistakeCount"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "scrollWords"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "enterToContinue"] = file_text_read_string(file);
file_text_readln(file);
global.text[? "fullInstruction"] = file_text_read_string(file);
file_text_close(file);