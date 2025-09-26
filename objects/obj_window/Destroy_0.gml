//Destroy windows
var _indx = array_get_index(global.windows, id);
array_delete(global.windows, _indx, 1);

//Destriy buttons
instance_destroy(buttons[0]);
instance_destroy(buttons[1]);
instance_destroy(proc_inst);

//Destroy surfaces
if(surface_exists(surface))
	surface_free(surface);

if(surface_exists(destroy_surface))
	surface_free(destroy_surface);