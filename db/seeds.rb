# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts 'Cleaning database...'

URL = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(URL).read
ingredients_attributes = JSON.parse(user_serialized)
ingredients = ingredients_attributes['drinks']
ingredients.each do |ingredient|
  Ingredient.create!(name: ingredient['strIngredient1'])
end

# user['strIngredient1'].each do |item|
#   cocktails_attributes = [
#     {
#       name: user[item]
#     }
#   ]

# Cocktail.create!(cocktails_attributes)
# end

puts 'Finished!'
