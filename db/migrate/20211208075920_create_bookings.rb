class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :flight_id, foreign_key: true
      t.timestamps
    end
  end
end
