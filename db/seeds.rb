require 'faker'

Bakery.destroy_all
Product.delete_all

# camilo = Bakery.create!(name: "Chez camilo", discription: "specialiste en petit pains", street: "boulvard camilo", address: "16 Villa Gaudelet, Paris", zip: 34 , city:"Monaco", latitude: 48.8582, longitude: 2.2945)

# camilo = Bakery.create!(name: "Chez Camilo", discription: "specialiste en petit pains", street: "boulvard camilo", zip: 34 , city:"Monaco", latitude: 345, longitude: 345)

# Product.create!(name: "Tango", details: "Home made", price: 7, bakery: camilo)
# Product.create!(name: "Panier suprise", details: "Pain au chocolat", price: 10.90, bakery: camilo)

  Bakery.create!(name: 'Restaurant du Pont', street: 'Parc dinu-lipatti 13')
  Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
  Bakery.create!(name: 'Bis', street: 'Rue de la fontenette 46')
  Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
  Bakery.create!(name: 'La Rouvenaz', street: 'Avenue Henri-Dunant 16')
  Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
  Bakery.create!(name: 'Beirut restaurant', street: 'Boulevard Helvétique 29')
  Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
  Bakery.create!(name: 'Molino', street: 'Route de Malagnou 52')
  Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
