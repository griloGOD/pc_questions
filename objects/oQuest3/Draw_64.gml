/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


draw_set_font(ftQuests);


dist_menu = 60;

var gui_largura = display_get_gui_width();
var gui_altura  = display_get_gui_height();

var x1 = gui_largura/2;
var y1 = gui_altura/2.5;


//percorrendo o vetor 
for( var i=0; i<op_max;i++){

  draw_set_halign(fa_center); //alinhamento texto horizontal
  draw_set_valign(fa_center); //alinhamento texto vertical
  
  draw_set_color(c_white);
  
  if(i == op_max-1){
	  
	draw_text(x1,y1 +(dist_menu*i*1.5),quest[i])
  } else {
	  draw_text(x1,y1 +(dist_menu*i),quest[i]);
  }

  


}


draw_set_font(-1); //resetar a fonte 