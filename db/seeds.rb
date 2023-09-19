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
  color: "Black",
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
  color: "White glacier",
  price: 1700,
  capacity_go: 512,
  camera: "48 px",
  description: "le nouvel iphone"
)

file = URI.open("https://www.notebookcheck.biz/fileadmin/Notebooks/News/_nc3/iphone-15-pro-max-concept.jpg")
phone_3.photos.attach(io: file, filename: "15pro.png", content_type: "15pro/png")
phone_3.save!

puts " #{phone_3.brand} #{phone_3.model} has been created !"
