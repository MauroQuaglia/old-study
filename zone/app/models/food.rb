class Food < ApplicationRecord

  def carb?
    [carbs, fats, proteins].max == carbs
  end

  def fat?
    [carbs, fats, proteins].max == fats
  end

  def protein?
    [carbs, fats, proteins].max == proteins
  end

  def type
    return :carb if carb?
    return :fat if fat?
    return :protein if protein?
  end

  def badges_type
    badges.split(',')
  end

  def graph
    {
        'c' => carbs,
        'g' => fats,
        'p' => proteins,
        'altro' => 100 - [carbs, fats, proteins].sum
    }
  end

end
