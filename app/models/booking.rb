class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :translator
  validates :date_time, presence: true
  validates :status, presence: true
  validates :description, presence: true
end
