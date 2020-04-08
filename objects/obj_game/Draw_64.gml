///@desc draw the score
if((room != room_intro) && (instance_exists(obj_player)) && global.kills > 0 ){
	kill_textscale = max(kill_textscale * 0.95, 1);
	DrawSetText(c_black,fnt_menu,fa_right,fa_top);
	// shadow
	draw_text_transformed(RES_W-8,12,string(global.kills)+" Points",kill_textscale,kill_textscale,0);
	draw_set_color(c_white);
	// actual text
	draw_text_transformed(RES_W-10,10,string(global.kills)+" Points",kill_textscale,kill_textscale,0);
}