puts 'Mise à jour des seeds'

Category.destroy_all
User.destroy_all
Advert.destroy_all

puts 'Création des catégories'

animaux     = Category.create(name: "Animaux")
auto        = Category.create(name: "Automobile")
immobilier  = Category.create(name: "Immobilier")
instrument = Category.create(name: "Instruments")

puts "Les catégories sont crées"

puts "Creation  des users"

admin = User.create(
    email: "admin@leboncoin.com",
    password: "password",
    admin: true
    )

5.times do
  print "*"
  user = User.new(
    email: Faker::Internet.email,
    password: "password",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    nickname: Faker::Pokemon.name + (1..100).to_a.sample.to_s,
    phone: Faker::PhoneNumber.cell_phone,
    birthdate: ((Date.new(1968,04,01))..(Date.new(1998,06,30))).to_a.sample
  )
  user.save!
end

puts "Les users sont crés"

puts "Creation des annonces"


5.times do
  print "*"
  advert = Advert.new(
    role: [0, 1].sample,
    category_id: animaux.id,
    title: ["Chatons très mignons", "Perroquet qui parle trop!", "Lapins nains", "Chiots à réserver", "Troupeau de chèvres"].sample,
    description: Faker::Lorem.paragraph(10),
    price: [0, 230, 1000, 25, 780].sample,
    location:["Lyon", "Saint Etienne", "Paris", "Lille", "Nantes", "Marseille", "Nice"].sample,
    photo_urls: ["http://www.vulgaris-medical.com/sites/default/files/styles/big-lightbox/public/field/image/actualites/2016/02/12/le-chat-source-de-bienfaits-pour-votre-sante.jpg","http://www.monchiotetmoi.com/upload/images/chiots-labrador.jpg", "https://www.pairidaiza.eu/uploads/images/4fbe12187be1f.jpg", "https://www.lestaxinomes.org/IMG/jpg/lapin_nain3.jpg", "http://img0.mxstatic.com/ch%E8vre/chevres-troupeau_3510_w620.jpg"].sample(1),
    user_id: User.pluck(:id).sample,
    published: [true, false].sample
   )

  advert.save!
end

puts "Annonces Animaux crées"


5.times do
  print "*"
  advert = Advert.new(
    role: [0, 1].sample,
    category_id: auto.id,
    title: ["Très belle Peugeot", "Custom Alpin", "Très belle Ferrari", "Jaguar"].sample,
    description: Faker::Lorem.paragraph(10),
    price: [20000, 50000, 10000, 25000, 7080].sample,
    location:["Lyon", "Saint Etienne", "Paris", "Lille", "Nantes", "Marseille", "Nice"].sample,
    photo_urls: ["https://www.groupe-psa.com/content/uploads/2016/07/Marque_Peugeot.jpg", "https://www.eaglemoss.com/uploads/141789350311995/original.png", "http://auto.ferrari.com/fr_FR/wp-content/uploads/sites/13/2016/09/ferrari-laferrari-aperta-2016-gallery-prew-1-tr.jpg", "http://photo-voiture.motorlegend.com/hd/jaguar-type-e-serie-1-4-2l-93681.jpg"].sample(1),
    user_id: User.pluck(:id).sample,
    published: [true, false].sample
   )

  advert.save!
end

puts "Annonces Automobiles crées"

5.times do
  print "*"
  advert = Advert.new(
    role: [0, 1].sample,
    category_id: immobilier.id,
    title: ["Grande Maison", "Studio", "Appartement type F1", "Garage deux voitures", "Chambre"].sample,
    description: Faker::Lorem.paragraph(10),
    price: [2000, 500, 2300, 800, 1200].sample,
    location:["Lyon", "Saint Etienne", "Paris", "Lille", "Nantes", "Marseille", "Nice"].sample,
    photo_urls: ["http://www.h-immo.com/Photo_1367.jpeg", "http://location.lavirotte.com/images/illust/studio.jpg", "https://s-media-cache-ak0.pinimg.com/736x/71/5e/92/715e9221cec4884d4d5afcee7739284a.jpg", "http://resize-elle.ladmedia.fr/r/300,210,center-middle,forcex,000000/img/var/plain_site/storage/images/deco/pieces/chambre/chambre-moderne-3181915/69348118-1-fre-FR/Lecon-de-deco-creez-vous-une-chambre-tendance.jpg"].sample(1),
    user_id: User.pluck(:id).sample,
    published: [true, false].sample
   )

  advert.save!
end

puts "Annonces Immobilier crées"

5.times do
  print "*"
  advert = Advert.new(
    role: [0, 1].sample,
    category_id: instrument.id,
    title: ["Guitare Electrique", "Superbe Stratocaster", "Gibson Les Paul de ouf", "National O style Dobro 1933", "Très belle Martin 40MK"].sample,
    description: Faker::Lorem.paragraph(10),
    price: [2000, 5000, 2300, 8000, 12000].sample,
    location:["Lyon", "Saint Etienne", "Paris", "Lille", "Nantes", "Marseille", "Nice"].sample,
    photo_urls: ["http://www.mk-guitar.com/wp-content/uploads/2013/03/Martin-HD-40MK-0022.jpg","http://www.sylvanmusic.com/uploads/1/0/7/9/10798034/5261998_orig.jpg","https://www.guitarpart.fr/wp-content/uploads/2016/11/Gibson_Les_Paul_1958_Mark_Knopfler_1.jpg"].sample(1),
    user_id: User.pluck(:id).sample,
    published: [true, false].sample
   )

  advert.save!
end

puts "Annonces Instruments crées"

puts "Toutes les annonces sont crées"
puts "Les Seeds sont  prêtes XD"
