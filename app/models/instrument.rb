class Instrument < ApplicationRecord

  belongs_to :user
  has_many :locations
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  pg_search_scope :global_search,
    against: [ :title, :marque, :category, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
