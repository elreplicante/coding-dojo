require "student"

describe Student do

  describe "when student number is divisible by 3" do
  	student = Student.new(3)

  	it "should be Fizz" do
  	  expect(student.isFizz?).to be_true
  	end

  	it "should not be Buzz" do
  	  expect(student.isBuzz?).to be_false
  	end

  	it "should not be FizzBuzz" do
  	  expect(student.isFizzBuzz?).to be_false
  	end
  end

  describe "when student number is divisible by 5" do
    student = Student.new(5)

  	it "should not be Fizz" do
  	  expect(student.isFizz?).to be_false
  	end

  	it "should be Buzz" do
  	  expect(student.isBuzz?).to be_true
  	end

  	it "should not be FizzBuzz" do
  	  expect(student.isFizzBuzz?).to be_false
  	end
  end

  describe "when student number is divisible by 3 and 5" do
    student = Student.new(15)

  	it "should not be Fizz" do
  	  expect(student.isFizz?).to be_false
  	end

  	it "should be Buzz" do
  	  expect(student.isBuzz?).to be_false
  	end

  	it "should not be FizzBuzz" do
  	  expect(student.isFizzBuzz?).to be_true
  	end
  end
end