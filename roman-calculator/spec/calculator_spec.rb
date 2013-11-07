require_relative "../lib/calculator"

describe "When adding" do
  context "I + I" do
    it "should be II" do
      expect(Calculator.add('I', 'I'))
    end
  end
end