require 'pry_debug'
require 'movie'
require 'movie_list'

describe MovieList  do
  
  before(:each) do
    gigi = Movie.new(54, 124, "Gigi", "1958", 50)
    movie = Movie.new(29, 125, "", "1983", 1)
    long_movie = Movie.new(10, 290, "Blade Runner", "1982", 100 )
    @movie_list = MovieList.new
    @movie_list.add_movie(gigi, movie, long_movie)
  end
  
  it 'should filter the movies' do
    filtered_movies = @movie_list.filter_movies(120, 12)
    expect(filtered_movies.length).to be 2
    expect(filtered_movies.first.id).to be 54
  end    
  

  it 'should order the movies' do
    ordered_movies = @movie_list.order_movies()
    expect(ordered_movies.first.popularity).to be < ordered_movies.last.popularity
  end

  it 'should group the movies' do
    grouped_movies = @movie_list.group_movies
    expect(grouped_movies.keys).to match_array(["1958", "1983"])
  end
end


