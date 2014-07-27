class Membership

  def initialize(member)
    @member = member
  end

  def is_active?
    true
  end
  
  def whose
    @member
  end

end