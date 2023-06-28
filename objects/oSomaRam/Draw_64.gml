if(global.roomname == "Room5"){
	draw_set_font(ftMenu);
	draw_set_color(make_color_rgb(242, 240, 229));
		draw_text(150,100, "Ram total: " + string(global.ramtotal) + "Gb");

	draw_set_font(-1);
	draw_set_color(-1);
}