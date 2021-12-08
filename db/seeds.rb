# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def random_time
  Time.at((0..(3600 * 24)).to_a.sample)
end

def random_date
  rand(1.year).seconds.from_now
end

Airport.create([{code: "OSL"}, {code: "JDI"}, {code: "DAS"}, {code: "MPA"}, {code: "LLS"}])
Flight.create([{departure_ap_id: 1, arrival_ap_id: 2, date: random_date, departure: random_time, duration: (50..500).to_a.sample},
               {departure_ap_id: 2, arrival_ap_id: 3, date: random_date, departure: random_time, duration: (50..500).to_a.sample},
               {departure_ap_id: 3, arrival_ap_id: 4, date: random_date, departure: random_time, duration: (50..500).to_a.sample},
               {departure_ap_id: 4, arrival_ap_id: 1, date: random_date, departure: random_time, duration: (50..500).to_a.sample},
               {departure_ap_id: 4, arrival_ap_id: 2, date: random_date, departure: random_time, duration: (50..500).to_a.sample},
               {departure_ap_id: 3, arrival_ap_id: 1, date: random_date, departure: random_time, duration: (50..500).to_a.sample},
               {departure_ap_id: 2, arrival_ap_id: 4, date: random_date, departure: random_time, duration: (50..500).to_a.sample},
               {departure_ap_id: 1, arrival_ap_id: 3, date: random_date, departure: random_time, duration: (50..500).to_a.sample}
              ])