# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Allergy.destroy_all
RecipeIngredient.destroy_all

jose = User.create(:name => "Jose")
will = User.create(:name => "Will")


chicken_teri = Recipe.create(:name => "Chicken Teriyaki", :user_id => jose.id)
pizza = Recipe.create(:name => "Pizza", :user_id => will.id)

soy_sauce = Ingredient.create(name: "Soy Sauce")
cheese = Ingredient.create(name: "Cheese")
pepper = Ingredient.create(name: "Pepper")
garlic = Ingredient.create(name: "Garlic")

Allergy.create(user_id: jose.id, ingredient_id: cheese.id)
Allergy.create(user_id: will.id, ingredient_id: garlic.id)
Allergy.create(user_id: jose.id, ingredient_id: garlic.id)

RecipeIngredient.create(recipe_id: pizza.id, ingredient_id: cheese.id)
RecipeIngredient.create(recipe_id: chicken_teri.id, ingredient_id: soy_sauce.id)
