# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

require 'open-uri'
require "json"

# url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# ingredient_serialized = open(url).read
# ingredient_list = JSON.parse(ingredient_serialized)
# ingredients = ingredient_list['drinks']

# ingredients.each do |i|
#   Ingredient.create(name: i["strIngredient1"])
# end

ingredient_1 = Ingredient.create(name: "lemon")
ingredient_2 = Ingredient.create(name: "ice")
ingredient_3 = Ingredient.create(name: "mint leaves")

cocktail_1 = Cocktail.create(name: "Mojito")
cocktail_2 = Cocktail.create(name: "Whisky")
cocktail_3 = Cocktail.create(name: "Drink")

Dose.create(description: "1 spoon", cocktail: cocktail_1, ingredient: ingredient_1)
Dose.create(description: "2 spoon", cocktail: cocktail_2, ingredient: ingredient_2)
Dose.create(description: "3 spoon", cocktail: cocktail_3, ingredient: ingredient_3)
