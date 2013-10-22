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

  	it "should say 'Fizz' when asked for number" do
  	  expect(student.say_number).to eq 'Fizz'
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

  	it "should say 'Buzz' when asked for number" do
  	  expect(student.say_number).to eq 'Buzz'
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

  	it "should say 'FizzBuzz' when asked for a number" do
  	  expect(student.say_number).to eq 'FizzBuzz'
  	end
  end

  describe "when student number is not divisible by 3 or 5" do
  	student = Student.new(2)
    it "should say the number" do
      expect(student.say_number).to eq 2
    end
  end
end