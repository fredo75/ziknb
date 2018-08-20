# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroy"
Instrument.destroy_all
puts "create"
Instrument.create(title: "guitare", description:"super guitare des années 80" , marque:"Les Paul 1987")
Instrument.create(title:"ukulélé", description:"petit ukulélé début de gamme pour débutant",  marque: "Kala")
p Instrument.all
