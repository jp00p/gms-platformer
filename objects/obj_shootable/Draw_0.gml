draw_self();

if(flash > 0){
	flash--;
	shader_set(shd_white);
	draw_self();
	shader_reset();
}