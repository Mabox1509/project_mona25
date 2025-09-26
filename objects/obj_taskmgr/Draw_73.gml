//DRAW WINDOWS
for(var _i = array_length(global.windows)-1;_i >= 0;_i--)
{
	var _inst = global.windows[_i];
	with(_inst)
	{
		if(!is_destroying)
			event_user(0);
		else
			event_user(1);
	}
}

//DRAW TOOLBAR
var _tup = global.screen.height-10;
draw_sprite_stretched(spr_toolbar, 0, 0, _tup, global.screen.width, 10);

draw_set_color(c_white);
draw_set_font(fnt_kenney);

var _hourl = global.screen.width - 7;
var _hourtext = string_format(hour, 2, 0) +  (floor(time * 2.5) % 2 == 0 ? ":" : " ");
_hourtext += string_replace(string_format(minute, 2, 0), " ", "0");

_hourl -= string_width(_hourtext);
draw_text(_hourl, _tup, _hourtext);
_hourl -= 7;
draw_sprite(spr_ui_hour, 0, _hourl, _tup+1);


