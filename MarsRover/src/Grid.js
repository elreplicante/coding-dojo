function Grid (width, height) {
	for (var i = 0; i < width; i++) {
		for (var j = 0; i < height; i++) {
			this.cell[i][j] = false;
		}
	}
	if (isNaN(width)) {
		this.maxWidth = 10;
	} else {
		this.maxWidth = width;
	} 	

	if (isNaN(height)) {
		this.maxHeight = 10;
	} else {
		this.maxHeight = height;
	}
}
