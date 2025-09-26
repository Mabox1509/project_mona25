//[VARIABLES]
surface = -1;
close_over = false;
proc_icon = 0;
proc_inst = noone;

title = "virus.exe";

is_destroying = false;
destroy_surface = -1;
destroy_scale = 1;

buttons = 
[
	instance_create_depth(x, y, depth, obj_winbutton),
	instance_create_depth(x, y, depth, obj_winbutton)
];

//[FUNCTIONS]
func_buttons = function(_x, _y)
{
	if(is_destroying)
		return false;
	
	var _hit = collision_point(x + _x, y + _y, buttons, false, true);
	if(_hit != noone)
	{
		window_set_cursor(cr_handpoint);
		_hit.image_blend = c_ltgray;
		
		if(mouse_check_button_pressed(mb_left))
		{
			window_set_cursor(cr_hourglass);
			_hit.image_blend = c_gray;
			_hit.func_click();
		}
		return true;
	}
	else
	{
		window_set_cursor(cr_default);
	}
	
	
	return false;
}
func_destroy = function()
{
	is_destroying = true;
	alarm[0] = 15;
}

func_resize = function(_w, _h)
{
	image_xscale = (_w+8) / 16;
	image_yscale = (_h+16) / 24;
	
	if(surface_exists(surface))
	surface_free(surface);
}
func_getw = function()
{
	return round((image_xscale * 16) - 8);
}
func_geth = function()
{
	return round((image_yscale * 24) - 16);
}

func_center = function()
{
	var _x = floor((global.screen.width - round(image_xscale * 16)) / 2);
	var _y = floor((global.screen.height - round(image_yscale * 24)) / 2);
	
	x = _x;
	y = _y;
	
	
	//Scale
	var _winw = 16 * image_xscale;

	//Button close
	buttons[0].x = x+(_winw-7);
	buttons[0].y = y+2;

	buttons[1].x = buttons[0].x - 6;
	buttons[1].y = y+2;

}

//[INIT]
array_push(global.windows, id);

proc_inst = instance_create_depth(0, 1000, -10, obj_button_proc);
proc_inst.window_target = id;
buttons[0].image_index = 0;
buttons[1].image_index = 1;

buttons[0].parent = id;
buttons[1].parent = id;