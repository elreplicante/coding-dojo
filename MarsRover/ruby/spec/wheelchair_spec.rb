require 'spec_helper'

describe "The Duchesse Wheelchair" do
  let(:chair) { Wheelchair.new }

  context "at its initial state" do
    it "starts from (0.0)" do
      expect(chair.report_position).to eq({ x: 0, y: 0 })
    end

    it 'faces north' do
      expect(chair.report_direction).to eq('N')
    end
  end

  context "receives commands to" do
    it "move forward" do
      chair.do(['f'])
      expect(chair.report_position).to eq({ x: 0, y: 1})
    end

    it "move backwards" do
      chair.do(['b'])
      expect(chair.report_position).to eq({ x: 0, y: -1})
    end

    it "turn left" do
      chair.do(['l'])
      expect(chair.report_direction).to eq('W')      
    end

    it "turn right" do
      chair.do(['r'])
      expect(chair.report_direction).to eq('E')
    end
  end
end 

  