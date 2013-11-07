class Movie
  attr_accessor :visits, :comments

  def initialize
    @visits = 0
    @comments = []
  end

  def visit_page
    @visits += 1
  end

  def add_comment(comment)
    @comments << comment
  end
end

