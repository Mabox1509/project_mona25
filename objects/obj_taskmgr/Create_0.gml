//[VARIABLES]
grabbing_window = noone;
grabbing_offset = [0, 0];

hour = 3;
minute = 0;

time = 0;

active = false;

//[FUNCTION]
func_focus_window = function(_inst)
{
	if(_inst != global.windows[0])
	{
		var _indx = array_get_index(global.windows, _inst);
		array_delete(global.windows, _indx, 1);
		
		array_insert(global.windows, 0, _inst);
	}
}

//[INIT]
alarm[0] = 30;
