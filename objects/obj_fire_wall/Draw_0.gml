draw_self();
//draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red,c_red,c_red,c_red,false);
//draw_rectangle_colour(x,y,x+sprite_width,y+sprite_height,c_lime,c_lime,c_lime,c_lime,false);

if(flash > 0){
	flash--;
	shader_set(shd_white);
	draw_self();
	shader_reset();
}