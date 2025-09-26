if(!surface_exists(destroy_surface))
	exit;


//Get middle
var _midx = x + (surface_get_width(destroy_surface) / 2);
var _midy = y + (surface_get_height(destroy_surface) / 2);

//Get position
var _x = floor(lerp(_midx, x, destroy_scale));
var _y = floor(lerp(_midy, y, destroy_scale));


draw_surface_ext(destroy_surface, _x, _y, destroy_scale, destroy_scale, 0, c_white, destroy_scale);