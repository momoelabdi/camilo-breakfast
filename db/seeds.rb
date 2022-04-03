require 'faker'
# require 'open-uri'


# Bakery.destroy_all
# Product.delete_all

# camilo = Bakery.create!(name: "Chez camilo", discription: "specialiste en petit pains", street: "boulvard camilo", address: "16 Villa Gaudelet, Paris", zip: 34 , city:"Monaco", latitude: 48.8582, longitude: 2.2945)
# Order.cerate!(user_id: 3, product_id: 7)
# camilo = Bakery.create!(name: "Chez Camilo", discription: "specialiste en petit pains", street: "boulvard camilo", zip: 34 , city:"Monaco", latitude: 345, longitude: 345)

# Product.create!(name: "Tango", details: "Home made", price: 7, bakery: camilo)
# Product.create!(name: "Panier suprise", details: "Pain au chocolat", price: 10.90, bakery: camilo)


  Bakery.create!(name: 'Restaurant du Pont', address: 'Parc dinu-lipatti 13', street: 'https://static.wixstatic.com/media/8794d4_eaf251ab3daa46269a3c2f516dd29a1f~mv2.png/v1/fill/w_268,h_138,al_c,usm_0.66_1.00_0.01,enc_auto/Logo_Nessi.png')
  Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
  Bakery.create!(name: 'Bis', address: 'Rue de la fontenette 46', street: 'https://www.lepetitcoingourmand-lausanne.ch/uploads/AC2tAP8x/697x0_1129x0/78731c93c2344454b2985a6f44dd5732.jpg')
  Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
  Bakery.create!(name: 'La Rouvenaz', address: 'Avenue Henri-Dunant 16')
  Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
  Bakery.create!(name: 'Beirut restaurant', address: 'Boulevard Helvétique 29')
  Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
  Bakery.create!(name: 'Molino', address: 'Route de Malagnou 52')
  Product.create!(name: Faker::Games::LeagueOfLegends.champion, details: Faker::Games::LeagueOfLegends.quote, price: Faker::Number.decimal(l_digits: 2), bakery: Bakery.last)
