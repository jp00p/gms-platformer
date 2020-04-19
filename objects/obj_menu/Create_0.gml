/// @description GUI/vars/menu setup
#macro SAVEFILE "save.sav"



gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 16;

menu_x = RES_W+200; // starts off screen
menu_y = RES_H - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 10; 
menu_font = fnt_menu;
menu_itemheight = font_get_size(menu_font);
menu_committed = -1;
menu_control = true;

menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_cursor = 2

menu_top = menu_y - ((menu_itemheight*1.5)*menu_items)