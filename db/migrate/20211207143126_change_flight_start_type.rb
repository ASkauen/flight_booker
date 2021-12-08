class ChangeFlightStartType < ActiveRecord::Migration[6.1]
  def change
    change_column :flights, :start, :date
    add_column :flights, :departure, :time
  end
end
