shader_set(sh_color);

shader_set_uniform_f(uniform_color, 0, 0, 0);
draw_sprite_pos
(
	sprite_index, image_index, 
	x + 6, y + 6,  //Top left
	x + 21, y + 6, //Top rigth
	x + 15, y + 15, //Bottom rigth
	x + 0, y + 15, //Bottom left
	
	0.5
);

shader_reset();

draw_self();