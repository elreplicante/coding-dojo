class I

  def initialize(*next_I)

    if next_I then @next_I = next_I[0] end
  end

def get_next_I
  @next_I
end

  def t_arabig
    if @next_I
      @next_I.arabig_value + arabig_value
    else
      arabig_value
    end
  end

  def arabig_value
    1
  end
end