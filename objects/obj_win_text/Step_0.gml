if(behavior == 1)
{
	x += round(random_range(-2, 2));
	y += round(random_range(-2, 2));
	
	time_bomb++;
	
	if(time_bomb > 80)
	{
		func_destroy();
		behavior = -100;
	}
	
	if(time_bomb % 4 == 0)
		title = text_gen(6);
}

// Inherit the parent event
event_inherited();