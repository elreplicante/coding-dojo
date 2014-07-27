class Result

  def retrieve_shipping
    PackingSlip.new
  end

  def retrieve_royalty
    PackingSlip.new
  end

  def retrieve_email
    @mail
  end

  def archive(mail)
    @mail = mail
  end
  
end