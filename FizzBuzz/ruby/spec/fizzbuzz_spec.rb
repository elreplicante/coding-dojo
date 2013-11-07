require_relative "../lib/fizzbuzz"

fizzbuzz = FizzBuzz.new
describe "When a number" do

  it "is Fizz if is divisible by 3" do
    expect(fizzbuzz.check_number(3)).to eq "Fizz"
  end

  it "is Buzz if is divisible by 5" do
    expect(fizzbuzz.check_number(5)).to eq "Buzz"
  end

  it "is FizzBuzz if is divisible by 15" do
    expect(fizzbuzz.check_number(15)).to eq "FizzBuzz"
  end

  it "is Durex if is 69" do
    expect(fizzbuzz.check_number(69)).to eq "Durex"
  end
end