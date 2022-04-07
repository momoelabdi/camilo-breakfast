require 'faker'
require "open-uri"

Order.destroy_all
Basket.destroy_all
Bakery.destroy_all
Product.delete_all

# Confiserie Nessi
  Bakery.create!(name: 'Confiserie Nessi', address: 'Avenue du Temple 65', discription: 'Depuis le début notre devise a toujours été : Le plaisir de faire plaisir.
    C’est en 2019 que nous avons fêté nos 30 ans de loyaux services à notre fidèle clientèle.', street: 'https://static.wixstatic.com/media/8794d4_eaf251ab3daa46269a3c2f516dd29a1f~mv2.png/v1/fill/w_268,h_138,al_c,usm_0.66_1.00_0.01,enc_auto/Logo_Nessi.png')
  Product.create!(name:"Déjeuner paysanne", details:"Café Large, Pain au chocolat", price: 14.90,bakery: Bakery.last, img: "https://images.unsplash.com/photo-1555507036-ab1f4038808a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1452&q=80](https://images.unsplash.com/photo-1555507036-ab1f4038808a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1452&q=80)")
  Product.create!(name:"La laitière", details:"Caffe Latte, Croissant au beurre", price: 7.90,bakery: Bakery.last, img: "https://images.unsplash.com/photo-1583338917451-face2751d8d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")


  # Boulangerie Millioud Sàrl
  Bakery.create!(name: 'Boulangerie Millioud', address: 'Rue Pré-du-Marché 13, 1004 Lausanne', discription:'La Boulangerie Millioud est une entreprise crée en 1896 par Emile Millioud. Ensuite, son fils Robert reprend le flambeau ainsi que son petit-fils Marcel.', street: 'http://www.boulangerie-millioud.ch/resources/slide_1.jpg?1648992840865')
  Product.create!(name:"Panier de Fleur", details:"Capuccino, Toast à la confiture de fraise", price: 7.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1558961363-fa8fdf82db35?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80")
  Product.create!(name:"Cafe du bonheur", details:"Café Mocha, Fraise au miel et chantilly ", price: 9.00, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1623334044303-241021148842?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")


  # Boulangerie Bread Store
  Bakery.create!(name: 'Boulangerie Bread Store', address: "Avenue d'Ouchy 15, 1006 Lausanne", street: 'https://static.wixstatic.com/media/ba59e2_b156b1c04431455ea4e687c844926fd0~mv2_d_1748_2480_s_2.png/v1/crop/x_0,y_749,w_1748,h_979/fill/w_1260,h_796,al_c,usm_0.66_1.00_0.01,enc_auto/ba59e2_b156b1c04431455ea4e687c844926fd0~mv2_d_1748_2480_s_2.png')
  Product.create!(name:"Le Local", details:"Ristretto, Oeuf brouillé ", price: 14.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1563729784474-d77dbb933a9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")


  # Epicerie Camelia
  Bakery.create!(name: 'Epicerie Camelia', address: 'Avenue de France 36, 1004 Lausanne', discription: 'Produits BIO / Produits Locaux / Boulangerie / Café', street: 'https://bin.staticlocal.ch/localplace-images/90/9012f40c3d447f7b5c0407602c8bcd681bebdeff/camelia%204.jpg')
  Product.create!(name:"Passion jaune ", details:"Double Espresso, Sandwich jambon beurre", price: 18.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1569864358642-9d1684040f43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")

  # David Banchet
  Bakery.create!(name: 'Chocolaterie et Boulangerie David Banchet', discription: "Dans notre bar à chocolat, vous trouverez des produits haut de gamme de confection artisanale, élaborés à partir de matières premières éthiques et de qualité irréprochable.", address: "Rue de l'Industrie, 1290 Versoix", street: 'https://bin.staticlocal.ch/localplace-images/c9/c98011cf7b37d6ee7521f0a24f522f7cf7a9f049/David%20Banchet%20LOGO%20Photo.jpg')
  Product.create!(name:"Good Morning ", details:"Americano, Croissant au jambon", price: 6.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1569864358642-9d1684040f43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
