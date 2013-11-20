require 'spec_helper'

describe ConnectionDiagnostic do

  describe "Performing diagnostic" do
    before(:each) do
      @client = Client.new
      @diagnostic = ConnectionDiagnostic.new(@client)
    end
    
    it "disconnects the client" do
      @client.stub(:online_status) { true }
      expect(@client).to receive(:disconnect)
      @diagnostic.perform_diagnostic
    end

    it "tries to connect 3 times to the client" do
      @client.stub(:connect) { false }
      @client.stub(:connect).at_most(3).times.with('')
      expect { @diagnostic.perform_diagnostic }.to raise_error("Connection failed")
    end

    xit "sends a message to client" do
      @client.stub(:send) { 'AT#UD' }

    end
  end
end