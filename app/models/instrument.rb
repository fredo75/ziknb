class Instrument < ApplicationRecord
#   belongs_to :customer
  belongs_to :user
  has_many :locations
  mount_uploader :photo, PhotoUploader

CATEGORIES = ["Instruments à vent", "Instruments à corde", "percurssion", "autres categories d'instrument"]




end
