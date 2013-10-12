describe("Grid", function() {
	var grid;
	
	describe("when a grid is built with no arguments", function() {
	  
	  beforeEach(function() {
	  grid = new Grid();
	});

	  it("should have at least 10 cells width", function() {
	  	var minWidth = 10;
	  	expect(grid.maxWidth).toEqual(minWidth);
	  });

	  it("should have at least 10 cells height", function() {
	  	var minHeight = 10;
	  	expect(grid.maxHeight).toEqual(minHeight);
	  });
	});
});