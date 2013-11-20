class MovieList
  attr_accessor :filtered_movies
  def initialize
    @movies = []
    @filtered_movies = []
  end

  def add_movie(*movies)
    @movies << movies
    @movies.flatten!
  end

  def order_movies()
    @movies.each_index do |i|
      (@movies.length - i - 1).times do |job|
        if @movies[job].popularity > @movies[job + 1].popularity
          @movies[job], @movies[job + 1] = @movies[job + 1], @movies[job]
        end
      end
    end
  end

  def filter_movies(film_time = 120, delta = 12)
    @movies.reject! { |movie| ((movie.length - film_time).abs >= delta) } || @movies
  end

  def group_movies(film_time = 120, delta = 12)
    grouped_movies = {}
    # filter the movies that does not meet the passed requirements
    filtered_movies_for_groups = []
    @movies.each { |movie| if ((movie.length - film_time).abs < delta)then filtered_movies_for_groups << movie end }

  # we group the movies by year
    filtered_movies_for_groups.each do |movie|
      grouped_movies[movie.year] ||= []
      grouped_movies[movie.year] << movie
    end

    grouped_movies.each do |year, movies|
      movies.sort_by! { |movie| movie.popularity }
    end
    @movies = grouped_movies
  end

end