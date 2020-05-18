# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Lets destroy all "

# User.destroy_all
# Project.destroy_all
puts "Destroyed!"
puts "Seeds are comiiiiing!"
10.times do
  User.create!(
    username: Faker::Name.unique.name,
    email: Faker::Internet.email,
    password: 'localife'
    )
end

10.times do
  Project.create!(
    name: Faker::Game.title,
    user_id: rand(1..10)
    )
end

puts "#{User.count} users are created, #{Project.count} projects are created."
