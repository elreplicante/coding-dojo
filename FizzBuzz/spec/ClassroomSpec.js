describe("Classroom", function() {
  var classroom;

  beforeEach(function() {
    classroom = new Classroom();
  });

  describe("should have 100 students", function() {
  	expect(classroom.getSize()).toEqual(100);
  });
});