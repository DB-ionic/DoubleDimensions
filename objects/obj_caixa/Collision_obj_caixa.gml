if(x < other.x){
	x = other.bbox_left + (x - bbox_right)
}
else if(x > other.x){
	x = other.bbox_right + (x - bbox_left)
}

 if(y > other.y){
		y = other.bbox_top + (y-bbox_bottom);
	}
else if(y < other.y){
		y = other.bbox_bottom + (y - bbox_top)
	}
	
	