velh = 0
velv = 0
max_vel = 2
max_pulo = 3
grav = .2
colisoes = [obj_chao,obj_caixa]
global.xstartplayer = x;
global.ystartplayer = y;
toquei_caminhada = true
toquei = false

movimento2 = function(){
	var _col = instance_place(x + velh,y,colisoes)
	if(_col){
	if(velh > 0){
		x = _col.bbox_left + (x-bbox_right);
	}
	if(velh<0){
		x = _col.bbox_right + (x - bbox_left)
	}
	velh = 0
}
x+=velh
x = round(x)
	var _coly = instance_place(x ,y + velv,colisoes)
	
		if(_coly){
	if(velv > 0){
		y = _coly.bbox_top + (y-bbox_bottom);
	}
	if(velv<0){
		y = _coly.bbox_bottom + (y - bbox_top)
	}
	velv = 0
}
y +=velv
y = round(y)
}
enum states{parado,movendo,empurrando,diminuindo,aumentando}

estado = states.movendo;




pega_input = function(){



right = keyboard_check(ord("D"))
left = keyboard_check(ord("A"))
pulo = keyboard_check_pressed(vk_space)
empurra = keyboard_check_pressed(ord("E"))

chao = place_meeting(x,y+1,obj_chao) or place_meeting(x,y+1,obj_caixa)






}
