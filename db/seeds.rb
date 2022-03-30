require 'faker'

Bakery.delete_all

camilo = Bakery.create!(name: "chez camilo", discription: "specialiste en petit pains", street: "boulvard camilo", zip: 34 , city:"Monaco", latitude: 345, longitude: 345)

Product.create!(name: "Tango", details: "Home made", price: 7, bakery: camilo)

10.times do
  Bakery.create!(name: Faker::Company.name, street: Faker::Address.street_name, zip: Faker::Address.zip, city: Faker::Address.city)
end
