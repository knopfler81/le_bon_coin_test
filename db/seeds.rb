puts 'Mise à jour des seeds'

Category.destroy_all
User.destroy_all
Advert.destroy_all

puts 'Création des catégories'

animaux     = Category.create(name: "Animaux")
auto        = Category.create(name: "Automobile")
immobilier  = Category.create(name: "Immobilier")
instruments = Category.create(name: "Instruments")
sport       = Category.create(name: "Sport")

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
    birthdate: ((Date.new(1968,04,01))..(Date.new(1998,06,30))).to_a.sample
  )
  user.save!
end

puts "Les users sont crés"

puts "Creation des annonces"

10.times do
  print "*"
  advert = Advert.new(
    role: [0, 1].sample,
    category_id: 1,
    title: ["Chatons très mignons", "Perroquet qui parle trop!", "Lapins nains", "Chiots à réserver", "Troupeau de chèvres"].sample,
    description: Faker::Lorem.paragraph(10),
    price: [0, 230, 1000, 25, 780].sample,
    location:["Lyon", "Saint Etienne", "Paris", "Lilles", "Nantes", "Marseille", "Nice"].sample,
    photo_urls: ["http://www.vulgaris-medical.com/sites/default/files/styles/big-lightbox/public/field/image/actualites/2016/02/12/le-chat-source-de-bienfaits-pour-votre-sante.jpg","http://www.monchiotetmoi.com/upload/images/chiots-labrador.jpg", "https://www.pairidaiza.eu/uploads/images/4fbe12187be1f.jpg", "https://www.lestaxinomes.org/IMG/jpg/lapin_nain3.jpg", "http://img0.mxstatic.com/ch%E8vre/chevres-troupeau_3510_w620.jpg"].sample(5),
    user_id: User.pluck(:id).sample,
    published: [true, false].sample
   )

  advert.save!
end

puts "Les annonces sont crées"
puts "Les Seeds sont  prêtes XD"
