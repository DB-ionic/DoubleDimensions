global.sala_padrao = false
for (var i = 0; i < array_length(global.estado_caixas_altenardas); i++)
{

    var info = global.estado_caixas_altenardas[i];
    
    var _caixa = instance_create_layer(
        info.x,
        info.y,
        "Caixas",
        obj_caixa
    );
	_caixa.sou_verde = info.verde
}




if (array_length(global.caixas_transferidas) > 0)
{
    for (var i = 0; i < array_length(global.caixas_transferidas); i++)
    {
        var info = global.caixas_transferidas[i];
        
        var portal_destino = instance_find(obj_portal, 0);
        
        // procura portal com mesmo id
		//embora o id seja completamente desnecessario no modelo atual
		//poderia ser util se eu criasse mais portais
        with (obj_portal)
        {
           // if (portal_id == info.portal_id)
           // {
               var _caixa = instance_create_layer(
			   info.cx,
			  info.cy,
		
			 "Caixas",
				obj_caixa
				);
			_caixa.sou_verde = info.verde
			_caixa.pode_teleportar = false
            //}
        }
    }
    
    global.caixas_transferidas = [];
}