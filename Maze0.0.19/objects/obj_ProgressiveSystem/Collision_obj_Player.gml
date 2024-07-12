if(instance_exists(obj_dialog)) exit;
var _inst = instance_create_layer(x, y, layer, obj_dialog);
switch(trigger) {
		case 0:
	with(_inst)
	    {
	    text[0] = "Estou faminto..";
	    text[1] = "E com a visao turva";
	    text_last = 1;
	    text_width = 300;
	    text_x = x;
	    text_y = y;
	    text[text_current] = string_wrap(text[text_current], text_width);
	    }
	break;
		case 1:
	with(_inst)
	    {
	    text[0] = "Dois lados..";
		text[1] = "Tao escuros..";
	    text_last = 1;
	    text_width = 300;
	    text_x = x;
	    text_y = y;
	    text[text_current] = string_wrap(text[text_current], text_width);
	    }
	break;
		case 2:
	with(_inst)
	    {
	    text[0] = "Uma porta de metal.. meio aberta";
	    text_last = 1;
	    text_width = 300;
	    text_x = x;
	    text_y = y;
	    text[text_current] = string_wrap(text[text_current], text_width);
	    }
	break;
		case 3:
	with(_inst)
	    {
	    text[0] = "Pra que tantas caixas..?";
	    text_last = 1;
	    text_width = 300;
	    text_x = x;
	    text_y = y;
	    text[text_current] = string_wrap(text[text_current], text_width);
	    }
	break;
		case 4:
	with(_inst)
	    {
	    text[0] = "Nao estou faminto a esse ponto..";
	    text_last = 1;
	    text_width = 300;
	    text_x = x;
	    text_y = y;
	    text[text_current] = string_wrap(text[text_current], text_width);
	    }
	break;

}

instance_destroy();