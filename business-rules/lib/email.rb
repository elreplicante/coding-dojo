class Email

  def initialize(to)
    @to = to
  end
  
  def has_been_sent_to?(name)
    @to == name
  end

end