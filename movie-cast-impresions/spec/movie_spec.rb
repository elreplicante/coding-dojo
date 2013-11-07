require_relative '../lib/movie'
require_relative '../lib/director'
require_relative '../lib/crewmember'
require_relative '../lib/writer'


describe "the coolness of a movie" do

    before(:each) do
        @movie = Movie.new
    end

    it "is increased by 1" do
        @movie.increase_coolness_factor(1)
        expect(@movie.coolness_factor).to eq 1
    end
end

describe "When a movie is voted by someone in the crew" do

    before(:each) do
        @movie = Movie.new
    end

    it "increases by 2 if is the Director vote" do
      @director = Director.new
      @director.add_movie(@movie)
      @director.vote_movie(@movie)
      expect(@movie.coolness_factor).to eq 2
    end

    it "increases by 1 if the person who votes is not Director" do
        @other = CrewMember.new
        @other.add_movie(@movie)
        @other.vote_movie(@movie)
        expect(@movie.coolness_factor).to eq 1
    end
end

describe "When a movie is voted by someone NOT in the crew" do

    before(:each) do
        @movie = Movie.new
    end

    it "increases by 0 if is the Writer's vote" do
      @writer = Writer.new
      @writer.vote_movie(@movie)
      expect(@movie.coolness_factor).to eq 0
    end

    it "increases by 2 if the person who votes is not Writer" do
        @other = CrewMember.new
        @other.vote_movie(@movie)
        expect(@movie.coolness_factor).to eq 2
    end
end