//[TIME]
var _dt = delta_time / 1000000;
time += _dt;

if(active)
{
	//[CHECK PROCESS]
	var _tasky = global.screen.height-10;
	for(var _i = 0;_i < array_length(global.process);_i++)
	{
		var _proc = global.process[_i];
	
	
	
		var _xproc = 2 + (_i * 8);
		var _yproc = _proc.window_target == global.windows[0] ? -2 : 2;
	
		if(_proc.window_target.is_destroying)
			_yproc = 10;
	
		_proc.x = lerp(_proc.x, _xproc, 0.25);
		_proc.y = lerp(_proc.y, _yproc + _tasky, 0.25);
	}
	var _taskbutt = collision_point(global.screen.cursor_x, global.screen.cursor_y, global.process, false, true);
	if(_taskbutt != noone)
	{
		window_set_cursor(cr_handpoint);
		_taskbutt.image_blend = c_ltgray;
		 if(mouse_check_button_pressed(mb_left))
		 {
			func_focus_window(_taskbutt.window_target);
		 }
	 
		 exit;
	}


	//[CHECK WINDOW]
	if(!instance_exists(grabbing_window))
	{
		var _win = collision_point(global.screen.cursor_x, global.screen.cursor_y, global.windows, false, true);
		if(_win != noone)
		{
			var _relx =  global.screen.cursor_x - _win.x;
			var _rely = global.screen.cursor_y - _win.y;
	
			if(_win.func_buttons(_relx, _rely))
			{
	
			}
			else if(mouse_check_button_pressed(mb_left))
			{
				func_focus_window(_win);
		
				if(_rely <= 8)
				{	
					//GRAB
					grabbing_window = _win;
			
					grabbing_offset[0] = _win.x - global.screen.cursor_x;
					grabbing_offset[1] = _win.y - global.screen.cursor_y;
				}
			}
			exit;
		}
	}
	else
	{
		grabbing_window.x = global.screen.cursor_x + grabbing_offset[0];
		grabbing_window.y = global.screen.cursor_y + grabbing_offset[1];
	
		grabbing_window.y = min(grabbing_window.y, global.screen.height- 18);
	
		window_set_cursor(cr_size_all);
		if(!mouse_check_button(mb_left))
			grabbing_window = noone;
		
		exit;
	}

	//[BUTTONS APP]
	var _hitapp = collision_point(global.screen.cursor_x, global.screen.cursor_y, obj_button_app, false, true);
	if(_hitapp != noone)
	{
		window_set_cursor(cr_handpoint);
		_hitapp.image_blend = c_ltgray;
		if(device_mouse_check_button_pressed(0, mb_left))
		{
			window_set_cursor(cr_hourglass);
			_hitapp.func_onclick();
		}
	}
	else
	{
		window_set_cursor(cr_default);
	}
}
else
{
	window_set_cursor(cr_hourglass);
}