//if(keyboard_check(vk_anykey)&&keyboard_key!=vk_f1)moved=true;
if(moved==true) {
	if(keyboard_check_pressed(vk_enter)){
		char_current=0;
		if(text_current<array_length(text)-1)text_current+=1; else instance_destroy();
		changeText=true;
		timerPerText=100;
	}
	if(changeText=true){
		alpha=lerp(alpha,1,.1);
	}else{
			if(timerPerText<=0)&&(text_current<array_length(text)-1){
				text_current+=1;
				char_current = 0;
				timerPerText=100;
				changeText=true;
			}
	}
	
	text[text_current] = string_wrap(text[text_current], text_width);
}else{
	alpha=0;
	changeText=false;
	char_current = 0;
}
if(text_current==array_length(text)-1){
	if(timerPerText<=0)alpha=lerp(alpha,0,.05);
	if(alpha==0)instance_destroy();
}