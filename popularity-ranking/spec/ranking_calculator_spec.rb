require_relative "../lib/movie"
require_relative "../lib/ranking_calculator"

describe "When calculating ranking based on visits" do
  
  before(:each) do
    @movie = Movie.new
  end

  it "is 1 if the number of visits is between 0 and 9" do
    5.times { @movie.visit_page()  }
    expect(RankingCalculator.calculate_ranking(@movie, 'visits')).to eq 1
  end

  it "is 2 if the number if visits is between 10 and 19" do
    15.times { @movie.visit_page }
    expect(RankingCalculator.calculate_ranking(@movie,'visits')).to eq 2
  end

  it "is 2 if the number if visits is between 10 and 19" do
    218.times { @movie.visit_page }
    expect(RankingCalculator.calculate_ranking(@movie,'visits')).to eq 22
  end
end

describe "When calculating rating based on comments" do

  before(:each) do
    @movie = Movie.new
  end

  it "is 5 if comments count is 48" do
    48.times { @movie.add_comment("This is a comment") }
    expect(RankingCalculator.calculate_ranking(@movie,'comments')).to eq 5
  end

  it "is 1 if comments count is 0" do
    0.times { @movie.add_comment("This is a comment") }
    expect(RankingCalculator.calculate_ranking(@movie,'comments')).to eq 1
  end

  it "is 3 if comments count is 23" do
    23.times { @movie.add_comment("This is a comment") }
    expect(RankingCalculator.calculate_ranking(@movie,'comments')).to eq 3
  end
end

describe "when calculating ranking based on number of words in comments" do
 
  before(:each) do
    @movie = Movie.new
  end

  it "is 1 when the movie has no comments" do
    expect(RankingCalculator.calculate_ranking(@movie,'words')).to eq 1
  end

  it "is 2 when the movie has a 12 words comment" do
    @movie.add_comment("a b s f g e r t o 0 p i")
    expect(RankingCalculator.calculate_ranking(@movie,'words')).to eq 2
  end

  it "is 13 when the movie has a 120 words comment" do
    10.times { @movie.add_comment("a b s f g e r t o 0 p i") }
    expect(RankingCalculator.calculate_ranking(@movie,'words')).to eq 13
  end

end
