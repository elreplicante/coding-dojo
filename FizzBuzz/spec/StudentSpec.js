describe("Student", function(){
	var student;
	var number;

	beforeEach(function(){
		student = new Student();
	});

	describe("when number is divisible by 3", function(){
		beforeEach(function(){
			number = 3;
		});

		it("should be Fizz", function() {
			expect(student.isFizz(number)).toEqual(true);
		});

	});
});