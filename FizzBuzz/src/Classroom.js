function Classroom(size) {
	if (size === null) {
		size = 0;
	}
	this.students = new Array();
	for (var i = 0; i < size; i++) {
		this.students[i] = new Student(i);
	}
}

Classroom.prototype.sayNumber = function(number) {
	if (this.students[number].isFizz()) {
		return 'Fizz';
	}
	
};
