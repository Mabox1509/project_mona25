//[SINGLE]
if(!instance_exists(global.screen_instance))
{
	global.screen_instance = id;
}
else
{
	instance_destroy(id);
	exit;
}

//[VARIABLES]
window_size = [ window_get_width(), window_get_height()];
render_offset = [0, 0];

event_user(0);


//[INIT]
application_surface_draw_enable(false);