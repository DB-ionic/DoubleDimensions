if(other.pode_teleportar){
var dados = {
    tipo: other.object_index,
	 cx: other.x,
	cy: other.y,
    portal_id: portal_id,
	verde : other.sou_verde
};

array_push(global.caixas_transferidas, dados);

instance_destroy(other);}