require_relative '../spec/spec_helper'

def parse_number string_number

  splitted_string = string_number.split("\n")

  if is_one_or_four? splitted_string
    return check_one_and_four splitted_string
  end
    return check_two_or_tree_or_five splitted_string
end

def check_one_and_four splitted_string
  if splitted_string[1] == " | "
    return 1
  end
  return 4
end

def check_two_or_tree_or_five splitted_string
  if is_two_or_three? splitted_string
    return check_two_or_three splitted_string
  end
  return 5
end

def check_two_or_three splitted_string
  if splitted_string[2] == "|_ "
    return 2
  end
  return 5
end

def is_one_or_four? splitted_string
  return splitted_string[0] == "   "
end

def is_two_or_three? splitted_string
  return splitted_string[1] == " _|" 
end

describe "Bank OCR" do
  it "reads number 1" do
    number_1 ="   \n | \n | \n   "

    expect(parse_number(number_1)).to eq 1
  end

  it "reads number 2" do
    number_2 =" _ \n _|\n|_ \n   "

    expect(parse_number(number_2)).to eq 2
  end

  it "reads number 3" do
    number_3 = " _ \n _|\n _|\n   "

    expect(parse_number(number_3)).to eq 3
  end

  it "reads number 4" do
    number_4 = "   \n|_|\n  |\n   "

    expect(parse_number(number_4)).to eq 4
  end

  it "reads number 5" do
    number_5 = " _ \n|_ \n _|\n   "

    expect(parse_number(number_5)).to eq 5
  end
end
