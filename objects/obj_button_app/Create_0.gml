//[VARIABLES]
uniform_color = shader_get_uniform(sh_color, "uColor");

//[FUNCTIONS]
func_onclick = function()
{
	var _win = noone;
	
	switch(image_index)
	{
		case 10:
		
			_win = instance_create_depth(32, 32, 0, obj_win_text);
			_win.func_resize(128, 92);
			_win.title = "RUN.txt";
			
			if(global.progress_flag == 0)
			{
				inst_41C44DA9.x =112;
				inst_41C44DA9.y = 64;
				
				_win.text = 
				    "Encontraste este usb...\n" +
				    "lo insertaste...\n" +
				    "el infierno ya está suelto.\n\n" +
				    "NO abras el ejecutable.\n\n" +
				    "03/11/19_";
				    
				    global.progress_flag = 1;
			}
			else if(global.progress_flag >= 1)
			{
				_win.text = "T̵̢̖̠̞͍̻̩̤̯͎͓̳̉̒͑͛̈́̌̊̄̂̈͑̂̚͠O̷͇͉̎͒͘ ̶̺͈̜̪̦̞̠͍̞̞̑͒́̓̔̈́̀̎͆̅͜L̵̡̨̨̗̳̥͉̫̦͕̔̽̐̊ͅÅ̷̛͕̗̗͇͈͙͇̠͖̥̞̮͗͑͋͂̓͐̕Ṯ̴̖͈̠̰͍̯͓̹̝̠̭̳̰͆̍͌̆̈́̀̽̽̚͝͠Ę̵̻͍̯͈̞̥̲̲̩͕͈͈̄̌̑͌̅̄̎̓̽͊͘͝ͅ";
				_win.behavior = 1;
			}


			_win.func_center();
		
		break;
	}
	
	
	if(_win == noone)
		return;
		
	
	
	obj_taskmgr.func_focus_window(_win);
}

//[INIT]
visible = false;
alarm[0] = floor(random_range(0, 45));