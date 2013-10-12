function Classroom(size) {
	this.students = new Array();
	for (var i = 0; i < size; i++) {
		this.students[i] = new Student(i);
	}
}
