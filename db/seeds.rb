require "open-uri"

Bakery.destroy_all
Product.delete_all

# camilo = Bakery.create!(name: "Chez Camilo", discription: "specialiste en petit pains", street: "boulvard camilo", zip: 34 , city:"Monaco", latitude: 345, longitude: 345)

# Product.create!(name: "Tango", details: "Home made", price: 7, bakery: camilo)
# Product.create!(name: "Panier suprise", details: "Pain au chocolat", price: 10.90, bakery: camilo)

URI.open('https://res.cloudinary.com/test2023/image/upload/v1648813535/592957c861d621e6154531e6da95597a_bpjuph.jpg')
Bakery.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

Bakery.create!(name: 'Restaurant du Pont', street: 'Rue du Pont 12', zip: '1820', city: 'Montreux', latitude: 46.432904, longitude: 6.946985)
Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
Bakery.create!(name: 'Bis', street: 'Av. Nestlé 17', zip: '1820', city: 'Montreux', latitude: 46.431876, longitude: 6.938403)
Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
Bakery.create!(name: 'La Rouvenaz', street: 'Rue du Marché 1', zip: '1820', city: 'Montreux', latitude: 46.433701, longitude: 6.947826)
Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
Bakery.create!(name: 'Beirut restaurant', street: 'Rle du Trait 44', zip: '1820', city: 'Montreux', latitude: 46.440100, longitude: 6.912179)
Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
Bakery.create!(name: 'Molino', street: 'Pl. du Marché 6', zip: '1820', city: 'Montreux', latitude: 46.439153, longitude: 6.909432)
Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
