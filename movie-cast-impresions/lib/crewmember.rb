class CrewMember

    def initialize(movies = [])
        @movies = movies
        @own_factor = 1
        @foreign_factor = 2
    end

    def add_movie(movie)
        @movies << movie
    end

    def vote_movie(movie)
        if @movies.include? movie
            movie.increase_coolness_factor(@own_factor) 
        else
            movie.increase_coolness_factor(@foreign_factor)
        end
    end
end