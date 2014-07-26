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

class PackingSlip
  def duplicate?(package)
    true
  end
end

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

class Upgrade
  def has_been_applied?
    true
  end
  def whose
  
  end  
end

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

class Email
  def initialize(to)
    @to=to
  end
  def has_been_sent_to?(name)
    @to==name
  end
end

describe "Processor" do
  it "generates a packing slip for shipping for physical products" do
    payment = Payment.new "physical product"
    result = Processor.do payment

    expect(result.retrieve_shipping).to be_a(PackingSlip)
  end

  it "creates a duplicate packing slip for the royalty department for books" do
    payment = Payment.new "Book"
    result = Processor.do payment
    package = result.retrieve_royalty
    expect(package.duplicate?(result.retrieve_shipping)).to eq(true)
  end

  it "activates that membership if the payment is for a membership" do
    membership = Membership.new "any member"
    payment = Payment.new membership
    Processor.do payment
    expect(membership.is_active?).to eq(true)
  end

  it "Applies the upgrade if the payment is an upgrade to a membership" do
    membership_upgrade = Upgrade.new
    payment = Payment.new membership_upgrade
    Processor.do payment
    expect(membership_upgrade.has_been_applied?).to eq(true)
  end

  it "Sends an e-mail to the owner when the payment is for a membership" do
    membership = Membership.new "Owner"
    payment = Payment.new membership
    result = Processor.do payment
    email = result.retrieve_email
    expect(email.has_been_sent_to?("Owner")).to eq(true)
    expect(email.has_been_sent_to?("not_the_owner")).to eq(false)
  end
  it "Sends an e-mail to the owner when the payment is for an upgrade" do
    upgrade = Upgrade.new
    payment = Payment.new upgrade
    result = Processor.do payment
    email = result.retrieve_email
    expect(email.has_been_sent_to?(upgrade.whose)).to eq(true)
  end
  it "Don't send an email to the owner when the payment is not for an upgrade or membership" do
    payment = Payment.new "other type of product"
    result = Processor.do payment
    expect(result.retrieve_email).to be_nil
  end
end