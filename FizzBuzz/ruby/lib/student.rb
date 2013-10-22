class Student
	def initialize(number)
		@number = number
	end
	
	def isFizz?
		@number % 3 == 0 && @number % 5 != 0
	end

	def isBuzz?
		@number % 5 == 0 && @number % 3 != 0
	end

	def isFizzBuzz?
		@number % 3 == 0 && @number % 5 == 0
	end
end