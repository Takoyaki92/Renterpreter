class Translator < ApplicationRecord
  belongs_to :user
  validates :languages, presence: true
  validates :description, presence: true
  validates :rates, presence: true
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
end
