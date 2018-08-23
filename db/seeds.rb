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
bidon = User.create(email: "bidon@gmail.com", password: "azerty")
donbi = User.create(email: "donbi@gmail.com", password: "azerty")
karl = User.create(email: "karl@gmail.com", password: "azerty")
lea = User.create(email: "lea@gmail.com", password: "azerty")
miles = User.create(email: "miles@gmail.com", password:'azerty')
p User.all

puts "create Instruments"


guitare = Instrument.create(title: "guitare", description: "super guitare des années 80", marque: "Les Paul 1987", address: "20 avenue de belleville, paris", user: bidon)
uekulele = Instrument.create(title: "ukulélé", description: "petit ukulélé début de gamme pour débutant", address: "20 avenue des champs elysees, paris",  marque: "Kala", user: bidon )
drum = Instrument.create(title: "homemade drum", description: "Waiting for you to make everyone dance", marque: "Tama", address:"115 rue Lafayette, paris", user: karl )
guitare_1 = Instrument.create(title: "guitare", description:"guitare stratocaster",  marque: "Fender", address: "10 rue oberkampf, paris", user: bidon)
saxophone = Instrument.create(title: "Pro saxophone", description: "great alto ", marque: "Selmer", address: "13 rue Charles Friedel, paris", user: miles)
guitare_2 = Instrument.create(title: "guitare", description:"guitare Telecaster",  marque: "Fender", address: "15 villa gaudelet, paris",  user: donbi)
cellow = Instrument.create(title: "Great Stradivarius", description: "great 60years old cellow", marque: "Stradivarius", address: "327 rue st-martin", user:lea)
guitare_3 = Instrument.create(title: "guitare folk", description:"guitare acoustique",  marque: "Takamine", address: "20 avenue de menillmontant, paris", user: donbi)
guitare_4 = Instrument.create(title: "guitare classique", description:"guitare classique pro",  marque: "Takamine", address: "20 rue verte, paris", user: donbi)
banjo = Instrument.create(title: "custom banjo", description: "Cripple Creek banjo", marque: "Gold Tone", address: "9 rue de charone, paris", user: bidon)



loc = Location.new(date: 1522, price: 220, delivered: true, user: bidon, instrument: guitare)
loc.save!



guitare.remote_photo_url = "https://images.unsplash.com/photo-1508186736123-44a5fcb36f9f?ixlib=rb-0.3.5&s=93a5334e00639f481ac6021361a5ba34&auto=format&fit=crop&w=668&q=80"
guitare.save
uekulele.remote_photo_url = "https://images.unsplash.com/photo-1505473286910-580cec54a3ed?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=250defea85465f001b7ec0b37f4b358e&auto=format&fit=crop&w=1550&q=80"
uekulele.save
guitare_1.remote_photo_url = "https://images.unsplash.com/photo-1515850031371-8230418d8aed?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9ea0ed08d3536a3e6bb1962d73bb8580&auto=format&fit=crop&w=1304&q=80"
guitare_1.save
saxophone.remote_photo_url = "https://images.unsplash.com/photo-1499314722718-0827eb4deb71?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f2b10ec3ed99d38cb64a010a594ada85&auto=format&fit=crop&w=660&q=80"
saxophone.save
guitare_2.remote_photo_url = "https://images.unsplash.com/photo-1519087409225-c6c6f7fd0aee?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c55ec38c8c2e7ad8f5c238acea33bf1c&auto=format&fit=crop&w=1350&q=80"
guitare_2.save
cellow.remote_photo_url = "https://images.unsplash.com/photo-1492563817904-5f1dc687974f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b8ac3aa5e7a1c44e1b9f2580e889edc9&auto=format&fit=crop&w=668&q=80"
cellow.save
guitare_3.remote_photo_url = "https://images.unsplash.com/photo-1457960784918-ea479c62a2c5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5c8592eda66df40f7ad15d8b4cce2e30&auto=format&fit=crop&w=750&q=80"
guitare_3.save
guitare_4.remote_photo_url = "https://images.unsplash.com/photo-1465225314224-587cd83d322b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b30ae759059ac8e7562ad32f1c7417ee&auto=format&fit=crop&w=1350&q=80"
guitare_4.save
banjo.remote_photo_url = "https://images.unsplash.com/photo-1482443462550-d2c99314ab6a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d99dbfa934a0f05dce23f04ac67885f0&auto=format&fit=crop&w=1502&q=80"
banjo.save
drum.remote_photo_url = "https://images.unsplash.com/photo-1470784591255-6c7c80d419c8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6e957cd463132b7fc85f9ecdc45b1f2c&auto=format&fit=crop&w=1252&q=80"
drum.save




# guitare.photo = Cloudinary::Uploader.upload("san_francisco.jpg")
# guitare.photo = "ldskmctx7mm2a1ack6ah"
p Instrument.all



loc = Location.create(date: 2, price: 12, delivered: true, user: bidon, instrument: guitare, start_date: "2018-08-22", end_date: "2018-08-24")


p Location.all
