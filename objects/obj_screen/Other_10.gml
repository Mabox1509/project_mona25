//[GET VIRTUAL SIZE]
global.screen.scale = min
(
	floor(window_size[0] / RESOLUTION),
	floor(window_size[1] / RESOLUTION)
);

global.screen.width = floor(window_size[0] / global.screen.scale);
global.screen.height = floor(window_size[1] / global.screen.scale);

render_offset[0] = floor((window_size[0] - (global.screen.width * global.screen.scale)) / 2);
render_offset[1] = floor((window_size[1] - (global.screen.height * global.screen.scale)) / 2);


//show_message(global.screen);

//[RESIZE VIEW & RENDER]
camera_set_view_size(view_camera[0], global.screen.width, global.screen.height);
surface_resize(application_surface, global.screen.width, global.screen.height);