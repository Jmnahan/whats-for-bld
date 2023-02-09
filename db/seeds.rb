# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

admin = User.new email: 'admin1@email.com', password: 'password', role: :admin
admin.save

5.times do |n|
  user = User.new email: "user#{n}@email.com", password: 'password'
  user.save(validate: false)
  
  2.times do
    dish_name = 3.times.map { (0...(rand(10))).map { ('a'..'z').to_a[rand(26)] }.join }.join(" ")
    ingredient = 15.times.map { (0...(rand(10))).map { ('a'..'z').to_a[rand(26)] }.join }.join(" ")
    direction = 20.times.map { (0...(rand(10))).map { ('a'..'z').to_a[rand(26)] }.join }.join(" ")
    suggestion = 10.times.map { (0...(rand(10))).map { ('a'..'z').to_a[rand(26)] }.join }.join(" ")

    recipe = Recipe.new(user:, dish_name:, ingredient:, direction:, suggestion:).save(validate: false)
  end
end