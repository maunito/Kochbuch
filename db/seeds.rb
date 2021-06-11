# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Cleaning database..."
Recipe.destroy_all

puts "Creating recipes..."

# file3 = URI.open('http://styleninja.de/wp-content/uploads/2019/01/off-white-jordan.png')
# shoe3 = Shoe.new(name: "Air Jordan 1 High X", size: 41, price: 60, brand: "Nike", location: "Rosenheim", year: 1988, user: user2)
# shoe3.photo.attach(io: file3, filename: 'Air-jordan-1-high-x.png', content_type: 'image/png')
# shoe3.save!

# gulasch_pic = URI.open('https://www.cooknsoul.de/wp-content/uploads/2017/11/Rindergulasch_Tomatensauce.jpg')
# gulasch = { name: "Gulasch", ingredients: "Meat", rating: 5 }
# gulasch.photo.attach(io: gulasch_pic, filename: 'gulasch.jpg', content_type: 'image/png')
# gulasch.save!

gulasch = { name: "Gulasch", ingredients: "Rindfleisch", rating: 5 }

schweinebraten = { name: "Schweinebraten", ingredients: "Schwienefleisch", rating: 4 }

ente = { name: "Ente", ingredients: "Ente", rating: 5 }

schnitzel = { name: "Münchner Schnitzel", ingredients: "Schweinefleisch, Eier, Paniermehl, Mehl, Süßer Senf, Meerrettich", rating: 5 }

schinkennudeln = { name: "Schnikennudeln", ingredients: "Schinken, Nudeln, Ei, Röstzwiebeln", rating: 5 }

fleischpflanzerl = { name: "Fleischpflanzerl", ingredients: "Hackfleisch, Petersilie, Zwiebeln, Ei, Paniermehl", rating: 5 }

kartoffelsalat = { name: "Kartoffelsalat", ingredients: "Kartoffeln", rating: 5 }

bayerisch_creme = { name: "Bayerisch Creme", ingredients: "-", rating: 5 }

kaiserschmarrn = { name: "Kaiserschmarrn", ingredients: "Mehl, Zucker, Eier", rating: 5 }


[ gulasch, schweinebraten, ente, schnitzel, schinkennudeln, fleischpflanzerl, kartoffelsalat, bayerisch_creme, kaiserschmarrn ].each do |attributes|
  recipe = Recipe.create!(attributes)
  puts "Created #{recipe.name} with id #{recipe.id}"
end
puts "Finished!"