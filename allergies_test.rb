gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'allergies'

class AllergiesTest < Minitest::Test

  def test_if_score_of_1_returns_egg_allergy
    allergy = Allergies.new

    assert_equal "eggs", allergy.score(1)
  end

  def test_if_score_of_2_returns_peanut_allergy
    allergy = Allergies.new

    assert_equal "peanuts", allergy.score(2)
  end

  def test_if_combined_scores_return_multiple_allergies
    allergy = Allergies.new

    binding.pry
    assert_equal "eggs, peanuts", allergy.score(3)
  end
end
