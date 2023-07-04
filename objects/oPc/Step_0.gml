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
		if(global.roomname != "Room5"){
			global.erros+=1;
			room_goto_next();
			audio_play_sound(sdErrado,1,0);
		}else if(global.roomname == "Room5"){
			if(ram<=4){
				global.erros+=1;
				audio_play_sound(sdErrado,1,0);
				room_goto_next();
			}else {		
				global.acertos+=1;
				audio_play_sound(sdCerto,1,0);
				room_goto_next();
			}
		}else if(global.roomname == "Room4"){
			if(global.periferico>=2){
				global.acertos+=1;
				audio_play_sound(sdCerto,1,0);
				room_goto_next();
			}else{
				global.erros+=1;
				audio_play_sound(sdErrado,1,0);
				room_goto_next();
			}
		}else if(global.roomname == "Room7"){
			if(global.componente==2){
				global.acertos+=1;
				audio_play_sound(sdCerto,1,0);
				room_goto_next();
			}else{
				global.erros+=1;
				audio_play_sound(sdErrado,1,0);
				room_goto_next();
			}
		}else if(global.roomname == "Room10"){
			global.erros+=1;
			audio_play_sound(sdErrado,1,0);
			room_goto_next();
		}
	}
}

//Coletando os Itens

if(global.roomname == "Room1"){
	if (processador==1){
		audio_play_sound(sdCerto,1,0);
		global.acertos+=1;
		room_goto_next()
	}else if (monitor==1 || ram==1){
		audio_play_sound(sdErrado,1,0);
		global.erros+=1;
		room_goto_next()
	}
}else if(global.roomname == "Room2"){
	if (ram==1){
		audio_play_sound(sdCerto,1,0);
		global.acertos+=1;
		room_goto_next()
	}else if (hd==1 || mouse==1){
		audio_play_sound(sdErrado,1,0);
		global.erros+=1;
		room_goto_next()
	}
}else if(global.roomname == "Room3"){
	if (hd==1){
		audio_play_sound(sdCerto,1,0);
		global.acertos+=1;
		room_goto_next()
	}else if (ram==1 || teclado==1){
		audio_play_sound(sdErrado,1,0);
		global.erros+=1;
		room_goto_next()
	}

}else if(global.roomname == "Room4"){
	global.periferico=mouse+monitor+teclado;
	global.componente=ram+hd+processador;
	if(global.periferico==3){
		global.acertos+=1;
		audio_play_sound(sdCerto,1,0);
		room_goto_next();
	}else if(global.componente==2){
		audio_play_sound(sdErrado,1,0);
		global.erros+=1;
		room_goto_next()
	}
}else if(global.roomname == "Room5"){
	global.ramtotal=ram*4;
	if(ram==12){
		global.acertos+=1;
		audio_play_sound(sdCerto,1,0);
		room_goto_next();
	}
}else if(global.roomname == "Room6"){
	if (monitor==1){
		audio_play_sound(sdCerto,1,0);
		global.acertos+=1;
		room_goto_next()
	}else if (mouse==1 || teclado==1){
		audio_play_sound(sdErrado,1,0);
		global.erros+=1;
		room_goto_next()
	}
}else if(global.roomname == "Room7"){
	global.periferico=mouse+monitor+teclado+hd;
	global.componente=ram+processador;
	if(global.componente==2){
		global.acertos+=1;
		audio_play_sound(sdCerto,1,0);
		room_goto_next();
	}else if(global.periferico==2){
		audio_play_sound(sdErrado,1,0);
		global.erros+=1;
		room_goto_next()
	}
}else if(global.roomname == "Room8"){
	if (hd==1){
		audio_play_sound(sdCerto,1,0);
		global.acertos+=1;
		room_goto_next()
	}else if (monitor==1 || teclado==1 || processador==1 || ram==1){
		audio_play_sound(sdErrado,1,0);
		global.erros+=1;
		room_goto_next()
	}
}else if(global.roomname == "Room9"){
	if (processador==1){
		audio_play_sound(sdCerto,1,0);
		global.acertos+=1;
		room_goto_next()
	}else if (teclado==1 || ram==1){
		audio_play_sound(sdErrado,1,0);
		global.erros+=1;
		room_goto_next()
	}
}else if(global.roomname == "Room10"){
	if (hd==1){
		audio_play_sound(sdCerto,1,0);
		global.acertos+=1;
		room_goto_next()
	}
}
