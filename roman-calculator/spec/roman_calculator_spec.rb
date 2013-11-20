require_relative "../lib/I"

describe "Roman number I" do
  it "is equivalent to arabig number 1" do
    roman = I.new
    expect(roman.t_arabig).to eq 1
  end
end

describe "Roman number II" do
  it "is equivalent to arabig number 2" do
    roman = I.new(I.new)
    expect(roman.t_arabig).to eq 2
  end
end

describe "Roman number III" do
  it "is equivalent to arabig number 3" do
    roman = I.new(I.new(I.new))
    expect(roman.t_arabig).to eq 3
  end
end

describe "Roman number IV" do
  it "is equivalent to arabig number 4" do
    roman = I.new(V.new)
    expect(roman.t_arabig).to eq 4
  end
end