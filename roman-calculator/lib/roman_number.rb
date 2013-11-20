class RomanNumber

  def initialize(*next_number)
    if next_number then @next_number = next_number[0] end
  end

  def t_arabig
    if @next_number
      @next_number.t_arabig + arabig_value
    else
      arabig_value
    end
  end

end