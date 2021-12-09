class Flight < ApplicationRecord
  has_many :bookings
  belongs_to :arrival_ap, class_name: 'Airport'
  belongs_to :departure_ap, class_name: 'Airport'

  def formatted_departure
    departure.strftime("%H:%M")
  end

  def formatted_duration
    "#{duration / 60}h #{duration % 60}m"
  end
end
