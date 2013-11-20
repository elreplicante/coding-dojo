require 'spec_helper'

describe Alarm do
  @sensor = Sensor.new

  describe "with a temperature betwwen 0 and 60" do  
    it "should be off" do
      @sensor.stub(:get_value) { 50 }
      @alarm = Alarm.new(@sensor)
      expect(@alarm.detect_temperature()).to eq false
    end
  end

  describe "with a temperature betwwen 0 and 60" do
    it "should be off" do
      @sensor.stub(:get_value) { 100 }
      @alarm = Alarm.new(@sensor)
      expect(@alarm.detect_temperature()).to be_truthy
    end
  end
end