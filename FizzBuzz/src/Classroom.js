function Classroom(size) {
	if (size === null) {
		size = 0;
	}
	this.students = new Array();
	for (var i = 0; i < size; i++) {
		this.students[i] = new Student(i);
	}
}