//Scale
var _winw = 16 * image_xscale;

//Button close
buttons[0].x = x+(_winw-7);
buttons[0].y = y+2;

buttons[1].x = buttons[0].x - 6;
buttons[1].y = y+2;

proc_inst.image_index = proc_icon;

if(is_destroying)
	destroy_scale = lerp(destroy_scale, 0, 0.25);