# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Food.delete_all
Food.create(name: 'avocado', energy: 160.00, carbs: 8.53, fats: 14.66, proteins: 2.00, badges: 'vegan,no-gluten,no-milk')
Food.create(name: 'banana', energy: 89.00, carbs: 22.84, fats: 0.33, proteins: 1.09, badges: 'vegan,no-gluten,no-milk')
Food.create(name: 'mandorle', energy: 581, carbs: 21.69, fats: 49.42, proteins: 21.22, badges: 'vegan,no-gluten,no-milk')
Food.create(name: 'ceci', energy: 364, carbs: 61.00, fats: 6.00, proteins: 19.00, badges: 'vegan,no-gluten,no-milk')
Food.create(name: 'uovo', energy: 155, carbs: 1.10, fats: 11.00, proteins: 13.00, badges: 'no-vegan,no-gluten,no-milk')
Food.create(name: 'tofu', energy: 76, carbs: 1.90, fats: 4.80, proteins: 8.00, badges: 'vegan,no-gluten,no-milk')
Food.create(name: 'quinoa', energy: 368, carbs: 64.16, fats: 6.07, proteins: 14.00, badges: 'vegan,no-gluten,no-milk')
Food.create(name: 'salmone', energy: 208, carbs: 0.00, fats: 13.00, proteins: 20.00, badges: 'no-vegan,no-gluten,no-milk')
Food.create(name: 'olive', energy: 142, carbs: 5.00, fats: 27.00, proteins: 1.50, badges: 'vegan,no-gluten,no-milk')
Food.create(name: 'carote', energy: 41, carbs: 9.58, fats: 0.24, proteins: 0.93, badges: 'vegan,no-gluten,no-milk')
Food.create(name: 'lupini', energy: 371, carbs: 40, fats: 10, proteins: 36, badges: 'vegan,no-gluten,no-milk')
#Food.create(name: 'riso', energy: 337, carbs: 77.40, fats: 1.90, proteins: 7.50, badges: 'vegan,no-gluten,no-milk')
Food.create(name: 'barbabietola', energy: 43, carbs: 10.00, fats: 0.20, proteins: 1.60, badges: 'vegan,no-gluten,no-milk')
