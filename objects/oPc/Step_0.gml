//verificando se está pausado
if(global.pause)exit;

if keyboard_check(vk_up) or keyboard_check(ord("W")){

	y-=spd
}

if keyboard_check(vk_down) or keyboard_check(ord("S")){

	y+=spd
}

if keyboard_check(vk_left) or keyboard_check(ord("A")){

	x-=spd
}

if keyboard_check(vk_right) or keyboard_check(ord("D")){

	x+=spd
}

// Limites horizontais

var half_width = sprite_width / 2; // Metade da largura do sprite do personagem
var half_height = sprite_height / 2; // Metade da altura do sprite do personagem

if (x - half_width < 0) {
    x = half_width;
}
if (x + half_width > room_width) {
    x = room_width - half_width;
}

// Limites verticais
if (y - half_height < 0) {
    y = half_height;
}
if (y + half_height > room_height) {
    y = room_height - half_height;
}

//Tempo da sala
if (!global.pause){
	
	if (global.tempo>0){
		global.tempo=global.tempo-delta_time/1000000;
	}else global.tempo=0{
		global.tempo_restante = ceil(global.tempo);
	}
	if (global.tempo_restante =0){
		global.erros+=1;
		room_goto_next();
	}
}

//Coletando os Itens

if(global.roomname == "Room1"){
	global.pergunta="Item responsável por guardar \ntemporariamente toda a informação \nque o computador precisa:";
	if (ram==1){
		global.acertos+=1;
		room_goto_next()
	}else if (item_errado==1){
		global.erros+=1;
		room_goto_next()
	}
}else if(global.roomname == "Room2"){
	if (ram==1){
		global.erros+=1;
		room_goto_next()
	}else if (item_errado==1){
		global.acertos+=1;
		room_goto_next()
	}
}
