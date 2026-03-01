if(keyboard_check_pressed(ord("Q")) and !instance_exists(obj_transicao_efeito)){

var _trans = instance_create_depth(x,y,-99999,obj_transicao_efeito)


_trans.rm_destino = prox_room
_trans.x_dest_p = xplayer
_trans.y_dest_p = yplayer


global.shake += 10;

global.xstartplayer = xplayer;
global.ystartplayer = yplayer;


//room_goto(prox_room)
//if(instance_exists(obj_cria_caixas)){
//obj_cria_caixas.devo_criar_amarela = true
//obj_cria_caixas.devo_criar_verde = true
//}
//other.x = xplayer
//other.y = yplayer
//global.xstartplayer = xplayer;
//global.ystartplayer = yplayer;
}