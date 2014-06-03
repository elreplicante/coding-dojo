class Student
     def initialize(number)
        @number = number
        #this is a comment
    end

    def isFizz?
        @number % 3 == 0 && 
        @number % 5 != 0 &&
        @number % 69 != 0
    end

    def isBuzz?
        @number % 5 == 0 && @number % 3 != 0
    end

    def isFizzBuzz?
        @number % 5 == 0 && @number % 3 == 0
    end

    def isDurex?
        @number % 69 == 0
    end
end
