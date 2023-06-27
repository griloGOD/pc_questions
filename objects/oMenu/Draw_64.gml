draw_set_font(ftMenu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

for(var i =0; i < op_max; i++)
{
	var w_gui = display_get_gui_width();
	var h_gui = display_get_gui_height();
	
	var	h_str = string_height("I");
	var w_str = string_width(menu_inicial[i]);
	
	if (index == i){
	
		draw_set_color(make_color_rgb(194, 211, 104));
	}else{
	
		draw_set_color(make_color_rgb(242, 240, 229));
	}
	
	draw_text_transformed(w_gui / 2, h_gui / 2.5 + h_str * i, menu_inicial[i], 1, 1, 0);
}

draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);