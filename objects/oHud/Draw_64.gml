if(global.roomname != "Menu"){
	draw_set_font(ftHud1);
	draw_set_color(make_color_rgb(242, 240, 229));
	draw_text(1265,50,"Acertos: " + string(global.acertos));
	draw_text(1280,85, "Erros: " + string(global.erros));
	draw_set_font(ftMenu);
	draw_text(100,50, "Tempo: " + string(global.tempo_restante));
	//draw_set_font(ftHud1);
	//draw_text(500,100, string(global.pergunta));
	draw_set_font(-1);
	draw_set_color(-1);
}