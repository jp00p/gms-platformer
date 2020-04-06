/// @description draw menu

draw_set_font(fnt_menu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i < menu_items; i++){
	var offset = 2;
	var text = menu[i];
	if(menu_cursor == i){
		text = string_insert("> ", text, 0);
		var col = c_white;
	} else {
		var col = c_gray;
	}
	
	var xx = menu_x;
	var yy = menu_y-(menu_itemheight*(i*1.5));
	
	draw_set_color(c_black);
	draw_text(xx-offset, yy, text);
	draw_text(xx+offset, yy, text);
	draw_text(xx, yy-offset, text);
	draw_text(xx, yy+offset, text);
	draw_set_color(col);
	draw_text(xx, yy, text);
	
}

draw_set_halign(fa_left);
