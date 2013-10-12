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


  describe("when a student is asked for his/her number", function() {

    it("should say 'Fizz' if is a Fizz number", function() {
      	expect(classroom.sayNumber(3)).toEqual('Fizz');
    });

    it("should say 'Buzz' if is a Buzz number", function() {
      	expect(classroom.sayNumber(5)).toEqual('Buzz');
    });

    it("should say 'FizzBuzz' if is a FizzBuzz number" , function() {
      	expect(classroom.sayNumber(15)).toEqual('FizzBuzz');
    });

    it("should say his/her number otherwise" , function() {
      	expect(classroom.sayNumber(2)).toEqual(2);
    });
  });

});