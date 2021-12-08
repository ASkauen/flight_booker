class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.integer :departure_ap_id, foreign_key: true
      t.integer :arrival_ap_id, foreign_key: true
      t.datetime :start
      t.integer :duration

      t.timestamps
    end
  end
end
