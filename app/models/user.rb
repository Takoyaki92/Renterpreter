class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  # UNCOMMENT THIS LATER
  # has_one :translator, through: :bookings

  has_one_attached :photo
end
