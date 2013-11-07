class Comment

  def initialize(text = "")
    @text = text
    @spam = check_spam(text)    
  end

  def spam?
    @spam
  end

  private
  
  def check_spam(text)
    words = text.split(' ')
    words.count { |word| word.include? ('http://') } >= 2
  end
end