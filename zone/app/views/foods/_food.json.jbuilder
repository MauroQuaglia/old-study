json.extract! food, :id, :name, :energy, :water, :carbs, :fats, :proteins, :created_at, :updated_at
json.url food_url(food, format: :json)
