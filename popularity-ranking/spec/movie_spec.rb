require_relative "../lib/movie"

describe "When a movie page is visited" do
  movie = Movie.new

  it "increments its visit counter" do
    movie.visit_page()
    expect(movie.visits).to eq 1
  end

end





