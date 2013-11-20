class Movie

  attr_accessor :id, :length, :title, :year, :popularity

  def initialize(id, length, title, year, popularity)
    @id = id
    @length = length
    @title = title
    @year = year
    @popularity = popularity
  end
end