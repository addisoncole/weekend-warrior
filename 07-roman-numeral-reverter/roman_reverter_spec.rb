gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'roman_reverter'

describe "Roman Reverter" do
  it "Check revert I" do
    expect roman_reverter("I").must_equal 1
  end

  it "Check V" do
    expect roman_reverter("V").must_equal 5
  end

  it "Check X" do

    expect roman_reverter("X").must_equal 10
  end

  it "Check revert L" do
    expect roman_reverter("L").must_equal 50
  end

  it "Check revert C" do
    expect roman_reverter("C").must_equal 100
  end

  it "Check revert D" do
    expect roman_reverter("D").must_equal 500
  end

  it "Check revert M" do
    expect roman_reverter("M").must_equal 1000
  end

  it "Check symbol pair" do
    expect roman_reverter("II").must_equal 2
  end

  it "Check symbol string" do
    expect roman_reverter("XXX").must_equal 30
  end

  it "Check mixed symbol string" do
    expect roman_reverter("XVII").must_equal 17
  end

  it "Check two hundred and twenty two" do
     expect roman_reverter("CCXXII").must_equal 222
  end

  it "Check first subtracted value" do
    expect roman_reverter("IV").must_equal 4
  end

  it "Check another subtracted value" do
    expect roman_reverter("IX").must_equal 9
  end

  it "Check 19" do
    expect roman_reverter("XIX").must_equal 19
  end

  it "Check forty" do
    expect roman_reverter("XL").must_equal 40
  end

  it "Check five hundred and seventy six" do
    expect roman_reverter("DLXXVI").must_equal 576
  end

  it  "Check four thousand nine hundred and ninety nine" do
    expect roman_reverter("MMMMCMXCIX").must_equal 4999
  end
end
