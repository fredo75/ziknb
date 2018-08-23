# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy"
Location.destroy_all
User.destroy_all
Instrument.destroy_all


puts "create User"
bidon = User.create(email: "bidon@gmail.com", password: "azerty", address: "12 villa gaudelet, Paris")
donbi = User.create(email: "donbi@gmail.com", password: "azerty")
p User.all

puts "create Instruments"


guitare = Instrument.create(title: "guitare", description: "super guitare des années 80", marque: "Les Paul 1987", address: "20 avenue de belleville, paris", user: bidon)
uekulele = Instrument.create(title: "ukulélé", description: "petit ukulélé début de gamme pour débutant", address: "20 avenue des champs elysees, paris",  marque: "Kala", user: bidon )
guitare_1 = Instrument.create(title: "guitare", description:"guitare stratocaster",  marque: "Fender", address: "10 rue oberkampf, paris", user: bidon)
guitare_2 = Instrument.create(title: "guitare", description:"guitare Telecaster",  marque: "Fender", address: "15 villa gaudelet, paris",  user: donbi)
guitare_3 = Instrument.create(title: "guitare folk", description:"guitare acoustique",  marque: "Takamine", address: "20 avenue de menillmontant, paris", user: donbi)
guitare_4 = Instrument.create(title: "guitare classique", description:"guitare classique pro",  marque: "Takamine", address: "20 rue verte, paris", user: donbi)


loc = Location.new(date: 1522, price: 220, delivered: true, user: bidon, instrument: guitare)
loc.save!



guitare.remote_photo_url = "https://www.woodbrass.com/images/SQUARE400/woodbrass/ESP+GEV2EC2VBK+GUITARE+ELECTRIQUE.JPG"
guitare.save
uekulele.remote_photo_url = "https://www.thomann.de/pics/bdb/410343/12582286_800.jpg"
uekulele.save
guitare_1.remote_photo_url = "https://www.woodbrass.com/images/SQUARE400/woodbrass/ESP+GEV2EC2VBK+GUITARE+ELECTRIQUE.JPG"
guitare_1.save
guitare_2.remote_photo_url = "https://www.woodbrass.com/images/SQUARE400/woodbrass/ESP+GEV2EC2VBK+GUITARE+ELECTRIQUE.JPG"
guitare_2.save
guitare_3.remote_photo_url = "https://www.michenaud.com/upDATA/p/1500/1165/img1431960760-eZ5lkdG/zoom.jpg"
guitare_3.save
guitare_4.remote_photo_url = "https://www.woodbrass.com/images/SQUARE400/woodbrass/ESP+GEV2EC2VBK+GUITARE+ELECTRIQUE.JPG"
guitare_4.save




# guitare.photo = Cloudinary::Uploader.upload("san_francisco.jpg")
# guitare.photo = "ldskmctx7mm2a1ack6ah"
p Instrument.all

Bidon2 = User.create(email: "bidon2@gmail.com", password: "azerty", address: "12 villa gaudelet, Paris")

loc = Location.create(date: 2, price: 12, delivered: true, user: bidon, instrument: guitare, start_date: "2018-08-22", end_date: "2018-08-24")


p Location.all
