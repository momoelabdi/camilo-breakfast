require 'faker'

Bakery.destroy_all
Product.delete_all

camilo = Bakery.create!(name: "Chez camilo", discription: "specialiste en petit pains", street: "boulvard camilo", address: "16 Villa Gaudelet, Paris", zip: 34 , city:"Monaco", latitude: 48.8582, longitude: 2.2945)



# camilo = Bakery.create!(name: "Chez Camilo", discription: "specialiste en petit pains", street: "boulvard camilo", zip: 34 , city:"Monaco", latitude: 345, longitude: 345)

# Product.create!(name: "Tango", details: "Home made", price: 7, bakery: camilo)
# Product.create!(name: "Panier suprise", details: "Pain au chocolat", price: 10.90, bakery: camilo)

10.times do
  Bakery.create!(name: Faker::Company.name, street: Faker::Address.street_name, zip: Faker::Address.zip, city: Faker::Address.city)
  Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
end
