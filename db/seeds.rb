require 'faker'
require "open-uri"

Order.destroy_all
Basket.destroy_all
Bakery.destroy_all
Product.delete_all

# camilo = Bakery.create!(name: "Chez camilo", discription: "specialiste en petit pains", street: "boulvard camilo", address: "16 Villa Gaudelet, Paris", zip: 34 , city:"Monaco", latitude: 48.8582, longitude: 2.2945)
# Order.cerate!(user_id: 3, product_id: 7)
# camilo = Bakery.create!(name: "Chez Camilo", discription: "specialiste en petit pains", street: "boulvard camilo", zip: 34 , city:"Monaco", latitude: 345, longitude: 345)

# Product.create!(name: "Tango", details: "Home made", price: 7, bakery: camilo)
# Product.create!(name: "Panier suprise", details: "Pain au chocolat", price: 10.90, bakery: camilo)


# Confiserie Nessi
  Bakery.create!(name: 'Confiserie Nessi', address: 'Avenue du Temple 65', discription: 'Depuis le début notre devise a toujours été : Le plaisir de faire plaisir.
    C’est en 2019 que nous avons fêté nos 30 ans de loyaux services à notre fidèle clientèle.' ,street: 'https://static.wixstatic.com/media/8794d4_eaf251ab3daa46269a3c2f516dd29a1f~mv2.png/v1/fill/w_268,h_138,al_c,usm_0.66_1.00_0.01,enc_auto/Logo_Nessi.png')

  Product.create!(name:"Déjeuner paysanne", details:"cafe, Petit pain, Omlete, Jus d'orange", price: 8,)


  # Boulangerie Millioud Sàrl
  Bakery.create!(name: 'Boulangerie Millioud', address: 'Rue Pré-du-Marché 13, 1004 Lausanne', discription:'La Boulangerie Millioud est une entreprise crée en 1896 par Emile Millioud. Ensuite, son fils Robert reprend le flambeau ainsi que son petit-fils Marcel.', street: 'http://www.boulangerie-millioud.ch/resources/slide_1.jpg?1648992840865')
  Product.create!(name:"Cafe Fleur", details:"cafe, sandwiche au salami, Jus de fruits ", price: 9, bakery: Bakery.last)


  # Boulangerie Bread Store
  Bakery.create!(name: 'Boulangerie Bread Store', address: "Avenue d'Ouchy 15, 1006 Lausanne", street: 'https://static.wixstatic.com/media/ba59e2_b156b1c04431455ea4e687c844926fd0~mv2_d_1748_2480_s_2.png/v1/crop/x_0,y_749,w_1748,h_979/fill/w_1260,h_796,al_c,usm_0.66_1.00_0.01,enc_auto/ba59e2_b156b1c04431455ea4e687c844926fd0~mv2_d_1748_2480_s_2.png')
  Product.create!(name:"Le Local", details:"cafe, Petit pain, sandwiche au Salmon, Une pomme ", price: 10, bakery: Bakery.last)


  # Epicerie Camelia
  Bakery.create!(name: 'Epicerie Camelia', address: 'Avenue de France 36, 1004 Lausanne', discription: 'Produits BIO / Produits Locaux / Boulangerie / Café', street: 'https://bin.staticlocal.ch/localplace-images/90/9012f40c3d447f7b5c0407602c8bcd681bebdeff/camelia%204.jpg')
  Product.create!(name:"Chez George ", details:"cafe, Petit pain, sandwiche au poulet Jus de fruits au fruit sec", price: 8, bakery: Bakery.last)

  # David Banchet
  Bakery.create!(name: 'Chocolaterie et Boulangerie David Banchet', discription: "Dans notre bar à chocolat, vous trouverez des produits haut de gamme de confection artisanale, élaborés à partir de matières premières éthiques et de qualité irréprochable.", address: "Rue de l'Industrie, 1290 Versoix", street: 'https://bin.staticlocal.ch/localplace-images/c9/c98011cf7b37d6ee7521f0a24f522f7cf7a9f049/David%20Banchet%20LOGO%20Photo.jpg')
  Product.create!(name:"Matin paysanne ", details:"cafe, Petit pain, snadwiche au trois Fromages, Jus d'orange", price: 6, bakery: Bakery.last)
