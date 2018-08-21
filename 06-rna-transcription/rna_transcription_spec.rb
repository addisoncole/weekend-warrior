gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'rna_transcription'

describe "RNA Complement Test" do
  it "Check Rna complement of cytosine is guanine" do
    expect rna_transcription('G').must_equal ('C')
  end
  it "Check rna complement of guanine is cytosine" do
    expect rna_transcription('C').must_equal ('G')
  end

  it "Check rna complement of thymine is adenine" do
    expect rna_transcription('T').must_equal ('A')
  end

  it "Check rna complement of adenine is uracil" do
    expect rna_transcription('U').must_equal ('A')
  end

  it "Check rna complement" do
    expect rna_transcription('UGCACCAGAAUU').must_equal ('ACGTGGTCTTAA')
  end

  it "Check dna complement of cytosine is guanine" do
    expect rna_transcription('G').must_equal ('C')
  end

  it "Check dna complement of guanine is cytosine" do
    expect rna_transcription('C').must_equal('G')
  end

  it "Check dna complement of uracil is adenine" do
    expect rna_transcription('A').must_equal('U')
  end

  it "Check dna complement of adenine is thymine" do
    expect rna_transcription('T').must_equal ('A')
  end

  it "Check dna complement" do
    expect rna_transcription('ACTTGGGCTGTAC').must_equal ('UGAACCCGACAUG')
  end

  it "Check dna raises argument error" do
    skip
    expect(proc { Complement.of_dna('U') }).must_raise ArgumentError
  end

  it "Check rna raises argument error" do
    skip
    expect( proc { Complement.of_rna('T') } ).must_raise ArgumentError
  end

  it "Check rna raises argument error on completely invalid input" do
    expect rna_transcription('XXX').must_raise ArgumentError
  end

  it "Check dna raises argument error on completely invalid input" do
    skip
    expect( proc { Complement.of_dna('XXX') }).must_raise ArgumentError
  end

  it "Check dna raises argument error on partially invalid input" do
    skip
    expect(proc { Complement.of_dna('ACGTXXXCTTAA') }).must_raise ArgumentError
  end

  it "Check rna raises argument error on partially invalid input" do
    skip
    expect(proc { Complement.of_rna('UGAAXXXGACAUG') }).must_raise ArgumentError
  end
end
