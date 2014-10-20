# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar")

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  paypal_balance = rand(0.0..500.9).round(2)
  bitcoin_balance = rand(0.0..1).round(6)
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               paypal_balance: paypal_balance,
               bitcoin_balance: bitcoin_balance)
end