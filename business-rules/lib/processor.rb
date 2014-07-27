class Processor

  def self.do payment
    result = Result.new
    result.archive send_mail(payment) if payment.generate_mail?
    result
  end

  private
  
  def self.send_mail(payment)
    Email.new payment.who_to_notify
  end

end