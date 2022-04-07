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


  # Boulangerie Millioud Sàrl
  Bakery.create!(name: 'Boulangerie Millioud', address: 'Rue Pré-du-Marché 13, 1004 Lausanne', discription:'La Boulangerie Millioud est une entreprise crée en 1896 par Emile Millioud. Ensuite, son fils Robert reprend le flambeau ainsi que son petit-fils Marcel.', street: 'http://www.boulangerie-millioud.ch/resources/slide_1.jpg?1648992840865')
  Product.create!(name:"Panier de Fleur", details:"Capuccino, Toast à la confiture de fraise", price: 7.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1558961363-fa8fdf82db35?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80")


  # Boulangerie Bread Store
  Bakery.create!(name: 'Boulangerie Bread Store', address: "Avenue d'Ouchy 15, 1006 Lausanne", street: 'https://static.wixstatic.com/media/ba59e2_b156b1c04431455ea4e687c844926fd0~mv2_d_1748_2480_s_2.png/v1/crop/x_0,y_749,w_1748,h_979/fill/w_1260,h_796,al_c,usm_0.66_1.00_0.01,enc_auto/ba59e2_b156b1c04431455ea4e687c844926fd0~mv2_d_1748_2480_s_2.png')
  Product.create!(name:"Le Local", details:"Ristretto, Oeuf brouillé ", price: 10.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1563729784474-d77dbb933a9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
  Product.create!(name:"Cafe du bonheur", details:"Café Mocha, Fraise au miel et chantilly ", price: 12.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1623334044303-241021148842?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
  Product.create!(name:"La laitière", details:"Caffe Latte, Croissant au beurre", price: 7.90,bakery: Bakery.last, img: "https://images.unsplash.com/photo-1583338917451-face2751d8d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
  Product.create!(name:"Mag ici", details:"Lungo ,Cake chocolat", price: 9.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1649000943288-e6b5b01fc0c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")


  # Epicerie Camelia
  Bakery.create!(name: 'Epicerie Camelia', address: 'Avenue de France 36, 1004 Lausanne', discription: 'Produits BIO / Produits Locaux / Boulangerie / Café', street: 'https://bin.staticlocal.ch/localplace-images/90/9012f40c3d447f7b5c0407602c8bcd681bebdeff/camelia%204.jpg')
  Product.create!(name:"Passion jaune ", details:"Double Espresso, Sandwich jambon beurre", price: 18.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1569864358642-9d1684040f43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")

  # David Banchet
  Bakery.create!(name: 'Boulangerie David Banchet', discription: "Dans notre bar à chocolat, vous trouverez des produits haut de gamme de confection artisanale, élaborés à partir de matières premières éthiques et de qualité irréprochable.", address: "Rue de l'Industrie, 1290 Versoix", street: 'https://bin.staticlocal.ch/localplace-images/c9/c98011cf7b37d6ee7521f0a24f522f7cf7a9f049/David%20Banchet%20LOGO%20Photo.jpg')
  Product.create!(name:"Good Morning ", details:"Americano, Croissant au jambon", price: 6.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1569864358642-9d1684040f43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")

  Bakery.create!(name: 'Boulangerie des Bergières', discription: "Depuis plus de 15 ans, la boulangerie des Bergières est spécialisée dans la création de tous vos événements d'entreprise à Lausanne.", address: "Avenue Bergières 30, 1004 Lausanne", street: 'https://i0.wp.com/www.boulangerie-bergieres.ch/wp-content/uploads/2021/08/cropped-LOGO-SQUARE.jpg?w=512&ssl=1')
  Product.create!(name:"Fleu de Lys", details:"Chocoalt au lait, Tartine d'avocat", price: 7.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1648663579720-69b674878d42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80")
  Product.create!(name:"Petit chou", details:"Irish coffee, Verrines de muesli", price: 10.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1649138783043-540ef44513b8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")


  Bakery.create!(name: 'Boulangerie Pâtisserie Lhéritier', discription: "Les boulangers et pâtissiers se donnent à cœur joie pour vous proposer de nouvelles créations.", address: "Route de Lausanne 3, 1032 Romanel-sur-Lausanne", street: 'https://lirp.cdn-website.com/3a3329f6/dms3rep/multi/opt/LheritierFichier+1ee-136w.png')
  Product.create!(name:"Sauves-moi", details:"Caramel Frappe, Riz au lait", price: 5.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1649138759381-380b08f74560?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
  Product.create!(name:"Aide pour tous", details:"Latte Macchiato, Bol de porridge", price: 11.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1649138783617-56000bb05485?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")

  # Manuel
  Bakery.create!(name: 'Manuel Chocolatier & Traiteur', discription: "La maison Manuel séduit tout particulièrement avec ses chocolats et sa pâtisserie fine.", address: "Rue de Bourg 28, 1003 Lausanne", street: "https://manuel.swiss/wp-content/uploads/2020/11/Manuel-Logo-Brun.svg")
  Product.create!(name:"La vie", details:"Americano, Compote de pomme", price: 5.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1648807671442-bebebd3c1ef1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
  Product.create!(name:"Seul en son genre", details:"Corretto, Céréales complets", price: 6.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1648808692677-017af08104d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
  Product.create!(name:"J'achète !", details:"Banane, Smoothie framboise", price: 12.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1648864939972-ff2f44fa4a96?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
  Product.create!(name:"Sans avis", details:"Caramel Macchiato ,Cookies au chocolat", price: 9.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1649165878577-ee1cccc3d5e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")


  Bakery.create!(name: 'Taillé Philippe', discription: "C'est aux côtés de son épouse Joëlle que Philippe Taillé, artisan boulanger pâtissier, se met au défi de reprendre en 1989 la boulangerie de la famille Strasser, ouverte à Cologny deux siècles auparavant", address: "Rue de Montchoisy 72, 1207 Genève", street: 'http://www.boulangerietaille.ch/LOGO_PHILIPPE_TAILLE_HORIZONTAL-01.png?v=1x9f2kj1lwi4tm')
  Product.create!(name:"Unique", details:"Lungo, Marbré", price: 4.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1649138759434-283589b34e7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")


  Bakery.create!(name: 'Pâtisserie Mage', discription: "MAGE est une entreprise familiale dédiée, depuis 2 générations, à la confection artisanale de produits de pâtisserie, confiserie et chocolaterie.", address: "Route de Malagnou 52, 1208 Genève", street: 'https://www.patisseriemage.ch/wp-content/uploads/2018/12/logoMage.jpg')
  Product.create!(name:"Produit insolite", details:"Marrocchino, Smoothie banane", price: 9.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1649054477016-1c4a18cdf362?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")


  Bakery.create!(name: 'Boulangerie de Peney', discription: "", address: "Route du Bois-de-Bay 95, 1242 Satigny", street: 'https://bin.staticlocal.ch/localplace-images/f2/f2c056d17cc8d95492240d95e9a38e625f4ed331/logo.png')
  Product.create!(name:"Facile à trouver", details:"Espresso, Birchermuesli", price: 7.90, bakery: Bakery.last, img: "https://images.unsplash.com/photo-1649165880559-24c3ee073eb5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
