gui_width = display_get_gui_width();
gui_heigt = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width;//+200
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fon_menu;
menu_commited = -1;
menu_control = true;

menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit"; //minute 11:30
