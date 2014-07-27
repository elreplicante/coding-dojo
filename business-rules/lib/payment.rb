class Payment
  
  def initialize(product)
    @product = product
  end

  def generate_mail?
    return (@product.is_a? Membership) || (@product.is_a? Upgrade)
  end

  def who_to_notify
    @product.whose if (@product.is_a? Membership) 
  end

end