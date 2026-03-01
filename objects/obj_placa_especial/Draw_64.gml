


if(ativo and !instance_exists(obj_transicao_efeito) and apareco){
    var xx = display_get_gui_width() / 2;
    var yy = display_get_gui_height() / 3;

    draw_set_halign(fa_center); 
    draw_set_valign(fa_middle); 
draw_set_font(fnt_placa);



	draw_set_color(c_black)
    draw_text_ext(xx+2, yy+2, texto_atual, -1, display_get_gui_width()*.8);
	 draw_text_ext(xx-1, yy-1, texto_atual, -1, display_get_gui_width()*.8);
		draw_set_color(c_white)
    draw_text_ext(xx, yy, texto_atual, -1, display_get_gui_width()*.8);
	    draw_set_halign(-1); 
    draw_set_valign(-1); 
	draw_set_font(-1);
}
