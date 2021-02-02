class Translator < ApplicationRecord
  belongs_to :user
  validates :user, uniqueness: true
  validates :languages, presence: true
  validates :description, presence: true
  validates :rates, presence: true
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :search_by_languages_and_description,
    against: [ :languages, :description],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
