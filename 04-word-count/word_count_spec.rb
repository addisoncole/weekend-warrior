gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'word_count'

describe "Word Count" do
  it "Check counts one word" do
    expectedCounts = { "word" => 1 }

    expect(word_count('word')).must_equal  expectedCounts
  end

  it "Check counts_one_of_each" do
    expectedCounts = { "one" => 1, "of" => 1, "each" => 1 }

    expect(word_count('one of each')).must_equal expectedCounts
  end

  it "Check counts multiple occurrences" do
    expectedCounts = { "one" => 1, "fish" => 4, "two" => 1, "red" => 1, "blue" => 1 }
    expect(word_count('one fish two fish red fish blue fish')).must_equal expectedCounts
  end

  it "Check that it includes_punctuation" do
    expectedCounts = { "car" => 1, ":" => 2, "carpet" => 1, "as" => 1, "java" => 1, 'javascript!!&@$%^&' => 1 }

    expect ( word_count('car : carpet as java : javascript!!&@$%^&') ).must_equal expectedCounts
  end

  it "Check includes numbers" do
    expectedCounts = { "testing" => 2, '1' => 1, '2' => 1 }

    expect(word_count('testing 1 2 testing')).must_equal expectedCounts
  end

  it "Check respects_case" do
    expectedCounts = { "go" => 1, "Go" => 1, "GO" => 1 }
    expect(word_count('go Go GO')).must_equal expectedCounts
  end

  it "Check counts properly international characters" do
    expectedCounts = { '¡Hola!' => 1, '¿Qué' => 1, 'tal?' => 1, 'Привет!' => 1 }

    expect(expectedCounts).must_equal word_count('¡Hola! ¿Qué tal? Привет!')
  end

  it "Check counts_multiline" do
    expectedCounts = { "hello" => 1, "world" => 1 }
    expect(expectedCounts).must_equal  word_count("hello\nworld")
  end

  it "Check counts_tabs" do
    expectedCounts = { "hello" => 1, "world" => 1 }
    expect(expectedCounts).must_equal  word_count("hello\tworld")
  end

  it "Check counts multiple spaces as one" do
    expectedCounts = { "hello" => 1, "world" => 1 }
    expect (expectedCounts).must_equal word_count('hello  world')
  end

  it "Check does not count leading or trailing whitespace" do
    expectedCounts = { "Introductory" => 1, "Course" => 1 }

    expect(expectedCounts).must_equal word_count("\t\tIntroductory\n\n\n\nCourse      ")
  end

  it "Check handles words that are also method names" do
    expectedCounts = { "to_s" => 1, "gsub" => 1, "reverse" => 1, "String" => 1, "methods:" => 1 }

    expect(expectedCounts).must_equal word_count('String methods: to_s gsub reverse')
  end
end
