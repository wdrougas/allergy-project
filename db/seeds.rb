# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Recipe.destroy_all


jose = User.create(:name => "Jose")
will = User.create(:name => "Will")


chicken_teri = Recipe.create(:name => "Chicken Teriyaki", :user_id => jose.id)
pizza = Recipe.create(:name => "Pizza", :user_id => will.id)