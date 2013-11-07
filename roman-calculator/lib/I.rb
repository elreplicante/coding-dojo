class I

  def initialize(*next_I)
    if next_I then @next_I = next_I[0] end
  end

  def t_arabig
    if @next_I
      @next_I.t_arabig + arabig_value
    else
      arabig_value
    end
  end

  def arabig_value
    1
  end

end