require 'rspec-expectations'
require_relative "../lib/movie"
require_relative "../lib/comment"

describe "When showing comments" do
  comment = Comment.new("Hola ke ase")
  spam_comment = Comment.new("http://www.google.com http://")
  
  it "doesn't shows comments marked as spam" do
    movie = Movie.new
    movie.add_comment(comment, spam_comment)
    expect(movie.show_comments).should_not include(spam_comment)
  end

  it "shows comments when there are only comments not marked as spam" do
    movie = Movie.new
    movie.add_comment(comment)
    expect(movie.show_comments).to include(comment)
  end
end