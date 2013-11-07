require_relative './crewmember'

class Director < CrewMember

    def initialize(movies = [])
    super
        @own_factor = 2
    end

end