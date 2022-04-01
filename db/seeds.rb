require 'faker'

Bakery.destroy_all
Product.delete_all

camilo = Bakery.create!(name: "Chez camilo", discription: "specialiste en petit pains", street: "boulvard camilo", address: "16 Villa Gaudelet, Paris", zip: 34 , city:"Monaco", latitude: 48.8582, longitude: 2.2945)
# Order.cerate!(user_id: 3, product_id: 7)
# camilo = Bakery.create!(name: "Chez Camilo", discription: "specialiste en petit pains", street: "boulvard camilo", zip: 34 , city:"Monaco", latitude: 345, longitude: 345)

# Product.create!(name: "Tango", details: "Home made", price: 7, bakery: camilo)
Product.create!(name: "Panier suprise", details: "Pain au chocolat", price: 10.90, bakery: camilo)

  Bakery.create!(name: 'Restaurant du Pont', street: 'Rue du Pont 12', zip: '1820', city: 'Montreux', latitude: 345, longitude: 345)
  Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
  Bakery.create!(name: 'Bis', street: 'Av. Nestlé 17', zip: '1820', city: 'Montreux', latitude: 345, longitude: 345)
  Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
  Bakery.create!(name: 'La Rouvenaz', street: 'Rue du Marché 1', zip: '1820', city: 'Montreux', latitude: 345, longitude: 345)
  Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
  Bakery.create!(name: 'Beirut restaurant', street: 'Rle du Trait 44', zip: '1820', city: 'Montreux', latitude: 345, longitude: 345)
  Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
  Bakery.create!(name: 'Molino', street: 'Pl. du Marché 6', zip: '1820', city: 'Montreux', latitude: 345, longitude: 345)
  Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
