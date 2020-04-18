draw_self();

if(shield){
	draw_sprite_ext(spr_shield,-1,x,y,1.5,1.5,shield_rotate,c_white,0.5);
}

if(flash > 0){
	shader_set(shd_white);
	draw_self();
	shader_reset();
	flash--;
}