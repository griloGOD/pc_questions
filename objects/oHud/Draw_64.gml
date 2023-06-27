if(global.roomname != "Menu"){
	draw_set_font(ftHud1);
	draw_set_color(make_color_rgb(242, 240, 229));
	draw_text(1200,15,"Acertos: " + string(global.acertos));
	draw_text(1232,50, "Erros: " + string(global.erros));
	draw_text(1220,85, "Tempo: " + string(global.tempo_restante));
	draw_set_font(ftHud1)
	draw_text(15,15, string(global.pergunta));
	draw_set_font(-1);
	draw_set_color(-1);
}