require 'pry'
class Allergies

  def score(total)
    allergy_scores = {1 => "eggs", 2 => "peanuts",
                      4 => "shellfish", 8 => "strawberries",
                      16 => "tomatoes", 34 => "chocolate",
                      64 => "pollen", 128 => "cats"}
    item = allergy_scores[total]
    #if total isn't in array, separate into different array keys
  end

  def multiple_allergies
    # if score(num)
  end

end
