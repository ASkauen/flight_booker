class ChangeFlightStartToDate < ActiveRecord::Migration[6.1]
  def change
    rename_column :flights, :start, :date
  end
end
