class Passenger < ApplicationRecord
  has_many :tickets
  has_many :bookings, through: :tickets

  validates :name, presence: true
  validates :email, presence: true
end
