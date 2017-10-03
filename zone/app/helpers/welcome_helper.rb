module WelcomeHelper

  def grams(amount)
    "#{number_with_precision(amount, precision: 1)} grammi"
  end

  def calories(value)
    "#{number_with_precision(value, precision: 1)} calorie"
  end

  def nutrition(food)
    carbs_label = food.carb? ? "<strong>#{food.carbs}</strong>" : "#{food.carbs}"
    fats_label = food.fat? ? "<strong>#{food.fats}</strong>" : "#{food.fats}"
    proteins_label = food.protein? ? "<strong>#{food.proteins}</strong>" : "#{food.proteins}"

    "carboidrati: #{carbs_label} | grassi: #{fats_label} | proteine: #{proteins_label}".html_safe
  end

end
