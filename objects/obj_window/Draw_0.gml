//Draw application
if(!surface_exists(surface))
{
	var _w = func_getw();
	var _h = func_geth();
	
	surface = surface_create(_w, _h);
}
surface_set_target(surface);
draw_clear(c_black);

event_user(2);
surface_reset_target();

//Draw destroy
if(is_destroying)
{
	//Get pos
	var _aux = x;
	var _auy = y;
	
	x = 0;
	y = 0;
	
	//Draw surface
	if(!surface_exists(destroy_surface))
		destroy_surface = surface_create(16 * image_xscale, 24 * image_yscale);
	
	surface_set_target(destroy_surface);
	draw_clear_alpha(c_black, 0);
	
	event_user(0);
	
	surface_reset_target();
	
	
	//Reset
	x = _aux;
	y = _auy;
}
