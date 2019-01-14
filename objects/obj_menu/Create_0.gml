
#macro SAVEFILE "Save.sav"

gui_width = display_get_gui_width() - 30;
gui_heigth = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width + 200
menu_y = gui_heigth - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fon_menu;
menu_itemheight = font_get_size(fon_menu);
menu_commited = -1;
menu_control = true;

menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit"; 

menu_items = array_length_1d(menu);
menu_cursor = 2;