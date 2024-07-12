// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Grade(xoff_,yoff_,width_,height_,coluns_,lines_,space_between_,depth_,object_, color = 255){
	for(var i=0;i<coluns_;i++) {
		for(var j=0;j<lines_;j++) {
		
			var _cur_grid_x = xoff_ + (i * (width_ + space_between_));
			var _cur_grid_y = yoff_ + (j * (height_ + space_between_));
		
			with(instance_create_depth(_cur_grid_x,_cur_grid_y,depth_,object_)) {
				
			}
		}
	}
	
}