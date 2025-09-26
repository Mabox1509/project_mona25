//[CURSOR]
var _rawcursor_x = window_mouse_get_x();
var _rawcursor_y = window_mouse_get_y();

global.screen.cursor_x = floor((_rawcursor_x - render_offset[0]) / global.screen.scale);
global.screen.cursor_x = clamp(global.screen.cursor_x, 0, global.screen.width-1);

global.screen.cursor_y = floor((_rawcursor_y - render_offset[1]) / global.screen.scale);
global.screen.cursor_y = clamp(global.screen.cursor_y, 0, global.screen.height-1);

