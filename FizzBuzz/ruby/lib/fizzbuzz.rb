
class FizzBuzz
  

  def initialize
    @is_durex = ->(number) { number == 69 }

    @is_fizzbuzz = ->(number) { number % 3 == 0 && number % 5 == 0 }
    @is_fizz = ->(number) { number % 3 == 0 }
    @is_buzz = ->(number) { number % 5 == 0 }

    @lambdas =  [ 
      [@is_durex, "Durex"],
      [@is_fizzbuzz, "FizzBuzz"],
      [@is_fizz, "Fizz"],
      [@is_buzz, "Buzz"]
       ]              
  end

  def check_number(number)
      @lambdas.each { |pair| if pair[0].call(number) then return pair[1] end}
       
    end
end

