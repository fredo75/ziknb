class Instrument < ApplicationRecord
#   belongs_to :customer
  belongs_to :user
  has_many :locations
  mount_uploader :photo, PhotoUploader


  BRANDS = ["Gibson", "Harman professionnal", "Shure", "Yamaha", "Fender", "Steinway", "Sennheiser", "Roland", "other brands"]
  CATEGORIES = ["chords", "wind", "drum", "other"].freeze

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
