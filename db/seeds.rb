Category.destroy_all

puts 'Tout a été supprimé'

auto        = Category.create(name: "Automobile")
immobilier  = Category.create(name: "Immobilier")
animaux     = Category.create(name: "Animaux")
sport       = Category.create(name: "Sport")

puts 'Catégories ajoutées'

