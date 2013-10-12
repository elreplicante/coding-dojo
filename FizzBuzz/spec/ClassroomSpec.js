describe("Classroom", function() {
  var classroom;

  describe("when a classroom is built with no students", function() {

  	beforeEach(function() {
    	classroom = new Classroom();
  	});

    it("should have 0 students", function() {
      expect(classroom.students.length).toEqual(0);
    });
  });

  describe("when a classroom is built", function() {
 
    beforeEach(function() {
    	classroom = new Classroom(100);
  	});

    it("should have the right number of students", function() {
  		expect(classroom.students.length).toEqual(100);
  	});
  });

});