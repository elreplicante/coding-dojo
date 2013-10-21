require "student"

describe Student do
  describe "when student number is divisible by 3" do
  	student = Student.new(3)
  	it "should be Fizz" do
  	  expect(student.isFizz?).to be_true
  	end
  end
end