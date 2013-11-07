class RankingCalculator
  
  def self.calculate_ranking(movie, criteria)
    case criteria
    when 'visits'
      (movie.visits / 10) + 1
    when 'comments'
      (movie.comments.length / 10) + 1
    when 'words'
      (count_words(movie) / 10) +1
    else
      puts "Give me a criteria:"
    end
  end

  private
    def self.count_words(movie)
      word_count = 0
      movie.comments.each { |comment| word_count += comment.split(' ').size }
      word_count
    end
end