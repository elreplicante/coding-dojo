
require_relative "../lib/comment"

describe "Wnen a comment is posted" do
  spam_comment = "http://google.com and http://example.com"
  it "is marked as spam if has 2 links" do
    comment = Comment.new(spam_comment)
    expect(comment.spam?).to eq true
  end

  it "does not return spam if contains 2 words beginning with 'h'" do
    comment = Comment.new("http:/ http:/ http:/")
    expect(comment.spam?).to eq false
  end

  it "does not return spam if contains 1 word beginning with 'http://'" do
    comment = Comment.new("http://www.ironhack.com rules!")
    expect(comment.spam?).to eq false
  end
end