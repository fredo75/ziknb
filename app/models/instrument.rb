class Instrument < ApplicationRecord
#   belongs_to :customer
  belongs_to :user
  has_many :locations
  mount_uploader :photo, PhotoUploader


CATEGORIES = ["Instruments à vent", "Instruments à corde", "percurssion", "autres categories d'instrument"]



  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
