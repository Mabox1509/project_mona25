//[DRAW WINDOW]
draw_sprite_ext(sprite_index, image_index, x+2, y+2, image_xscale, image_yscale, 0, c_black, 0.5);
draw_self();

draw_set_font(fnt_kenney);
draw_set_color(c_dkgray);

//draw_sprite(spr_proc_icon, proc_icon, x + 1, y+1);
draw_text(x + 3, y - 1, title);

with(buttons[0])
{
	event_user(0);
}
with(buttons[1])
{
	event_user(0);
}

//Draw surface
if(surface_exists(surface))
	draw_surface(surface, x+ 4, y + 12);