if(x < other.x){
	x = other.bbox_left + (x - bbox_right)
}
else if(x > other.x){
	x = other.bbox_right + (x - bbox_left)
}

