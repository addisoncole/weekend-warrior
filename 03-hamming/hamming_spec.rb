gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'hamming'

describe "find hamming" do
  it  "Check identical strands" do
    expect(find_hamming('A', 'A')).must_equal 0
  end

  it "Check long identical strands" do
    expect (find_hamming('GGACTGA', 'GGACTGA')).must_equal 0
  end

  it "Check complete distance in single nucleotide strands" do
    expect(find_hamming('A', 'G')).must_equal 1
  end

  it "Check complete distance in small strands" do
    expect(find_hamming('AG', 'CT')).must_equal 2
  end

  it "Check small distance in small strands" do
    expect(find_hamming('AT', 'CT')).must_equal 1
  end

  it "Check small distance" do
    expect(find_hamming('GGACG', 'GGTCG')).must_equal 1
  end

  it "Check small distance in long strands" do
    expect(find_hamming('ACCAGGG', 'ACTATGG')).must_equal 2
  end

  it "Check non_unique character in first strand" do
    expect(find_hamming('AGA', 'AGG')).must_equal 1
  end

  it "Check non unique character in second strand" do
    expect(find_hamming('AGG', 'AGA')).must_equal 1
  end

  it "Check large_distance" do
    expect(find_hamming('GATACA', 'GCATAA')).must_equal 4
  end

  it "Check large distance in off by one strand" do
    expect(find_hamming('GGACGGATTCTG', 'AGGACGGATTCT')).must_equal 9
  end

  it "Check Empty Strands" do
    expect(find_hamming('', '')).must_equal 0
  end

  it "Check disallow first strand longer" do
    expect ( proc { find_hamming('AATG', 'AAA') }).must_raise ArgumentError
  end

  it "Check disallow second strand longer" do
    expect( proc { find_hamming('ATA', 'AGTG') }).must_raise ArgumentError
  end
end
