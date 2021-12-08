class Airport < ApplicationRecord
  has_many :arriving_flights, class_name: 'Flight', foreign_key: :arrival_ap_id
  has_many :departing_flights, class_name: 'Flight', foreign_key: :departure_ap_id
end
