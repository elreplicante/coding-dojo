describe("Classroom", function() {
  var classroom;

  beforeEach(function() {
    classroom = new Classroom(100);
  });

  describe("when a classroom is built", function() {
    it("should have the right number of students", function() {
  	expect(classroom.students.length).toEqual(100);
  	});
  });
});