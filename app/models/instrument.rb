class Instrument < ApplicationRecord
#   belongs_to :customer
  belongs_to :user
  mount_uploader :photo, PhotoUploader
end
