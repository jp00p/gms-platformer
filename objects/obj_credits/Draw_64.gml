// draw letterboxes
draw_set_color(c_black);
draw_rectangle(0, 0, RES_W, lbox_h, false);
draw_rectangle(0, RES_H-lbox_h, RES_W, RES_H, false);
DrawSetText(c_black, fnt_menu, fa_center, fa_top);
draw_text(RES_W*0.5+2, RES_H*0.3+2, text);
draw_set_color(c_white);
draw_text(RES_W*0.5, RES_H*0.3, text);