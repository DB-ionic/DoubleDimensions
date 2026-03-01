if(instance_exists(obj_player)){
var _trans = instance_create_depth(x,y,-99999,obj_transicao_efeito)


_trans.rm_destino = room_destino
_trans.x_dest_p = xplayer
_trans.y_dest_p = yplayer
_trans.sprite_index = sprite_transicao


global.xstartplayer = xplayer;
global.ystartplayer = yplayer;
}


