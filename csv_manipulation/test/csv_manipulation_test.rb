gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/csv_manipulation'

class CSVManipulationTest < Minitest::Test
  def test_that_filename_is_opened
    new_csv = CSVManipulation.new
    actual = new_csv.incoming_text.empty?

    refute actual
  end

  def test_that_lyrics_are_sanitized
    new_csv = CSVManipulation.new
    actual = new_csv.sanitize_string.include?("0..9")

    refute actual
  end

  def test_if_unique_words_are_counted
    new_csv = CSVManipulation.new
    new_csv.sanitize_string
    actual = new_csv.unique_words.class
    expected = Fixnum

    assert_equal expected, actual
  end
end
