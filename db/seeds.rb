# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




User.create!(name: "gyawalia",
              email: "gyawali@butwal.com",
              password: "hajur1234",
              password_confirmation: "hajur1234"  )

User.create!(name: "ashish gyawali",
email: "asis3005@gmail.com",
password: "hajur1234",
password_confirmation: "hajur1234",
admin: true  )

# 99.times do |x|
#   name = Faker::Name.name
#   email = "gyawali-#{x+1}@butwal.com"
#   User.create!(name: name,
#                 email: email,
#                 password: "password",
#                 password_confirmation: "password")

# end
