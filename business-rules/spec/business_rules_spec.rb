require_relative '../lib/processor'
require_relative '../lib/payment'
require_relative '../lib/email'
require_relative '../lib/packing_slip'
require_relative '../lib/membership'
require_relative '../lib/upgrade'
require_relative '../lib/result'


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