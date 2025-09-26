//[MACROS]
#macro RESOLUTION 180


//[GLOBALS]
global.screen_instance = noone;
global.clock_instance = noone;

global.screen = 
{
	width : 0,
	height : 0,
	
	cursor_x : 0,
	cursor_y : 0,
	
	scale : 0,
	alpha : 0.1
};
global.clock = 
{
	time : 0,
	frames : 0,
	
	dt : 0
};

global.windows = [];
global.process = [];


global.progress_flag = 0;