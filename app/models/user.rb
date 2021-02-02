class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy

  has_one :translator


  has_one_attached :photo
end
