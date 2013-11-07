require_relative './crewmember'

class Writer < CrewMember

    def initialize(movies = [])
    super
        @foreign_factor = 0
    end

end