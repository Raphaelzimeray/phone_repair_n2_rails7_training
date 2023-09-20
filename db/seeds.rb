# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"


Phone.destroy_all

phone_1 = Phone.new(
  brand: "Apple",
  model: "14pro",
  color: "Violet",
  price: 1700,
  capacity_go: 512,
  camera: "48 px",
  description: "le meilleur telephone du marché"

)

file = URI.open("https://www.digitaltrends.com/wp-content/uploads/2022/09/iPhone-14-Pro-Back-Purple-Hand.jpg?p=1")
phone_1.photos.attach(io: file, filename: "14pro.png", content_type: "14pro/png")
phone_1.save!

puts " #{phone_1.brand} #{phone_1.model} has been created !"


phone_2 = Phone.new(
  brand: "Samsung",
  model: "S23",
  color: "Noir",
  price: 1300,
  capacity_go: 256,
  camera: "148 px",
  description: "le deuxième meilleur téléphone!"
)

file = URI.open("https://media.ldlc.com/r1600/ld/products/00/06/00/98/LD0006009811.jpg")
phone_2.photos.attach(io: file, filename: "s23.png", content_type: "/s23/png")
phone_2.save!


puts " #{phone_2.brand} #{phone_2.model} has been created !"


phone_3 = Phone.new(
  brand: "Apple",
  model: "15 Pro",
  color: "Blanc Glacier",
  price: 1700,
  capacity_go: 512,
  camera: "48 px",
  description: "le nouvel iphone"
)

file = URI.open("https://www.notebookcheck.biz/fileadmin/Notebooks/News/_nc3/iphone-15-pro-max-concept.jpg")
phone_3.photos.attach(io: file, filename: "15pro.png", content_type: "15pro/png")
phone_3.save!

puts "#{phone_3.brand} #{phone_3.model} has been created !"


phone_4 = Phone.new(
  brand: "Google",
  model: "Pixel 7",
  color: "Gris, vert et bleu",
  price: 550,
  capacity_go: 128,
  camera: "48px",
  description: "superbe telephone, rapport qualité prix imbattable"
)

file = URI.open("https://wp-pa.phonandroid.com/uploads/2023/08/pixel-7.png")
phone_4.photos.attach(io:file, filename: "pixel7.png", content_type: "pixel7/png")
file = URI.open("https://cdn.lesnumeriques.com/optim/test/19/193455/80a7bfa7-google-pixel-7-on-ne-change-pas-vraiment-une-equipe-qui-gagne__1200_1200__258-0-1240-982_wtmk.jpeg")
phone_4.photos.attach(io: file, filename: "pixel7_2.png", content_type: "pixel7_2/png")
file = URI.open("https://www.presse-citron.net/app/uploads/2022/09/pixel-7-pro-lfstyle.jpg")
phone_4.photos.attach(io: file, filename: "pixel7_3.png", content_type: "pixel7_3/png")
phone_4.save!

puts "#{phone_4.brand} #{phone_4.model} has been created!"

phone_5 = Phone.new(
  brand: "Poco",
  model: "X5 PRO",
  color: "Jaune",
  price: 265,
  capacity_go: 256,
  camera: "108px",
  description: "Téléphone au prix attractif avec un très bel écran"
)

file = URI.open("https://c0.lestechnophiles.com/www.frandroid.com/wp-content/uploads/2023/02/poco-x5-pro-5g-05.jpg?key=05715abd")
phone_5.photos.attach(io:file, filename: "x5pro.png", content_type: "x5pro/png")
file = URI.open("https://i.computer-bild.de/imgs/1/4/7/5/1/6/8/3/Mix2-e73762d18f0fa94e.jpg?impolicy=full_content")
phone_5.photos.attach(io:file, filename: "x5pro_2.png", content_type: "x5pro_2/png")
file = URI.open("https://www.smartphones-android.fr/wp-content/uploads/2023/02/POCO_X5_Pro_5G_4.jpg")
phone_5.photos.attach(io: file, filename: "x5pro_3.png", content_type: "x5pro_3/png")
phone_5.save!

puts "#{phone_5.brand} #{phone_5.model} has been created!"


phone_6 = Phone.new(
  brand: "Honor",
  model: "Magic 5 PRO",
  color: "Vert",
  price: 1200,
  capacity_go: 512,
  camera: "50px",
  description: "Un des leaders du marché"
)

file = URI.open("https://sf1.cnetfrance.fr/wp-content/uploads/cnet/2023/06/honor-magic-5-pro-une-770.jpg")
phone_6.photos.attach(io:file, filename: "magic5pro.png", content_type: "magic5pro/png")
file = URI.open("https://cdn.lesnumeriques.com/optim/test/20/208737/1225e106-honor-magic-5-pro__1200_1200__332-0-1667-1335.jpg")
phone_6.photos.attach(io:file, filename: "magic5pro_2.png", content_type: "magic5pro_2/png")
phone_6.save!

puts "#{phone_6.brand} #{phone_6.model} has been created!"
