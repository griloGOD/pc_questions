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
if (x < 0) {
    x = 0;
}
if (x + sprite_width > room_width) {
    x = room_width - sprite_width;
}

// Limites verticais
if (y < 0) {
    y = 0;
}
if (y + sprite_height > room_height) {
    y = room_height - sprite_height;
}
