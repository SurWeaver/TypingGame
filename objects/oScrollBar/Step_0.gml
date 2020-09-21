if (mouseHovered)
{
	if (mouse_wheel_up())
	{
		value += 0.5;
	}
	if (mouse_wheel_down())
	{
		value -= 0.5;
	}
}

if (value < 0.33)
	value = 0;
else if (value > 0.66)
	value = 1;
else value = 0.5;


value = clamp(value, 0, 1);