require "student"
require "teacher"

describe Teacher do
	teacher = Teacher.new
	describe "when a teacher asks a student for his number" do
	  it "should say 'Fizz' if is Fizz number" do
	  	student = Student.new(3)
	    teacher.ask_for_number(student).should eq 'Fizz'
	  end

	  it "should say 'Buzz' if is Buzz number" do
	    student = Student.new(5)
	    teacher.ask_for_number(student).should eq 'Buzz'
	  end

	  it "should say 'FizzBuzz' if is FizzBuzz number" do
	    student = Student.new(15)
	    teacher.ask_for_number(student).should eq 'FizzBuzz'
	  end

	  it "should say the number otherwise" do
	    student = Student.new(2)
	    teacher.ask_for_number(student).should eq 2
	  end
	end
  
end