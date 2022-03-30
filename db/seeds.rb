# require 'faker'

# Bakery.delete_all

Bakery.create!(name: "Boulangerie Tea Room Bidlingmeyer", discription: "specialiste en petit pains", street: "boulvard camilo", zip: 34 , city:"Monaco")
Product.create!(name: "Tango", details: "Home made", price: 7, bakery: )

# 10.times do
#   Bakery.create!(name: Faker::Company.name, street: Faker::Address.street_name, zip: Faker::Address.zip, city: Faker::Address.city)
# end
