class Movie

    attr_accessor :coolness_factor

    def initialize
        @coolness_factor = 0
    end

    def increase_coolness_factor(n)
        @coolness_factor += n
    end

end