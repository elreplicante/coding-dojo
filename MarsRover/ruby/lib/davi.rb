class Davi
  def capital
    puts "Karaz-a-Karak"
  end

  alias_method :orig_capital, :capital

  def capital
    puts "Karaz-a-Karak rebuild"
    orig_capital
  end

  capital
end