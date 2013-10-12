describe("Grid", function() {
	var grid;
	var minWidth;
	

	describe("when a grid is built with no arguments", function() {
	  
	  beforeEach(function() {
	  grid = new Grid();
	  minWidth = 10;
	  minHeight = 10;
	});

	  it("should have at least 10 cells width", function() {
	  	expect(grid.maxWidth).toEqual(minWidth);
	  });

	  it("should have at least 10 cells height", function() {
	  	expect(grid.maxHeight).toEqual(minHeight);
	  });
	});

	
});