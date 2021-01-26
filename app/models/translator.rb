class Translator < ApplicationRecord
  belongs_to :user
  validates :languages, presence: true
  validates :description, presence: true
  validates :availability, presence: true
  validates :rates, presence: true
end
