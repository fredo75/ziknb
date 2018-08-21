# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy"
Instrument.destroy_all

User.destroy_all
puts "create User"
bidon = User.create(email: "bidon@gmail.com", password: "azerty")
donbi = User.create(email: "donbi@gmail.com", password: "azerty")
p User.all

puts "create Instruments"

a = Instrument.create(title: "guitare", description: "super guitare des années 80", marque: "Les Paul 1987", user: bidon)
Instrument.create(title: "ukulélé", description: "petit ukulélé début de gamme pour débutant",  marque: "Kala", user: bidon )
Instrument.create(title: "guitare", description:"guitare stratocaster",  marque: "Fender",user: bidon)
Instrument.create(title: "guitare", description:"guitare Telecaster",  marque: "Fender", user: donbi)
Instrument.create(title: "guitare folk", description:"guitare acoustique",  marque: "Takamine", user: donbi)
Instrument.create(title: "guitare classique", description:"guitare classique pro",  marque: "Takamine", user: donbi)


p Instrument.all

loc = Location.create(date: 2, price: 12, delivered: true, user: bidon, instrument: a, start_date: "2018-08-22", end_date: "2018-08-24")
p Location.all
