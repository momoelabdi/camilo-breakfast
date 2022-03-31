# require 'faker'

# Bakery.delete_all

camilo = Bakery.create!(name: "Chez camilo", discription: "specialiste en petit pains", street: "boulvard camilo", address: "16 Villa Gaudelet, Paris", zip: 34 , city:"Monaco", latitude: 48.8582, longitude: 2.2945)

Product.create!(name: "Tango", details: "Home made", price: 7, bakery: camilo)

# 10.times do
#   Bakery.create!(name: Faker::Company.name, street: Faker::Address.street_name, zip: Faker::Address.zip, city: Faker::Address.city)
# end
