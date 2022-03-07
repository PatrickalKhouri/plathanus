require "roman_numeral"

describe "#new_roman_numeral" do

  it "should work for numbers between 1 and 4" do
    expect(new_roman_numeral(1)).to eq "I"
    expect(new_roman_numeral(2)).to eq "II"
    expect(new_roman_numeral(4)).to eq "IV"
  end

  it "should work for numbers between 5 and 9" do
    expect(new_roman_numeral(5)).to eq "V"
    expect(new_roman_numeral(6)).to eq "VI"
    expect(new_roman_numeral(9)).to eq "IX"
  end

  it "should work for numbers between 10 and 49" do
    expect(new_roman_numeral(10)).to eq "X"
    expect(new_roman_numeral(11)).to eq "XI"
    expect(new_roman_numeral(49)).to eq "XLIX"
  end

  it "should work for numbers between 50 and 99" do
    expect(new_roman_numeral(50)).to eq "L"
    expect(new_roman_numeral(51)).to eq "LI"
    expect(new_roman_numeral(99)).to eq "XCIX"
  end

  it "should work for numbers between 100 and 499" do
    expect(new_roman_numeral(100)).to eq "C"
    expect(new_roman_numeral(101)).to eq "CI"
    expect(new_roman_numeral(149)).to eq "CXLIX"
    expect(new_roman_numeral(199)).to eq "CXCIX"
    expect(new_roman_numeral(200)).to eq "CC"
    expect(new_roman_numeral(499)).to eq "CDXCIX"
  end

  it "should work for numbers between 500 and 999" do
    expect(new_roman_numeral(500)).to eq "D"
    expect(new_roman_numeral(501)).to eq "DI"
    expect(new_roman_numeral(600)).to eq "DC"
    expect(new_roman_numeral(999)).to eq "CMXCIX"
  end

  it "should work for numbers above 1000" do
    expect(new_roman_numeral(1000)).to eq "M"
    expect(new_roman_numeral(1001)).to eq "MI"
    expect(new_roman_numeral(1100)).to eq "MC"
    expect(new_roman_numeral(1500)).to eq "MD"
    expect(new_roman_numeral(2000)).to eq "MM"
    expect(new_roman_numeral(3000)).to eq "MMM"
  end

end