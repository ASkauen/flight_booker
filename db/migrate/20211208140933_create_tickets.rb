class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.integer :passenger_id, foreign_key: true
      t.integer :booking_id, foreign_key: true
      t.timestamps
    end
  end
end
