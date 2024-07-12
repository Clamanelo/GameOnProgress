
var window_x = window_get_width();
var window_y = window_get_height();

var _len = string_length(text[text_current]);
if (char_current < _len)
    {
    char_current += char_speed;
	if(timePerSound<=0){
		audio_play_sound(SoundKeyboardType,1,0); 
		timePerSound=5;
		}else timePerSound--;
    }else if(alpha==1){
		timerPerText--;
		if(timerPerText<=0)changeText=false;
	}

	draw_set_font(font_little);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_colour(c_white);
	draw_set_alpha(alpha);
	//draw_text_transformed_colour(window_x/2, window_y/2, dialog, 1, 1, image_angle, c_red, c_red, c_yellow, c_yellow, alpha);
	var _str = string_copy(text[text_current], 1, char_current);
	if(color==noone)
	draw_text_colour((window_x/2)-150, window_y/2,  _str,c_yellow,c_yellow,c_white,c_white,alpha);
	else draw_text_colour((window_x/2)-150, window_y/2,  _str,color,color,color,color,alpha);
//draw_set_halign(fa_left);